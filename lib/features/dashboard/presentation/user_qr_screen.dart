import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:typed_data';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/storage/preferences_manager.dart';
import '../../../core/util/qr_code_service.dart';

class UserQrScreen extends StatefulWidget {
  const UserQrScreen({super.key});

  @override
  State<UserQrScreen> createState() => _UserQrScreenState();
}

class _UserQrScreenState extends State<UserQrScreen> {
  String userName = "Loading...";
  String userMobile = "Loading...";
  String userId = "Loading...";
  Uint8List? qrCodeImage;
  bool isLoadingQR = true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final preferencesManager = await PreferencesManager.getInstance();
      setState(() {
        userName = preferencesManager.userName ?? "User";
        userMobile = preferencesManager.userMobile ?? "No mobile";
        userId = preferencesManager.userId ?? "USER0000001813"; // Default fallback
      });
      
      // Generate QR code after loading user data
      await _generateQRCode();
    } catch (e) {
      setState(() {
        userName = "User";
        userMobile = "No mobile";
        userId = "USER0000001813";
      });
    }
  }

  Future<void> _generateQRCode() async {
    try {
      setState(() {
        isLoadingQR = true;
      });

      // Test the method channel first
      final channelWorking = await QRCodeService.testChannel();
      debugPrint('Method channel working: $channelWorking');

      final qrImageData = await QRCodeService.generateUserQRCode(
        userName: userName,
        userId: userId,
        userPhone: userMobile,
        size: 310, // Match the size in the UI
      );

      if (qrImageData != null) {
        setState(() {
          qrCodeImage = qrImageData;
          isLoadingQR = false;
        });
      } else {
        setState(() {
          isLoadingQR = false;
        });
        // Show error message
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to generate QR code'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      setState(() {
        isLoadingQR = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error generating QR code: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: Icon(
                Icons.person,
                size: 40,
                color: isDarkMode
                    ? AppColors.darkTextPrimary
                    : AppColors.lightTextPrimary,
              ),
            ),
            SizedBox(height: 15),
            Text(
              userName,
              style: theme.textTheme.displaySmall?.copyWith(
                  color: isDarkMode
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary),
            ),
            Text(
              userMobile,
              style: theme.textTheme.bodyMedium?.copyWith(
                  color: isDarkMode
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary),
            ),
            SizedBox(height: 15),
            Center(
              child: Card(
                child: Container(
                  width: 310,
                  height: 310,
                  padding: const EdgeInsets.all(8.0),
                  child: isLoadingQR
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : qrCodeImage != null
                          ? Image.memory(
                              qrCodeImage!,
                              fit: BoxFit.contain,
                            )
                          : const Center(
                              child: Icon(
                                Icons.qr_code_2,
                                size: 100,
                                color: Colors.grey,
                              ),
                            ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.info,
                  size: 12,
                  color: isDarkMode
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary,
                ),
                SizedBox(width: 5),
                Text(
                  "Scan this QR code to pay me",
                  style: theme.textTheme.labelLarge?.copyWith(
                      color: isDarkMode
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
