import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/flipping_card.dart';
import '../bloc/card_masking/card_masking_bloc.dart';

class CardSettingsScreen extends StatelessWidget {
  final int cardIndex;
  const CardSettingsScreen({super.key, required this.cardIndex});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => CardMaskingBloc(),
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  BlocBuilder<CardMaskingBloc, CardMaskingState>(
                    builder: (context, maskingState) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Hero(
                          tag: "card_$cardIndex",
                          child: CardFlipWidget(
                            cardWidth: MediaQuery.of(context).size.width,
                            cardHeight: MediaQuery.of(context).size.width * 0.5,
                            frontImage: "lib/core/assets/card-background.png",
                            backImage: "lib/core/assets/card-background.png",
                            cardNumber: maskingState.maskedCards[cardIndex]
                                ? "•••• •••• •••• ${1111 + cardIndex}"
                                : "4111 1111 1111 ${1111 + cardIndex}",
                            cardHolderName: "JOHN DOE",
                            cvv: maskingState.maskedCards[cardIndex]
                                ? "•••"
                                : "123",
                            expiryDate: maskingState.maskedCards[cardIndex]
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
                                    .add(ToggleCardMasking(cardIndex));
                              },
                              child: Icon(
                                maskingState.maskedCards[cardIndex]
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: isDarkMode
                        ? AppColors.darkButtonEnd
                        : AppColors.lightSecondary,
                    title: Text(
                      "International Transactions",
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Switch(
                      activeTrackColor: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: isDarkMode
                        ? AppColors.darkButtonEnd
                        : AppColors.lightSecondary,
                    title: Text(
                      "Freeze Card",
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Switch(
                      activeTrackColor: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: isDarkMode
                        ? AppColors.darkButtonEnd
                        : AppColors.lightSecondary,
                    title: Text(
                      "Change Card PIN",
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      context.navigateTo(RouteConstants.cardLimits,
                          arguments:
                              CardLimitsArguments(cardNumber: "1234567890"));
                    },
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: isDarkMode
                        ? AppColors.darkButtonEnd
                        : AppColors.lightSecondary,
                    title: Text(
                      "Set Card Limits",
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: isDarkMode
                        ? AppColors.darkButtonEnd
                        : AppColors.lightSecondary,
                    title: Text(
                      "Report Lost or Stolen Card",
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
