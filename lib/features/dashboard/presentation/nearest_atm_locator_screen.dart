import 'package:epurse/core/routing/routing.dart';
import 'package:epurse/core/widgets/server_down_dialog.dart';

import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../bloc/atm_locator/atm_locator_bloc.dart';

class NearestAtmLocatorScreen extends StatefulWidget {
  const NearestAtmLocatorScreen({super.key});

  @override
  State<NearestAtmLocatorScreen> createState() =>
      _NearestAtmLocatorScreenState();
}

class _NearestAtmLocatorScreenState extends State<NearestAtmLocatorScreen>
    with SingleTickerProviderStateMixin {
  final MapController _mapController = MapController();
  late AnimationController _shimmerController;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1000));
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) =>
          GetIt.I<AtmLocatorBloc>()..add(LoadCurrentLocation()),
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: false),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  context.goBack();
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                      border: Border.all(
                        color: isDarkMode
                            ? AppColors.darkBackground1
                            : AppColors.lightBackground1,
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.arrow_back_ios_new,
                        color: isDarkMode
                            ? AppColors.darkBackground1
                            : AppColors.lightBackground1)),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocConsumer<AtmLocatorBloc, AtmLocatorState>(
                  listener: (context, state) {
                    if (state is AtmLocatorServerDown) {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              ServerDownDialog(message: state.message));
                    }
                  },
                  builder: (context, state) {
                    debugPrint(state.toString());
                    if (state is AtmLocatorLocationLoaded) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isDarkMode
                                ? AppColors.darkBackground1
                                : AppColors.lightBackground1,
                            width: 0.6,
                          ),
                          color: isDarkMode
                              ? AppColors.iconDarkColor
                              : AppColors.iconLightColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            '${state.atmLocations.length} ATMs Nearby',
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: isDarkMode
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
          extendBodyBehindAppBar: true,
          body: BlocBuilder<AtmLocatorBloc, AtmLocatorState>(
            builder: (context, state) {
              if (state is AtmLocatorLoading || state is AtmLocatorInitial) {
                return AnimatedBuilder(
                  animation: _shimmerController,
                  builder: (context, child) {
                    return _buildShimmerEffect(isDarkMode);
                  },
                );
              } else if (state is AtmLocatorLocationLoaded) {
                final locationData = state.locationData;
                final atmLocations = state.atmLocations;

                return FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    initialCenter: LatLng(
                      locationData.latitude!,
                      locationData.longitude!,
                    ),
                    initialZoom: 14,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayer(
                      markers: [
                        // User location marker
                        Marker(
                          point: LatLng(
                            locationData.latitude!,
                            locationData.longitude!,
                          ),
                          width: 60,
                          height: 60,
                          child: const Icon(
                            Icons.location_pin,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),

                        // ATM location markers with debugging
                        ...atmLocations.map((atm) {
                          debugPrint(
                              'Adding ATM marker: ${atm.name} at ${atm.latitude},${atm.longitude}');
                          return Marker(
                            point: LatLng(atm.latitude, atm.longitude),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      debugPrint(
                                          'ATM marker tapped: ${atm.name}');
                                      showDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (dialogContext) {
                                          // Add explicit debug prints to track state
                                          final currentState = context
                                              .read<AtmLocatorBloc>()
                                              .state;
                                          debugPrint(
                                              'Initial dialog state: $currentState');
                                          debugPrint(
                                              'ATM being tapped: ${atm.id}, ${atm.name}');

                                          // Find the index of the tapped ATM and initialize
                                          WidgetsBinding.instance
                                              .addPostFrameCallback((_) {
                                            if (context
                                                    .read<AtmLocatorBloc>()
                                                    .state
                                                is AtmLocatorLocationLoaded) {
                                              final state = context
                                                      .read<AtmLocatorBloc>()
                                                      .state
                                                  as AtmLocatorLocationLoaded;
                                              final int tappedIndex = state
                                                  .atmLocations
                                                  .indexWhere((element) =>
                                                      element.id == atm.id);

                                              debugPrint(
                                                  'Found tapped ATM at index: $tappedIndex');
                                              if (tappedIndex != -1) {
                                                debugPrint(
                                                    'Setting ATM index to: $tappedIndex');
                                                context
                                                    .read<AtmLocatorBloc>()
                                                    .add(InitializeAtmIndex(
                                                        tappedIndex));
                                              }
                                            }
                                          });

                                          return AlertDialog(
                                            insetPadding: EdgeInsets.symmetric(
                                              horizontal:
                                                  MediaQuery.of(dialogContext)
                                                          .size
                                                          .width *
                                                      0.05,
                                              vertical:
                                                  MediaQuery.of(dialogContext)
                                                          .size
                                                          .height *
                                                      0.05,
                                            ),
                                            contentPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            elevation: 0,
                                            content: BlocProvider.value(
                                              value: context
                                                  .read<AtmLocatorBloc>(),
                                              child: StatefulBuilder(
                                                builder: (context, setState) {
                                                  // Get screen dimensions
                                                  final screenWidth =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width;
                                                  final screenHeight =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height;
                                                  final isSmallScreen =
                                                      screenWidth < 360;

                                                  return Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      IconButton(
                                                        style: IconButton
                                                            .styleFrom(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          minimumSize:
                                                              Size(40, 40),
                                                          backgroundColor:
                                                              isDarkMode
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                        icon: Icon(
                                                          Icons.arrow_back_ios,
                                                          color: isDarkMode
                                                              ? Colors.white
                                                              : Colors.black,
                                                          size: isSmallScreen
                                                              ? 12
                                                              : 14,
                                                        ),
                                                        onPressed: () {
                                                          debugPrint(
                                                              'Previous ATM button pressed');
                                                          BlocProvider.of<
                                                                      AtmLocatorBloc>(
                                                                  context)
                                                              .add(
                                                                  NavigateToPreviousAtm());
                                                        },
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                screenWidth *
                                                                    0.02,
                                                          ),
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth:
                                                                screenWidth *
                                                                    0.75,
                                                            maxHeight:
                                                                screenHeight *
                                                                    0.8,
                                                          ),
                                                          child: BlocConsumer<
                                                              AtmLocatorBloc,
                                                              AtmLocatorState>(
                                                            listener: (context,
                                                                state) {
                                                              debugPrint(
                                                                  'BlocConsumer state updated: $state');
                                                            },
                                                            builder: (context,
                                                                state) {
                                                              debugPrint(
                                                                  'BlocBuilder building with state: $state');

                                                              if (state
                                                                      is AtmLocatorLocationLoaded &&
                                                                  state
                                                                      .atmLocations
                                                                      .isNotEmpty) {
                                                                // Ensure index is within bounds
                                                                final safeIndex = state
                                                                    .currentAtmIndex
                                                                    .clamp(
                                                                        0,
                                                                        state.atmLocations.length -
                                                                            1);
                                                                final currentAtm =
                                                                    state.atmLocations[
                                                                        safeIndex];

                                                                debugPrint(
                                                                    'Showing ATM at index: $safeIndex, Name: ${currentAtm.name}');

                                                                return Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          screenWidth *
                                                                              0.08,
                                                                      vertical:
                                                                          screenHeight *
                                                                              0.02),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: isDarkMode
                                                                        ? AppColors
                                                                            .darkBackground1
                                                                        : AppColors
                                                                            .lightBackground1,
                                                                    borderRadius:
                                                                        BorderRadius.circular(screenWidth *
                                                                            0.02),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Colors
                                                                            .black
                                                                            .withValues(alpha: 0.2),
                                                                        spreadRadius:
                                                                            1,
                                                                        blurRadius:
                                                                            10,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              screenWidth * 0.05,
                                                                          backgroundColor: Theme.of(context)
                                                                              .primaryColor
                                                                              .withValues(alpha: 0.1),
                                                                          child: Image.asset(
                                                                              'lib/core/assets/atm-machine.png',
                                                                              width: screenWidth * 0.07,
                                                                              height: screenWidth * 0.07),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                screenHeight * 0.015),
                                                                        Text(
                                                                          currentAtm
                                                                              .name,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize: isSmallScreen
                                                                                ? 18
                                                                                : 22,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: isDarkMode
                                                                                ? Colors.white
                                                                                : Colors.black87,
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                screenHeight * 0.01),
                                                                        Text(
                                                                          currentAtm
                                                                              .address,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize: isSmallScreen
                                                                                ? 14
                                                                                : 16,
                                                                            color: isDarkMode
                                                                                ? Colors.white70
                                                                                : Colors.black54,
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                screenHeight * 0.02),
                                                                        Container(
                                                                          padding: EdgeInsets.symmetric(
                                                                              horizontal: screenWidth * 0.03,
                                                                              vertical: screenHeight * 0.01),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color: currentAtm.availableCash
                                                                                ? Colors.green.withValues(alpha: 0.1)
                                                                                : Colors.red.withValues(alpha: 0.1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(screenWidth * 0.02),
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              Icon(
                                                                                currentAtm.availableCash ? Icons.check_circle : Icons.cancel,
                                                                                color: currentAtm.availableCash ? Colors.green : Colors.red,
                                                                                size: isSmallScreen ? 16 : 20,
                                                                              ),
                                                                              SizedBox(width: screenWidth * 0.02),
                                                                              Text(
                                                                                currentAtm.availableCash ? 'Cash Available' : 'No Cash Available',
                                                                                style: TextStyle(
                                                                                  color: currentAtm.availableCash ? Colors.green : Colors.red,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontSize: isSmallScreen ? 12 : 14,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                screenHeight * 0.02),
                                                                        SizedBox(
                                                                            width:
                                                                                double.infinity,
                                                                            child: GradientButton(
                                                                                onPressed: () async {
                                                                                  Navigator.of(context).pop();
                                                                                  try {
                                                                                    final latitude = currentAtm.latitude;
                                                                                    final longitude = currentAtm.longitude;

                                                                                    if (Platform.isIOS) {
                                                                                      final uri = Uri.parse('https://maps.apple.com/?q=$latitude,$longitude&z=16&t=m');
                                                                                      await launchUrl(uri, mode: LaunchMode.externalApplication);
                                                                                    } else {
                                                                                      final uri = Uri.parse('geo:$latitude,$longitude?q=$latitude,$longitude');

                                                                                      if (await canLaunchUrl(uri)) {
                                                                                        await launchUrl(uri);
                                                                                      } else {
                                                                                        final webUri = Uri.parse('https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
                                                                                        await launchUrl(webUri, mode: LaunchMode.externalApplication);
                                                                                      }
                                                                                    }
                                                                                  } catch (e) {
                                                                                    debugPrint('Error launching maps: $e');
                                                                                    if (context.mounted) {
                                                                                      showErrorSnackBar(context, 'Cannot open maps application. Error: ${e.toString().split(':').first}');
                                                                                    }
                                                                                  }
                                                                                },
                                                                                isDarkMode: isDarkMode,
                                                                                child: Text(
                                                                                  'Get Directions',
                                                                                  style: TextStyle(
                                                                                    fontSize: isSmallScreen ? 14 : 16,
                                                                                  ),
                                                                                )))
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              }

                                                              // Debug message for fallback
                                                              debugPrint(
                                                                  'Showing loading UI, state: $state');

                                                              // Show loading indicator if state is not expected
                                                              return Container(
                                                                width:
                                                                    screenWidth *
                                                                        0.6,
                                                                height:
                                                                    screenHeight *
                                                                        0.25,
                                                                padding: EdgeInsets.all(
                                                                    screenWidth *
                                                                        0.04),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: isDarkMode
                                                                      ? AppColors
                                                                          .darkBackground1
                                                                      : AppColors
                                                                          .lightBackground1,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          screenWidth *
                                                                              0.02),
                                                                ),
                                                                child: Center(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      SizedBox(
                                                                        width: screenWidth *
                                                                            0.08,
                                                                        height: screenWidth *
                                                                            0.08,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          strokeWidth:
                                                                              screenWidth * 0.01,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              screenWidth * 0.04),
                                                                      Text(
                                                                        "Loading ATM information...",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize: isSmallScreen
                                                                              ? 14
                                                                              : 16,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      IconButton(
                                                        style: IconButton
                                                            .styleFrom(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          minimumSize:
                                                              Size(40, 40),
                                                          backgroundColor:
                                                              isDarkMode
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                        icon: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color: isDarkMode
                                                              ? Colors.white
                                                              : Colors.black,
                                                          size: isSmallScreen
                                                              ? 12
                                                              : 14,
                                                        ),
                                                        onPressed: () {
                                                          debugPrint(
                                                              'Next ATM button pressed');
                                                          BlocProvider.of<
                                                                      AtmLocatorBloc>(
                                                                  context)
                                                              .add(
                                                                  NavigateToNextAtm());
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Image.asset(
                                        'lib/core/assets/atm-machine.png',
                                        width: 40,
                                        height: 40)),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    atm.name,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                );
              }
              return AnimatedBuilder(
                animation: _shimmerController,
                builder: (context, child) {
                  return _buildShimmerEffect(isDarkMode);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerEffect(bool isDarkMode) {
    final baseColor =
        isDarkMode ? AppColors.darkSecondary : AppColors.lightSecondary;
    final highlightColor = isDarkMode
        ? AppColors.darkPrimary.withValues(alpha: 0.01)
        : AppColors.lightPrimary.withValues(alpha: 0.01);

    return Container(
      color: isDarkMode
          ? AppColors.darkPrimary.withValues(alpha: 0.01)
          : AppColors.lightPrimary.withValues(alpha: 0.01),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    baseColor,
                    highlightColor,
                    baseColor,
                  ],
                  stops: const [0.0, 0.5, 1.0],
                  begin: Alignment(-1.0 + _shimmerController.value * 2, 0.0),
                  end: Alignment(1.0 + _shimmerController.value * 2, 0.0),
                ),
              ),
            ),
          ),

          // Grid with perfect squares
          LayoutBuilder(
            builder: (context, constraints) {
              // Define cell size for our grid squares
              const double cellSize = 20.0;

              // Calculate number of rows and columns needed
              final int columns = (constraints.maxWidth / cellSize).ceil();
              final int rows = (constraints.maxHeight / cellSize).ceil();

              return Stack(
                children: [
                  // Horizontal lines
                  ...List.generate(
                    rows + 1,
                    (index) => Positioned(
                      top: index * cellSize,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 1,
                        color: isDarkMode
                            ? AppColors.darkPrimary.withValues(alpha: 0.2)
                            : AppColors.lightPrimary.withValues(alpha: 0.2),
                      ),
                    ),
                  ),

                  // Vertical lines
                  ...List.generate(
                    columns + 1,
                    (index) => Positioned(
                      left: index * cellSize,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 1,
                        color: isDarkMode
                            ? AppColors.darkPrimary.withValues(alpha: 0.2)
                            : AppColors.lightPrimary.withValues(alpha: 0.2),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          Center(
            child: Icon(
              Icons.location_pin,
              color: Colors.red,
              size: 40,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: isDarkMode ? Colors.grey.shade800 : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Text(
                  'Finding your location...',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.grey.shade700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
