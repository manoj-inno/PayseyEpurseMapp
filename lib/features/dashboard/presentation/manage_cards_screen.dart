import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/flipping_card.dart';
import '../bloc/card_masking/card_masking_bloc.dart';

class ManageCardsScreen extends StatelessWidget {
  const ManageCardsScreen({super.key});

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
          backgroundColor: Colors.transparent,
          foregroundColor:
              isDarkMode ? AppColors.darkTextPrimary : AppColors.iconLightColor,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.info_outline,
                  color: isDarkMode
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary,
                  size: 15,
                ),
                const SizedBox(width: 5),
                Text(
                  "Touch the cards to flip them",
                  style: theme.textTheme.labelSmall,
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: BlocProvider(
                create: (context) => CardMaskingBloc(),
                child: BlocBuilder<CardMaskingBloc, CardMaskingState>(
                  builder: (context, maskingState) {
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: maskingState.maskedCards.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              child: Hero(
                                tag: "card_$index",
                                child: CardFlipWidget(
                                  cardWidth: MediaQuery.of(context).size.width,
                                  cardHeight:
                                      MediaQuery.of(context).size.width * 0.5,
                                  frontImage:
                                      "lib/core/assets/card-background.png",
                                  backImage:
                                      "lib/core/assets/card-background.png",
                                  cardNumber: maskingState.maskedCards[index]
                                      ? "•••• •••• •••• ${1111 + index}"
                                      : "4111 1111 1111 ${1111 + index}",
                                  cardHolderName: "JOHN DOE",
                                  cvv: maskingState.maskedCards[index]
                                      ? "•••"
                                      : "123",
                                  expiryDate: maskingState.maskedCards[index]
                                      ? "••/••"
                                      : "12/25",
                                  topRightIcon: Image.asset(
                                    "lib/core/assets/visa-logo.png",
                                    height: 20,
                                  ),
                                  bottomRightIcon: GestureDetector(
                                    onTap: () {
                                      context
                                          .read<CardMaskingBloc>()
                                          .add(ToggleCardMasking(index));
                                    },
                                    child: Icon(
                                      maskingState.maskedCards[index]
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Visa Platinum ${index + 1}",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            context.navigateTo(
                                                RouteConstants.cardLimits,
                                                arguments: CardLimitsArguments(
                                                    cardNumber: maskingState
                                                            .maskedCards[index]
                                                        ? "•••• •••• •••• ${1111 + index}"
                                                        : "4111 1111 1111 ${1111 + index}"));
                                          },
                                          child: Icon(
                                            Icons.list,
                                            color: isDarkMode
                                                ? AppColors.iconDarkColor
                                                : AppColors.iconLightColor,
                                            size: 24,
                                          )),
                                      const SizedBox(width: 20),
                                      InkWell(
                                          onTap: () {
                                            context.navigateTo(
                                                RouteConstants.cardSettings,
                                                arguments:
                                                    CardSettingsArguments(
                                                        cardIndex: index));
                                          },
                                          child: Icon(
                                            Icons.settings,
                                            color: isDarkMode
                                                ? AppColors.iconDarkColor
                                                : AppColors.iconLightColor,
                                            size: 24,
                                          )),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            if (index ==
                                maskingState.maskedCards.length - 1) ...[
                              const SizedBox(height: 10),
                              OutlinedButton(
                                  onPressed: () {
                                    context.navigateTo(RouteConstants.addCard);
                                  },
                                  child: Text(
                                    "Add Card",
                                  )),
                              const SizedBox(height: 40),
                            ]
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
