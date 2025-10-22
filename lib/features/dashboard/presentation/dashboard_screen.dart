import 'package:carousel_slider/carousel_slider.dart';
import 'package:epurse/core/storage/preferences_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';

import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../widget/dashboard_drawer.dart';
import '../widget/pie_chart_widget.dart';
import '../cubit/balance_visibility_cubit.dart';
import '../cubit/greeting_cubit.dart';
import '../../login/data/mfa/mfa_datasource.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _mfaDialogShown = false;
  bool _mfaNameChecked = false;

  Future<void> _checkMfaAndPrompt() async {
    // Set flag immediately and synchronously to prevent race conditions
    if (_mfaDialogShown) {
      debugPrint('🔐 Dashboard MFA Check - Already shown, skipping');
      return;
    }
    _mfaDialogShown = true;
    
    final prefs = await PreferencesManager.getInstance();
    final mfaId = prefs.mfaId;
    debugPrint('🔐 Dashboard MFA Check - mfaId: $mfaId');
    debugPrint('🔐 Dashboard MFA Check - Current time: ${DateTime.now().millisecondsSinceEpoch}');
    
    // Always wait a bit for login to complete, then check again
    debugPrint('🔐 Dashboard MFA Check - Waiting for login to complete...');
    await Future.delayed(const Duration(milliseconds: 1500));
    final finalMfaId = prefs.mfaId;
    debugPrint('🔐 Dashboard MFA Check - Final mfaId after delay: $finalMfaId');
    
    if (!mounted) return;
    
    // Only show dialog if MFA ID is -1 (not set)
    if (finalMfaId == -1) {
      debugPrint('🔐 Showing PIN dialog because mfaId is -1');
      await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Set 2FA'),
            content: const Text('Please set Two Factor Authentication.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  if (!mounted) return;
                  context.navigateTo(RouteConstants.setTransactionPin);
                },
                child: const Text('Yes'),
              ),
            ],
          );
        },
      );
    } else {
      debugPrint('🔐 NOT showing PIN dialog because mfaId is $finalMfaId (not -1)');
    }
  }

  @override
  void initState() {
    super.initState();
    debugPrint('🔐 Dashboard initState called');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('🔐 Dashboard initState postFrameCallback executing');
      // Add a small delay to ensure login bloc has completed
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _checkMfaAndPrompt();
          _ensureMfaNameSaved();
        }
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('🔐 Dashboard didChangeDependencies called - _mfaDialogShown: $_mfaDialogShown');
    // In case navigation timing skipped the initState callback, try again once.
    // Use a small delay to ensure initState has completed first
    if (!_mfaDialogShown) {
      debugPrint('🔐 Dashboard didChangeDependencies - scheduling delayed MFA check');
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted && !_mfaDialogShown) {
          debugPrint('🔐 Dashboard didChangeDependencies - executing delayed MFA check');
          _checkMfaAndPrompt();
        }
      });
    }
    if (!_mfaNameChecked) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted && !_mfaNameChecked) {
          _ensureMfaNameSaved();
        }
      });
    }
  }

  Future<void> _ensureMfaNameSaved() async {
    // Set flag immediately to prevent multiple calls
    if (_mfaNameChecked) {
      debugPrint('🧪 _ensureMfaNameSaved - Already checked, skipping');
      return;
    }
    _mfaNameChecked = true;
    
    debugPrint('🧪 _ensureMfaNameSaved called');
    final prefs = await PreferencesManager.getInstance();
    final currentMfaId = prefs.mfaId;
    if (currentMfaId == -1) return; // alert path handles prompting
    
    // Always fetch and update MFA name to ensure it matches current MFA ID
    final currentMfaName = prefs.mfaName ?? 'None';
    debugPrint('🧪 Current MFA name: $currentMfaName');
    debugPrint('🧪 Fetching MFA list to update MFA name for MFA ID: $currentMfaId');
    try {
      final ds = MfaDataSourceImpl(client: http.Client());
      final list = await ds.fetchMfaList();
      debugPrint('🧪 Fetched MFA list with ${list.length} items');
      final match = list.firstWhere(
        (e) => e.mfaId == currentMfaId,
        orElse: () => MfaOption(mfaId: currentMfaId, name: 'Unknown', isDefault: false),
      );
      await prefs.setMfaName(match.name);
      debugPrint("🔐 Updated MFA Name from '$currentMfaName' to '${match.name}'");
    } catch (e) {
      debugPrint("🔐 Error fetching MFA list: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    return BlocProvider(
        create: (context) => GreetingCubit(),
        child: Scaffold(
          backgroundColor:
              isDarkMode ? AppColors.darkPrimary : AppColors.lightPrimary,
          drawer: DrawerDashboard(isDarkMode: isDarkMode),
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor:
                isDarkMode ? AppColors.darkButtonEnd : AppColors.lightButtonEnd,
            foregroundColor: isDarkMode
                ? AppColors.darkTextSecondary
                : AppColors.lightTextSecondary,
            centerTitle: false,
            leading: Builder(
              builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: CircleAvatar(
                    backgroundColor: isDarkMode
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<GreetingCubit, GreetingState>(
                  builder: (context, state) {
                    return Text(state.greeting,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isDarkMode
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ));
                  },
                ),
                FutureBuilder<PreferencesManager>(
                  future: PreferencesManager.getInstance(),
                  builder: (context, snapshot) {
                    final preferencesManager = snapshot.data;
                    final userName = preferencesManager?.userName ?? 'User';
                    
                    // Extract first name only
                    final firstName = userName.split(' ').first;
                    
                    return Text(firstName,
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: isDarkMode
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ));
                  },
                ),
              ],
            ),
            actions: [
              Icon(Icons.notifications),
              SizedBox(width: 20),
              Icon(Icons.list_alt),
              SizedBox(
                width: 30,
              )
            ],
          ),
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                color: isDarkMode
                    ? AppColors.darkPrimary
                    : AppColors.lightSecondary,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width / 2,
                          child: Column(
                            mainAxisSize: MainAxisSize
                                .min, // Ensures it takes only required space
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(localizations.get('total_balance'),
                                      style: theme.textTheme.labelMedium),
                                  SizedBox(width: 8),
                                  BlocBuilder<BalanceVisibilityCubit,
                                          BalanceVisibilityState>(
                                      builder: (context, state) {
                                    return InkWell(
                                        onTap: () {
                                          context
                                              .read<BalanceVisibilityCubit>()
                                              .toggleVisibility(context);
                                        },
                                        child: Icon(
                                          state is BalanceVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 22,
                                        ));
                                  })
                                ],
                              ),
                              SizedBox(
                                height:
                                    40, // Give a finite height to avoid unbounded constraints
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: BlocBuilder<BalanceVisibilityCubit,
                                          BalanceVisibilityState>(
                                      builder: (context, state) {
                                    return Text(
                                      state is BalanceVisible
                                          ? "\$ 10000.00"
                                          : "\$ * * * * * *",
                                      style: theme.textTheme.displayMedium,
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              InkWell(
                                onTap: () {
                                  context.navigateTo(
                                      RouteConstants.accountSummary);
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: isDarkMode
                                                ? AppColors.iconDarkColor
                                                : AppColors.iconLightColor)),
                                    child: Text(localizations.get('view_more'),
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                                color: isDarkMode
                                                    ? AppColors.iconDarkColor
                                                    : AppColors
                                                        .iconLightColor))),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 4,
                          child: PieChartWidget(
                            values: [40, 30, 0, 50, 20],
                            primaryColor: isDarkMode
                                ? AppColors.darkButtonStart
                                : AppColors.iconLightColor,
                            secondaryColor: isDarkMode
                                ? AppColors.darkSecondary
                                : AppColors.lightPrimary,
                            labels: [
                              localizations.get('fashion'),
                              localizations.get('grocery'),
                              localizations.get('travel'),
                              localizations.get('food'),
                              localizations.get('others')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: isDarkMode
                        ? AppColors.iconDarkColor
                        : AppColors.iconLightColor,
                  ),
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: isDarkMode
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                              onTap: () {
                                context
                                    .navigateTo(RouteConstants.selectRecipient);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "lib/core/icons/payments.png",
                                    scale: 2.6,
                                  ),
                                  Text(localizations.get('payments')),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: isDarkMode
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                              onTap: () {
                                context.navigateTo(RouteConstants.topUp);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "lib/core/icons/top-up.png",
                                    scale: 2.6,
                                  ),
                                  Text(localizations.get('top_up')),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: isDarkMode
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                              onTap: () {
                                context
                                    .navigateTo(RouteConstants.bankingServices);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "lib/core/icons/bank.png",
                                    scale: 2.6,
                                  ),
                                  Text(localizations.get('banking')),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: isDarkMode
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                              onTap: () {
                                context.navigateTo(RouteConstants.manageCards);
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "lib/core/icons/manage-card.png",
                                    scale: 2.6,
                                  ),
                                  Text(localizations.get('manage_card')),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: isDarkMode
                    ? AppColors.darkButtonStart.withValues(alpha: 0.5)
                    : AppColors.lightPrimary,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizations.get('other_services'),
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.navigateTo(
                                    RouteConstants.mobileOperatorSelection);
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/mobile-recharge.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('mobile_recharge'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.navigateTo(RouteConstants.payBills);
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/pay-bills.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('pay_bills'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "lib/core/icons/pay-tax.png",
                                  scale: 3,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  localizations.get('pay_tax'),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.navigateTo(RouteConstants.atmLocator);
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/atm.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('atm_locator'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: InkWell(
                          onTap: () {
                            context.navigateTo(RouteConstants.allServices);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor)),
                              child: Text(localizations.get('see_all'),
                                  style: theme.textTheme.labelSmall?.copyWith(
                                      color: isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: isDarkMode
                    ? AppColors.darkButtonStart.withValues(alpha: 0.5)
                    : AppColors.lightPrimary.withValues(alpha: 0.15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizations.get('child_services'),
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Implement Child Cards
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/child-card.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('child_cards'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Implement Child Accounts
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/child-account.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('child_accounts'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Implement Top-Up Child
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/topup-child.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('top_up_child'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Implement Child Transactions
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "lib/core/icons/child-transactions.png",
                                    scale: 3,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    localizations.get('child_transactions'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: isDarkMode
                    ? AppColors.darkPrimary
                    : AppColors.lightSecondary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: [1, 2, 3, 4, 5]
                            .map((i) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        isDarkMode
                                            ? AppColors.darkButtonStart
                                            : AppColors.lightPrimary,
                                        isDarkMode
                                            ? AppColors.darkButtonStart
                                            : AppColors.lightPrimary,
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Special Offer $i",
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                            color: isDarkMode
                                                ? AppColors.darkTextPrimary
                                                : AppColors.lightTextPrimary,
                                          ),
                                        ),
                                        Text(
                                          "Get ${i * 10}% cashback on your next transaction",
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: isDarkMode
                                                ? AppColors.darkTextPrimary
                                                : AppColors.lightTextPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                          height: 150,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 21 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 500),
                          viewportFraction: 0.7,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
            child: FloatingActionButton.extended(
              elevation: 10,
              splashColor:
                  isDarkMode ? AppColors.darkPrimary : AppColors.lightPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: isDarkMode
                  ? AppColors.darkSecondary
                  : AppColors.iconLightColor,
              onPressed: () {
                context.navigateTo(RouteConstants.scanQrCode);
              },
              label: Text("Scan QR",
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: isDarkMode
                        ? AppColors.darkBackground1
                        : AppColors.lightBackground1,
                  )),
              icon: Icon(
                Icons.qr_code_2,
                color: isDarkMode
                    ? AppColors.darkBackground1
                    : AppColors.lightBackground1,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ));
  }
}
