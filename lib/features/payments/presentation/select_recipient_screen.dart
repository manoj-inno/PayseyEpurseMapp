import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../bloc/get_recipients/get_recipients_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;

class SelectRecipientScreen extends StatelessWidget {
  const SelectRecipientScreen({super.key});

  // Helper method to normalize mobile numbers for comparison
  String _normalizeMobileNumber(String mobile) {
    if (mobile.isEmpty) return '';

    // Remove all non-digit characters (spaces, +, -, etc.)
    String normalized = mobile.replaceAll(RegExp(r'[^\d]'), '');

    // Remove common country codes if present
    if (normalized.startsWith('91') && normalized.length > 10) {
      normalized = normalized.substring(2); // Remove +91
    }

    return normalized;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("______________SELECT RECIPIENT SCREEN BUILD____________");

    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return BlocProvider.value(
      value: di.sl<GetRecipientsBloc>()..add(LoadContacts()),
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                BlocBuilder<GetRecipientsBloc, GetRecipientsState>(
                  builder: (context, state) {
                    debugPrint("🔍 Search field state: ${state.runtimeType}");
                    return TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search Recipients..",
                        hintStyle: theme.textTheme.bodyLarge?.copyWith(
                            color: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                            color: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor),
                      ),
                      onChanged: (value) {
                        context
                            .read<GetRecipientsBloc>()
                            .add(SearchContacts(value));
                      },
                    ).asGradientBox(context);
                  },
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<GetRecipientsBloc, GetRecipientsState>(
                    builder: (context, state) {
                      debugPrint("📱 List view state: ${state.runtimeType}");

                      if (state is ContactsLoading) {
                        debugPrint("📱 Showing loading state with shimmer");
                        return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                              baseColor: isDarkMode
                                  ? AppColors.shimmerBaseDark
                                  : AppColors.shimmerBaseLight2,
                              highlightColor: isDarkMode
                                  ? AppColors.shimmerHighlightDark
                                  : AppColors.shimmerHighlightLight,
                              child: ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5),
                                leading: const CircleAvatar(
                                  radius: 20,
                                ),
                                title: Container(
                                  height: 16,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: isDarkMode
                                        ? AppColors.shimmerBaseDark
                                        : AppColors.shimmerBaseLight2,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                subtitle: Container(
                                  height: 12,
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.only(top: 8, right: 50),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    width: 15,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      } else if (state is ContactsError) {
                        debugPrint("❌ Error state: ${state.message}");
                        return Center(child: Text(state.message));
                      } else if (state is ContactsLoaded) {
                        debugPrint("✅ Contacts loaded successfully!");
                        debugPrint(
                            "✅ Total contacts: ${state.contacts.length}");
                        debugPrint(
                            "✅ Filtered contacts: ${state.filteredContacts.length}");
                        debugPrint(
                            "✅ Beneficiaries: ${state.beneficiaries.length}");
                        debugPrint(
                            "✅ Contacts: ${state.contacts.map((c) => '${c.name}: ${c.number}').toList()}");
                        debugPrint(
                            "✅ Beneficiaries: ${state.beneficiaries.map((b) => '${b.label}: ${b.mobile}').toList()}");
                        return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.filteredContacts.length,
                          itemBuilder: (context, index) {
                            final contact = state.filteredContacts[index];
                            final isBeneficiary =
                                state.isBeneficiary(contact.number);

                            debugPrint(
                                "📱 List item $index: ${contact.name} (${contact.number}) - Beneficiary: $isBeneficiary");

                            return ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5),
                              leading: CircleAvatar(
                                child: Text(contact.name[0]),
                              ),
                              title: Text(
                                contact.name,
                                style: theme.textTheme.labelLarge,
                              ),
                              subtitle: Text(
                                contact.number,
                                style: theme.textTheme.bodyMedium,
                              ),
                              trailing: isBeneficiary
                                  ? Icon(Icons.arrow_forward_ios,
                                      color: isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor)
                                  : TextButton(
                                      onPressed: () {
                                        debugPrint(
                                            "📤 Inviting contact: ${contact.name} (${contact.number})");
                                        final phone = contact.number;
                                        final message = Uri.encodeComponent(
                                            "Hey! 👋\n\nCheck out this amazing eWallet app I'm using to send and receive money without any hassle. 💸 It's super fast, easy, and secure!\n\nIt's honestly a better way to manage your finances. 📲💰\n\nInstall it now from this link: https://yourapp.link/install\n\nLet me know once you're in! 🙌");
                                        final url =
                                            'https://wa.me/$phone?text=$message';
                                        debugPrint("📤 WhatsApp URL: $url");
                                        launchUrl(Uri.parse(url),
                                            mode:
                                                LaunchMode.externalApplication);
                                      },
                                      child: Text(
                                        'Invite',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: isDarkMode
                                                    ? AppColors.iconDarkColor
                                                    : AppColors.iconLightColor),
                                      ),
                                    ),
                              onTap: isBeneficiary
                                  ? () {
                                      debugPrint(
                                          "💸 Navigating to payments for beneficiary: ${contact.name} (${contact.number})");

                                      // Find the matching beneficiary to get user_id
                                      final matchingBeneficiary =
                                          state.beneficiaries.firstWhere((b) =>
                                              _normalizeMobileNumber(
                                                  b.mobile) ==
                                              _normalizeMobileNumber(
                                                  contact.number));

                                      debugPrint(
                                          "💸 Beneficiary user_id: ${matchingBeneficiary.userId}");

                                      context.navigateTo(
                                          RouteConstants.payments,
                                          arguments: PaymentsArguments(
                                              recipientName: contact.name,
                                              recipientNumber: contact.number,
                                              userId: matchingBeneficiary.userId
                                                  .toString()));
                                    }
                                  : null,
                            );
                          },
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
