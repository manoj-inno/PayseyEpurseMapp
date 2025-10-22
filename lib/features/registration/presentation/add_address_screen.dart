import 'dart:convert';
import 'dart:io';

import '../../../core/routing/routing.dart';
import '../../../core/widgets/error_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/injection/injection_container.dart' as di;
import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/storage/hive_manager.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/get_address_details/get_address_details_bloc.dart';
import '../bloc/address_management/address_management_bloc.dart';
import '../bloc/get_address_details/get_address_details_event.dart';
import '../bloc/get_address_details/get_address_details_state.dart';
import '../bloc/register4_address/register_address_bloc.dart';
import '../data/register4_address/models/address_data_model.dart';
import '../data/register4_address/models/register_address_model.dart';
import 'fill_address_screen.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen(
      {super.key, required this.refNumber, required this.customerTypeId});
  final String refNumber;
  final int customerTypeId;

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final Map<int, bool> _checkboxStates = {};
  late HiveManager hiveManager;

  @override
  void initState() {
    super.initState();
    // Initialize HiveManager
    HiveManager.getInstance().then((instance) {
      hiveManager = instance;
    });

    // Clear image cache at startup
    PaintingBinding.instance.imageCache.clear();
    PaintingBinding.instance.imageCache.clearLiveImages();

    // Load saved addresses when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        try {
          final bloc = context.read<AddressManagementBloc>();
          if (!bloc.isClosed) {
            bloc.add(LoadAddresses(refNumber: widget.refNumber));
          }
        } catch (e) {
          debugPrint('Error loading addresses: $e');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = di.sl<GetAddressDetailsBloc>();
            // Add safety check
            bloc.add(GetAddressDetailsEvent.getAddressTypes(
                entityType: widget.customerTypeId));
            return bloc;
          },
        ),
        // AddressManagementBloc is already provided at app level in main.dart
      ],
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: MultiBlocListener(
              listeners: [
                BlocListener<RegisterAddressBloc, RegisterAddressState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      loading: () {},
                      loaded: (registerAddress) {
                        context.navigateTo(RouteConstants.pep,
                            arguments:
                                PepArguments(refNumber: widget.refNumber));
                      },
                      error: (message) {
                        showErrorSnackBar(context, message);
                      },
                      serverDown: (message) {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                ServerDownDialog(message: message));
                      },
                    );
                  },
                ),
                BlocListener<AddressManagementBloc, AddressManagementState>(
                  listener: (context, state) {
                    if (state is AddressSaved) {
                      // Clear image cache
                      PaintingBinding.instance.imageCache.clear();
                      PaintingBinding.instance.imageCache.clearLiveImages();

                      // Reload addresses when a new address is saved or updated
                      // Add safety check to prevent adding events to closed BLoC
                      try {
                        final bloc = context.read<AddressManagementBloc>();
                        if (!bloc.isClosed) {
                          bloc.add(LoadAddresses(refNumber: widget.refNumber));
                        }
                      } catch (e) {
                        debugPrint('Error adding LoadAddresses event: $e');
                      }
                    }
                  },
                ),
                BlocListener<GetAddressDetailsBloc, GetAddressDetailsState>(
                  listener: (context, state) {
                    if (state is GetAddressDetailsServerDown) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) =>
                              ServerDownDialog(message: state.message));
                    }
                  },
                ),
              ],
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text(
                    localizations.get('add_address'),
                    style: theme.textTheme.displayMedium,
                  ),
                  Text(
                    localizations.get('fill_in_the_address_details_below'),
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<GetAddressDetailsBloc, GetAddressDetailsState>(
                    builder: (context, addressTypesState) {
                      debugPrint(addressTypesState.toString());
                      if (addressTypesState is GetAddressTypesLoaded) {
                        return BlocBuilder<AddressManagementBloc,
                            AddressManagementState>(
                          builder: (context, addressState) {
                            debugPrint('Current AddressManagementState: //');
                            List<AddressDataModel> savedAddresses = [];

                            if (addressState is AddressesLoaded) {
                              savedAddresses = addressState.addresses;
                              debugPrint(
                                  'Loaded addresses count: ${savedAddresses.length}');
                            }

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  addressTypesState.addressTypes.length,
                                  (index) {
                                final type =
                                    addressTypesState.addressTypes[index];

                                // Check if this address type has already been saved
                                final savedAddress = savedAddresses.firstWhere(
                                  (address) =>
                                      address.addressType ==
                                      type.addressTypeDesc,
                                  orElse: () => AddressDataModel(
                                    refNumber: '',
                                    addressType: '',
                                    addressProof: '',
                                    addressProofId:
                                        0, // Make sure this is an int
                                    addressProofIdNumber: '',
                                    addressProofImagePath: '',
                                    buildingName: '',
                                    addressLine1: '',
                                    addressLine2: '',
                                    city: '',
                                    state: '',
                                    postalCode: '',
                                    country: '',
                                    addressTypeId:
                                        0, // Make sure this is an int
                                  ),
                                );

                                final bool isAddressSaved =
                                    savedAddress.refNumber.isNotEmpty &&
                                        savedAddress.addressLine1.isNotEmpty;
                                debugPrint(
                                    'Address type: ${type.addressTypeDesc}, isSaved: ');

                                return Card(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(10),
                                    onTap: () {
                                      // If first index is tapped, uncheck all other checkboxes
                                      if (index == 0) {
                                        setState(() {
                                          // Clear all checkbox states except index 0
                                          _checkboxStates.forEach((key, value) {
                                            if (key != 0) {
                                              _checkboxStates[key] = false;
                                              // Clear the corresponding address data
                                              final addressType =
                                                  addressTypesState
                                                      .addressTypes[key]
                                                      .addressTypeDesc;
                                              try {
                                                final bloc = context.read<
                                                    AddressManagementBloc>();
                                                if (!bloc.isClosed) {
                                                  bloc.add(
                                                    SaveAddressData(
                                                      refNumber: widget.refNumber,
                                                      addressType: addressType,
                                                      addressProof: '',
                                                      addressProofId: 0,
                                                      addressProofIdNumber: '',
                                                      addressTypeId: 0,
                                                      addressProofImage: null,
                                                      buildingName: '',
                                                      addressLine1: '',
                                                      addressLine2: '',
                                                      city: '',
                                                      state: '',
                                                      postalCode: '',
                                                      country: '',
                                                      clearImagePath: false,
                                                    ),
                                                  );
                                                }
                                              } catch (e) {
                                                debugPrint(
                                                    'Error saving address data: $e');
                                              }
                                            }
                                          });
                                        });
                                      }

                                      // Navigate to FillAddressScreen
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => FillAddressScreen(
                                          refNumber: widget.refNumber,
                                          addressType: type.addressTypeDesc,
                                          addressTypeId: type.addressTypeId,
                                          customerTypeId: widget.customerTypeId,
                                        ),
                                      ))
                                          .then((_) {
                                        if (context.mounted) {
                                          try {
                                            final bloc = context.read<AddressManagementBloc>();
                                            if (!bloc.isClosed) {
                                              bloc.add(LoadAddresses(refNumber: widget.refNumber));
                                            }
                                          } catch (e) {
                                            debugPrint('Error loading addresses after navigation: $e');
                                          }
                                        }
                                      });
                                    },
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: (index > 0)
                                            ? EdgeInsets.symmetric(
                                                horizontal: 15)
                                            : EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: (index > 0)
                                                        ? EdgeInsets.only(
                                                            top: 16)
                                                        : EdgeInsets.only(
                                                            top: 0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          type.addressTypeDesc,
                                                          style: theme.textTheme
                                                              .labelLarge,
                                                        ),
                                                        if (type.mandatory)
                                                          Text(
                                                            ' *',
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall
                                                                ?.copyWith(
                                                                    color: Colors
                                                                        .red),
                                                          ),
                                                        if (isAddressSaved)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 8.0),
                                                            child: Icon(
                                                              Icons
                                                                  .check_circle,
                                                              color:
                                                                  Colors.green,
                                                              size: 16,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (isAddressSaved)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (savedAddress
                                                                  .addressProofImagePath
                                                                  .isNotEmpty &&
                                                              savedAddress
                                                                      .addressProofId >
                                                                  0)
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      bottom:
                                                                          20,
                                                                      top: 15,
                                                                      right:
                                                                          15),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                child:
                                                                    Image.file(
                                                                  File(savedAddress
                                                                      .addressProofImagePath),
                                                                  scale: 3,
                                                                  key: ValueKey(
                                                                      '${savedAddress.addressProofImagePath}_${DateTime.now().millisecondsSinceEpoch}'),
                                                                  cacheWidth:
                                                                      400,
                                                                  cacheHeight:
                                                                      300,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  filterQuality:
                                                                      FilterQuality
                                                                          .medium,
                                                                  errorBuilder:
                                                                      (context,
                                                                          error,
                                                                          stackTrace) {
                                                                    debugPrint(
                                                                        'Error loading image: $error');
                                                                    return Container(
                                                                      height:
                                                                          100,
                                                                      color: Colors
                                                                              .grey[
                                                                          300],
                                                                      child: Center(
                                                                          child:
                                                                              Icon(Icons.error)),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Address:",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall,
                                                                  ),
                                                                  Text(
                                                                    '${savedAddress.buildingName}${savedAddress.buildingName.isNotEmpty ? ", " : ""}${savedAddress.addressLine1}',
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall,
                                                                    maxLines: 1,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  ),
                                                                  Text(
                                                                    '${savedAddress.addressLine2}${savedAddress.addressLine2.isNotEmpty ? ", " : ""}${savedAddress.city}',
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall,
                                                                  ),
                                                                  Text(
                                                                    '${savedAddress.state} ${savedAddress.state.isNotEmpty ? ", " : ""}${savedAddress.postalCode}',
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall,
                                                                  ),
                                                                  Text(
                                                                    savedAddress
                                                                        .country,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall,
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Address Proof:",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall,
                                                                  ),
                                                                  Text(
                                                                    savedAddress
                                                                        .addressProof,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall,
                                                                  ),
                                                                  if (savedAddress
                                                                      .addressProofIdNumber
                                                                      .isNotEmpty)
                                                                    Text(
                                                                      'ID Number: ${savedAddress.addressProofIdNumber}',
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall,
                                                                    ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if (index > 0)
                                                    CheckboxListTile(
                                                      checkboxScaleFactor: 0.75,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              right: -100),
                                                      value: _checkboxStates[
                                                              index] ??
                                                          false,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _checkboxStates[
                                                                  index] =
                                                              value ?? false;
                                                        });

                                                        if (value == true) {
                                                          final latestPrimaryAddress =
                                                              savedAddresses
                                                                  .firstWhere(
                                                            (address) =>
                                                                address
                                                                    .addressType ==
                                                                addressTypesState
                                                                    .addressTypes[
                                                                        0]
                                                                    .addressTypeDesc,
                                                            orElse: () =>
                                                                AddressDataModel(
                                                              refNumber: '',
                                                              addressType: '',
                                                              addressProof: '',
                                                              addressProofId: 0,
                                                              addressProofIdNumber:
                                                                  '',
                                                              addressProofImagePath:
                                                                  '',
                                                              buildingName: '',
                                                              addressLine1: '',
                                                              addressLine2: '',
                                                              city: '',
                                                              state: '',
                                                              postalCode: '',
                                                              country: '',
                                                              addressTypeId: 0,
                                                            ),
                                                          );

                                                          debugPrint(
                                                              '📍 Found primary address for copying: ${latestPrimaryAddress.addressType}');
                                                          debugPrint(
                                                              '📍 Address line 1: "${latestPrimaryAddress.addressLine1}"');
                                                          debugPrint(
                                                              '📍 City: "${latestPrimaryAddress.city}"');
                                                          debugPrint(
                                                              '📍 Country: "${latestPrimaryAddress.country}"');

                                                          // Only proceed if the primary address has required data
                                                          if (latestPrimaryAddress
                                                                  .addressLine1
                                                                  .isNotEmpty &&
                                                              latestPrimaryAddress
                                                                  .city
                                                                  .isNotEmpty &&
                                                              latestPrimaryAddress
                                                                  .country
                                                                  .isNotEmpty) {
                                                            // Get the current address type ID for this address
                                                            final currentTypeId =
                                                                type.addressTypeId;
                                                            debugPrint(
                                                                '📍 Using address type ID for ${type.addressTypeDesc}: $currentTypeId');

                                                            // Check if primary address has an image that can be copied
                                                            File?
                                                                imageFileToCopy;
                                                            if (latestPrimaryAddress
                                                                .addressProofImagePath
                                                                .isNotEmpty) {
                                                              final sourceFile =
                                                                  File(latestPrimaryAddress
                                                                      .addressProofImagePath);
                                                              if (sourceFile
                                                                  .existsSync()) {
                                                                imageFileToCopy =
                                                                    sourceFile;
                                                                debugPrint(
                                                                    '📸 Found image to copy: ${latestPrimaryAddress.addressProofImagePath}');
                                                              }
                                                            }

                                                            try {
                                                              final bloc =
                                                                  context.read<
                                                                      AddressManagementBloc>();
                                                              if (!bloc.isClosed) {
                                                                bloc.add(
                                                                  SaveAddressData(
                                                                  refNumber: widget
                                                                      .refNumber,
                                                                  addressType: type
                                                                      .addressTypeDesc,
                                                                  addressProof:
                                                                      latestPrimaryAddress
                                                                          .addressProof,
                                                                  addressProofId:
                                                                      latestPrimaryAddress
                                                                          .addressProofId,
                                                                  addressProofIdNumber:
                                                                      latestPrimaryAddress
                                                                          .addressProofIdNumber,
                                                                  addressProofImage:
                                                                      imageFileToCopy,
                                                                  buildingName:
                                                                      latestPrimaryAddress
                                                                          .buildingName,
                                                                  addressLine1:
                                                                      latestPrimaryAddress
                                                                          .addressLine1,
                                                                  addressLine2:
                                                                      latestPrimaryAddress
                                                                          .addressLine2,
                                                                  city:
                                                                      latestPrimaryAddress
                                                                          .city,
                                                                  state:
                                                                      latestPrimaryAddress
                                                                          .state,
                                                                  postalCode:
                                                                      latestPrimaryAddress
                                                                          .postalCode,
                                                                  country:
                                                                      latestPrimaryAddress
                                                                          .country,
                                                                  addressTypeId:
                                                                      currentTypeId,
                                                                  clearImagePath:
                                                                      imageFileToCopy ==
                                                                          null,
                                                                ),
                                                              );
                                                              }

                                                              // Add a delay before reloading to ensure the save completes
                                                              Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  () {
                                                                if (context
                                                                    .mounted) {
                                                                  try {
                                                                    final bloc = context.read<AddressManagementBloc>();
                                                                    if (!bloc.isClosed) {
                                                                      bloc.add(LoadAddresses(refNumber: widget.refNumber));
                                                                    }
                                                                  } catch (e) {
                                                                    debugPrint('Error loading addresses after delay: $e');
                                                                  }
                                                                }
                                                              });
                                                            } catch (e) {
                                                              debugPrint(
                                                                  '❌ Error copying address data: $e');
                                                            }
                                                          } else {
                                                            debugPrint(
                                                                '⚠️ Primary address is missing required fields');
                                                            setState(() {
                                                              _checkboxStates[
                                                                      index] =
                                                                  false;
                                                            });
                                                            showErrorSnackBar(
                                                                context,
                                                                'Please complete the ${addressTypesState.addressTypes[0].addressTypeDesc} first');
                                                          }
                                                        }
                                                      },
                                                      title: Text(
                                                        'Same as ${addressTypesState.addressTypes[0].addressTypeDesc}',
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .leading,
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: index > 0 ? 15 : 0),
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    size: 15,
                                                    color: isDarkMode
                                                        ? AppColors
                                                            .iconDarkColor
                                                        : AppColors
                                                            .iconLightColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      } else if (addressTypesState is GetAddressTypesLoading) {
                        return Column(
                          children: List.generate(
                              3,
                              (index) => Shimmer.fromColors(
                                    baseColor: isDarkMode
                                        ? AppColors.iconDarkColor
                                        : AppColors.iconLightColor,
                                    highlightColor: isDarkMode
                                        ? AppColors.darkSecondary
                                        : AppColors.lightSecondary,
                                    child: Card(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: index == 0 ? 75 : 100,
                                        child: Padding(
                                          padding: EdgeInsets.all(15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withValues(alpha: 0.15),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                width: 150,
                                                height: 25,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              index == 0
                                                  ? Container()
                                                  : Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withValues(
                                                                alpha: 0.15),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      width: 250,
                                                      height: 15,
                                                    ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: GradientButton(
                onPressed: () {
                  // Get the address types to check mandatory ones
                  final addressTypesState =
                      context.read<GetAddressDetailsBloc>().state;
                  debugPrint(
                      'Current addressTypesState: ${addressTypesState.runtimeType}');

                  // First check if we have any addresses saved
                  List<AddressDataModel> savedAddresses = [];
                  final addressManagementState =
                      context.read<AddressManagementBloc>().state;

                  if (addressManagementState is AddressesLoaded) {
                    savedAddresses = addressManagementState.addresses;
                  } else {
                    // Fallback to local storage if BLoC state doesn't have addresses
                    savedAddresses =
                        hiveManager.getAddressesForRef(widget.refNumber);
                  }

                  debugPrint(
                      '📋 Found ${savedAddresses.length} saved addresses');

                  // Basic validation - we need at least one address with required fields
                  if (savedAddresses.isEmpty ||
                      !savedAddresses.any((a) =>
                          a.addressLine1.isNotEmpty &&
                          a.city.isNotEmpty &&
                          a.country.isNotEmpty)) {
                    showErrorSnackBar(
                        context, 'Please complete all mandatory addresses');
                    return;
                  }

                  // Additional validation for mandatory addresses (if we can get the types)
                  if (addressTypesState is GetAddressTypesLoaded) {
                    // Check if all mandatory addresses are completed
                    final mandatoryAddressTypes = addressTypesState.addressTypes
                        .where((type) => type.mandatory)
                        .toList();

                    debugPrint(
                        '📋 Found ${mandatoryAddressTypes.length} mandatory address types');

                    final missedMandatoryAddresses = <String>[];

                    for (final mandatoryType in mandatoryAddressTypes) {
                      debugPrint(
                          '📋 Checking mandatory type: ${mandatoryType.addressTypeDesc}');

                      final isSaved = savedAddresses.any((address) =>
                          address.addressType ==
                              mandatoryType.addressTypeDesc &&
                          address.addressLine1.isNotEmpty &&
                          address.city.isNotEmpty &&
                          address.country.isNotEmpty);

                      if (!isSaved) {
                        missedMandatoryAddresses
                            .add(mandatoryType.addressTypeDesc);
                        debugPrint(
                            '❌ Missing mandatory address: ${mandatoryType.addressTypeDesc}');
                      }
                    }

                    if (missedMandatoryAddresses.isNotEmpty) {
                      // Show error message for missing mandatory addresses
                      showErrorSnackBar(context,
                          'Please complete all mandatory addresses: ${missedMandatoryAddresses.join(", ")}');
                      return; // Stop execution
                    }

                    debugPrint('✅ All mandatory addresses are completed');
                  }

                  // FORCE RELOAD OF ADDRESSES FROM HIVE BEFORE SUBMISSION
                  // This is to ensure we have the most up-to-date data
                  final latestAddresses =
                      hiveManager.getAddressesForRef(widget.refNumber);
                  debugPrint(
                      '🔄 Force reloaded ${latestAddresses.length} addresses from Hive');

                  for (final addr in latestAddresses) {
                    debugPrint(
                        '📍 Available address: ${addr.addressType}, addressTypeId: ${addr.addressTypeId}');
                    debugPrint(
                        '📍 Address line 1: "${addr.addressLine1}", city: "${addr.city}"');
                  }

                  // IMPORTANT FIX: Filter out addresses with empty required fields
                  final validAddresses = latestAddresses
                      .where((address) =>
                          address.addressLine1.isNotEmpty &&
                          address.city.isNotEmpty &&
                          address.country.isNotEmpty &&
                          address.addressTypeId > 0)
                      .toList();

                  final addressesList = validAddresses.map((address) {
                    return {
                      'address_type_id': address.addressTypeId,
                      'proof_type_id': address.addressProofId,
                      'proof_id_number': address.addressProofIdNumber,
                      'addressProofImagePath': address.addressProofImagePath,
                      'addr_line1': address.addressLine1,
                      'addr_line2': address.addressLine2,
                      'city': address.city,
                      'state': address.state,
                      'postal_code': address.postalCode,
                      'country': address.country,
                    };
                  }).toList();

                  // Log to verify we're sending all required addresses
                  for (final addr in validAddresses) {
                    debugPrint(
                        '⏩ Sending address: ${addr.addressType}, typeId: ${addr.addressTypeId}');
                  }

                  debugPrint('📋 All addresses to send:');
                  debugPrint(const JsonEncoder.withIndent('  ')
                      .convert(addressesList));

                  // Get image paths and handle type casting
                  final List<String> imagePaths = validAddresses
                      .where(
                          (address) => address.addressProofImagePath.isNotEmpty)
                      .map((address) => address.addressProofImagePath)
                      .toList();
                  final requestModel = RegisterAddressRequestModel(
                      imagePaths: imagePaths, addressDetails: addressesList);

                  context.read<RegisterAddressBloc>().add(
                      RegisterAddressEvent.submit(
                          requestModel: requestModel,
                          refNumber: widget.refNumber,
                          customerTypeId: widget.customerTypeId.toString()));
                  debugPrint('📋 Image paths:');
                  debugPrint(imagePaths.toString());
                  debugPrint('📋 Request model:');
                  debugPrint(requestModel.addressDetails.toString());
                },
                isDarkMode: isDarkMode,
                child: BlocBuilder<RegisterAddressBloc, RegisterAddressState>(
                  builder: (context, state) {
                    return state.maybeWhen(loading: () {
                      return SizedBox(
                          width: 30,
                          height: 30,
                          child: const CircularProgressIndicator());
                    }, orElse: () {
                      return Text(localizations.get('save'));
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
