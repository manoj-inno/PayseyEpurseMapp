import 'package:flutter/material.dart';

import '../../../core/routing/routing.dart';
import '../../../core/storage/preferences_manager.dart';
import '../../../core/theme/app_themes.dart';
import '../presentation/settings_screen.dart';
import '../presentation/user_qr_screen.dart';

class DrawerDashboard extends StatelessWidget {
  const DrawerDashboard({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PreferencesManager>(
      future: PreferencesManager.getInstance(),
      builder: (context, snapshot) {
        final preferencesManager = snapshot.data;
        final userName = preferencesManager?.userName ?? 'User';
        final userMobile = preferencesManager?.userMobile ?? 'user@example.com';

        // Extract first name only
        final firstName = userName.split(' ').first;
        
        return Drawer(
          backgroundColor:
              isDarkMode ? AppColors.darkButtonStart : AppColors.lightPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(),
          ),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  firstName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                accountEmail: Text(
                  userMobile,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey,
              ),
            ),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? AppColors.darkButtonEnd
                  : AppColors.lightButtonEnd,
            ),
          ),
          ListTile(
            leading: Icon(Icons.qr_code_2),
            title: Text("Show QR"),
            onTap: () {
              context.goBack();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserQrScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              context.goBack();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Update 2FA"),
            onTap: () {
              context.goBack();
              context.navigateTo(RouteConstants.setTransactionPin);
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text("Support"),
            onTap: () {},
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () async {
              PreferencesManager preferencesManager =
                  await PreferencesManager.getInstance();
              preferencesManager.clearAuthData();
              context.navigateToAndRemoveUntil(RouteConstants.login);
            },
          ),
              SizedBox(height: 15),
            ],
          ),
        );
      },
    );
  }
}
