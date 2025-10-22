import 'package:epurse/core/theme/bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/language/bloc/language_event.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../features/login/cubit/face_login_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Settings", style: theme.textTheme.displayMedium),
              Divider(
                thickness: 0.4,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Language", style: theme.textTheme.titleMedium),
                  Spacer(),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: isDarkMode
                          ? AppColors.darkBackground1
                          : AppColors.lightButtonEnd,
                    ),
                    icon: Icon(
                      Icons.language,
                      color: isDarkMode
                          ? AppColors.darkBackground1
                          : AppColors.lightButtonEnd,
                    ),
                    onPressed: () {
                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          size.width - 40,
                          size.height * 0.3,
                          size.width - 10,
                          size.height * 0.4,
                        ),
                        items: [
                          PopupMenuItem(value: 'en', child: Text('English')),
                          PopupMenuItem(value: 'fa', child: Text('فارسی')),
                          PopupMenuItem(value: 'ar', child: Text('العربية')),
                          PopupMenuItem(value: 'fr', child: Text('Français')),
                        ],
                      ).then((value) {
                        if (value != null) {
                          context.read<LanguageBloc>().add(
                              LanguageEvent.changeLanguage(
                                  languageCode: value));
                        }
                      });
                    },
                    label: Text(_getLanguageName(
                        context.watch<LanguageBloc>().state.maybeWhen(
                              loaded: (locale) => locale.languageCode,
                              orElse: () => 'en',
                            ))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Theme", style: theme.textTheme.titleMedium),
                  Spacer(),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: isDarkMode
                          ? AppColors.darkBackground1
                          : AppColors.lightButtonEnd,
                    ),
                    icon: Icon(
                      isDarkMode ? Icons.light_mode : Icons.dark_mode,
                      color: isDarkMode
                          ? AppColors.darkBackground1
                          : AppColors.lightButtonEnd,
                    ),
                    onPressed: () {
                      context
                          .read<ThemeBloc>()
                          .add(const ThemeEvent.toggleTheme());
                    },
                    label: Text(isDarkMode ? "Light" : "Dark"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Face Login", style: theme.textTheme.titleMedium),
                  Spacer(),
                  BlocBuilder<FaceLoginCubit, FaceLoginState>(
                    builder: (context, state) {
                      final cubit = context.read<FaceLoginCubit>();
                      if (!cubit.isInitialized) {
                        return const CircularProgressIndicator();
                      }

                      debugPrint(
                          'Settings Screen - Face Login State: ${state.isFaceLoginEnabled}');
                      return Switch(
                        value: state.isFaceLoginEnabled,
                        onChanged: (value) async {
                          await context
                              .read<FaceLoginCubit>()
                              .toggleFaceLogin(value);
                          debugPrint(
                              'Settings Screen - Face Login Toggled to: $value');
                        },
                        activeColor: theme.primaryColor,
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'fa':
        return 'فارسی';
      case 'ar':
        return 'العربية';
      case 'fr':
        return 'Français';
      default:
        return 'English';
    }
  }
}
