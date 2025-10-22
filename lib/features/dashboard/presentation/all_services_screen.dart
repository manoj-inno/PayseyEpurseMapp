import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({super.key});

  @override
  State<AllServicesScreen> createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  bool _isSearchActive = false;
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];
  final FocusNode _searchFocusNode = FocusNode();

  final List<Map<String, dynamic>> allServices = const [
    {
      "Bill Payment": [
        {
          'imagePath': 'lib/core/icons/mobile-recharge.png',
          'title': 'Mobile Recharge',
          'type': 'mobile',
        },
        {
          'imagePath': 'lib/core/icons/electricity.png',
          'title': 'Electricity',
          'billType': 1,
          'type': 'bill',
        },
        {
          'imagePath': 'lib/core/icons/water.png',
          'title': 'Water',
          'billType': 2,
          'type': 'bill',
        },
        {
          'imagePath': 'lib/core/icons/gas.png',
          'title': 'Gas',
          'billType': 3,
          'type': 'bill',
        },
        {
          'imagePath': 'lib/core/icons/tv.png',
          'title': 'TV Cable',
          'billType': 4,
          'type': 'bill',
        },
        {
          'imagePath': 'lib/core/icons/credit-card-bills.png',
          'title': 'Credit Card',
          'billType': 5,
          'type': 'bill',
        },
      ],
      "Banking Services": [
        {
          'imagePath': 'lib/core/icons/account-transfer.png',
          'title': 'Account Transfer',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/account-wallet.png',
          'title': 'Account to Wallet Transfer',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/wallet-account.png',
          'title': 'Wallet to Account Transfer',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/card-transfer.png',
          'title': 'Card Transfer',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/withdraw.png',
          'title': 'Withdraw',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/chequebook.png',
          'title': 'Cheque Book',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/insurance.png',
          'title': 'Insurance',
          'type': 'bank',
        },
        {
          'imagePath': 'lib/core/icons/loan.png',
          'title': 'Loan',
          'type': 'bank',
        },
      ],
      "Card Services": [
        {
          'imagePath': 'lib/core/icons/order-card.png',
          'title': 'Order New Card',
          'type': 'card',
        },
        {
          'imagePath': 'lib/core/icons/activate-card.png',
          'title': 'Card Activation',
          'type': 'card',
        },
      ],
      "Ticket Booking": [
        {
          'imagePath': 'lib/core/icons/bus.png',
          'title': 'Bus Ticket',
          'type': 'ticket',
        },
        {
          'imagePath': 'lib/core/icons/train.png',
          'title': 'Train Ticket',
          'type': 'ticket',
        },
        {
          'imagePath': 'lib/core/icons/flight.png',
          'title': 'Flight Ticket',
          'type': 'ticket',
        },
      ],
      "Entertainment": [
        {
          'imagePath': 'lib/core/icons/movie.png',
          'title': 'Movie Ticket',
          'type': 'entertainment',
        },
        {
          'imagePath': 'lib/core/icons/hotel.png',
          'title': 'Hotel Booking',
          'type': 'entertainment',
        },
        {
          'imagePath': 'lib/core/icons/slide.png',
          'title': 'Amusement Park',
          'type': 'entertainment',
        },
        {
          'imagePath': 'lib/core/icons/dinner.png',
          'title': 'Restaurant',
          'type': 'entertainment',
        },
      ]
    },
  ];

  void _toggleSearch() {
    setState(() {
      _isSearchActive = !_isSearchActive;
      if (_isSearchActive) {
        _searchFocusNode.requestFocus();
      } else {
        _searchController.clear();
        _searchResults.clear();
      }
    });
  }

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResults.clear();
      });
      return;
    }

    final results = <Map<String, dynamic>>[];

    for (final serviceCategory in allServices) {
      serviceCategory.forEach((heading, services) {
        for (final service in services) {
          if (service['title']
              .toString()
              .toLowerCase()
              .contains(query.toLowerCase())) {
            results.add({
              'category': heading,
              'service': service,
            });
          }
        }
      });
    }

    setState(() {
      _searchResults = results;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(_isSearchActive ? Icons.close : Icons.search,
                  color: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor),
              onPressed: _toggleSearch,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Column(
          children: [
            if (_isSearchActive)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      focusNode: _searchFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Search services...',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                      onChanged: _performSearch,
                    ).asGradientBox(context),
                    if (_searchResults.isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                          color: isDarkMode ? Colors.grey[800] : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 300,
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: _searchResults.length,
                          itemBuilder: (context, index) {
                            final result = _searchResults[index];
                            final service = result['service'];
                            final category = result['category'];

                            return ListTile(
                              leading: Image.asset(
                                service['imagePath'],
                                height: 24,
                                width: 24,
                              ),
                              title: Text(service['title']),
                              subtitle: Text(category),
                              onTap: () {
                                if (service['type'] == 'bill') {
                                  context.navigateTo(
                                      RouteConstants.selectBillPaymentOperator,
                                      arguments:
                                          SelectBillPaymentOperatorArguments(
                                              billTypeId: service['billType']!,
                                              billType: service['title']));
                                } else if (service['type'] == 'mobile') {
                                  context.navigateTo(
                                      RouteConstants.mobileOperatorSelection);
                                }
                                setState(() {
                                  _isSearchActive = false;
                                  _searchController.clear();
                                  _searchResults.clear();
                                });
                              },
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            Expanded(
              child: _isSearchActive && _searchResults.isNotEmpty
                  ? SizedBox() // Hide the list when showing search results
                  : ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      itemCount: allServices.length,
                      itemBuilder: (context, index) {
                        final serviceCategory = allServices[index];
                        return Column(
                          children: serviceCategory.entries.map((entry) {
                            final String heading = entry.key;
                            final List<Map<String, dynamic>> services =
                                entry.value;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Text(heading,
                                      style: theme.textTheme.displaySmall),
                                ),
                                SizedBox(height: 15),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 5,
                                    childAspectRatio: 0.8,
                                  ),
                                  itemCount: services.length,
                                  itemBuilder: (context, serviceIndex) {
                                    final service = services[serviceIndex];
                                    return ServiceCard(
                                      imagePath: service['imagePath'],
                                      title: service['title'],
                                      billType: service['billType'],
                                      type: service['type'],
                                    );
                                  },
                                ),
                                Divider(
                                  color: isDarkMode
                                      ? AppColors.iconDarkColor
                                      : AppColors.iconLightColor,
                                  thickness: 0.2,
                                ),
                              ],
                            );
                          }).toList(),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int? billType;
  final String type;

  const ServiceCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.billType,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return InkWell(
      onTap: () {
        if (type == 'bill') {
          context.navigateTo(RouteConstants.selectBillPaymentOperator,
              arguments: SelectBillPaymentOperatorArguments(
                  billTypeId: billType!, billType: title));
        } else if (type == 'mobile') {
          context.navigateTo(RouteConstants.mobileOperatorSelection);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 30,
            width: 30,
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isDarkMode ? Colors.white : Colors.black87,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
