import 'package:epurse/core/widgets/required_label_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';

class SelectBillPaymentOperatorScreen extends StatelessWidget {
  const SelectBillPaymentOperatorScreen(
      {super.key, required this.billTypeId, required this.billType});
  final int billTypeId;
  final String billType;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$billType Bill Payment',
                    style: theme.textTheme.displaySmall),
                const SizedBox(height: 20),
                RequiredLabelText(text: "Select Operator", isRequired: true),
                const SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  borderRadius: BorderRadius.circular(5),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: theme.textTheme.labelMedium,
                  items: [
                    DropdownMenuItem(
                        value: "MTN",
                        child: Row(
                          children: [
                            Icon(Icons.phone_android_rounded),
                            const SizedBox(width: 10),
                            Text("MTN"),
                          ],
                        )),
                    DropdownMenuItem(
                        value: "Voda",
                        child: Row(
                          children: [
                            Icon(Icons.phone_android_rounded),
                            const SizedBox(width: 10),
                            Text("Voda"),
                          ],
                        )),
                    DropdownMenuItem(
                        value: "Tigo",
                        child: Row(
                          children: [
                            Icon(Icons.phone_android_rounded),
                            const SizedBox(width: 10),
                            Text("Tigo"),
                          ],
                        )),
                  ],
                  onChanged: (value) {},
                ).asGradientBox(context),
                const SizedBox(height: 10),
                RequiredLabelText(text: "Bill Number", isRequired: true),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                ).asGradientBox(context),
                const SizedBox(height: 10),
                RequiredLabelText(text: "Beneficiary Name", isRequired: false),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ).asGradientBox(context),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: GradientButton(
                      isDarkMode: isDarkMode,
                      child: Text("Next"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Past Bill Payments",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(
                        "Operator Name",
                        style: theme.textTheme.labelLarge,
                      ),
                      subtitle: Text(
                        "Bill Number",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "\$ 10",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
