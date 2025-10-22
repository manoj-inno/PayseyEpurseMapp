import 'dart:developer';

import '../../../core/routing/routing.dart';
import '../../../core/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_bloc.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_event.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_state.dart';
import '../bloc/get_personal_details/get_personal_details_bloc.dart';
import '../bloc/get_personal_details/get_personal_details_event.dart';
import '../domain/get_personal_details/entities/category_entity.dart';
import '../domain/get_personal_details/entities/disability_entity.dart';
import '../domain/get_personal_details/entities/gender_entity.dart';
import '../domain/get_personal_details/entities/nationality_entity.dart';
import '../domain/get_personal_details/entities/qualification_entity.dart';
import '../domain/get_personal_details/entities/religion_entity.dart';

class PersonalDetailsScreen extends StatefulWidget {
  PersonalDetailsScreen({
    super.key,
    required this.customerTypeId,
    required this.refNum,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.documentId,
    required this.optionalDocId,
    required this.dob,
    required this.dateOfExpiry,
    required this.dateOfIssue,
  }) {
    debugPrint('=== PersonalDetailsScreen CONSTRUCTOR CALLED ===');
    debugPrint('=== PersonalDetailsScreen: refNum = $refNum ===');
    debugPrint(
        '=== PersonalDetailsScreen: customerTypeId = $customerTypeId ===');
    debugPrint('=== PersonalDetailsScreen: firstName = $firstName ===');
  }

  final int customerTypeId;
  final String refNum;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String documentId;
  final String? optionalDocId;
  final String dob;
  final String dateOfExpiry;
  final String dateOfIssue;

  @override
  State<PersonalDetailsScreen> createState() {
    debugPrint('=== PersonalDetailsScreen: createState called ===');
    return _PersonalDetailsScreenState();
  }
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  _PersonalDetailsScreenState() {
    debugPrint('=== _PersonalDetailsScreenState CONSTRUCTOR CALLED ===');
  }

  @override
  void initState() {
    super.initState();
    debugPrint('=== initState CALLED ===');
    // Load data only once when the screen is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('=== addPostFrameCallback EXECUTED ===');
      _checkAndLoadData(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('=== build METHOD CALLED ===');

    // Trigger nationality loading directly in build method as fallback
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint(
          '=== FALLBACK: Triggering nationality loading from build method ===');
      try {
        final additionalBloc = context.read<GetAdditionalPersonalDetailsBloc>();
        debugPrint(
            '=== FALLBACK: GetAdditionalPersonalDetailsBloc is available ===');
        
        // Check if bloc is closed before adding events
        if (!additionalBloc.isClosed) {
          additionalBloc
              .add(const GetAdditionalPersonalDetailsEvent.getNationality());
          debugPrint('=== FALLBACK: Nationality event added successfully ===');
        } else {
          debugPrint('=== FALLBACK ERROR: GetAdditionalPersonalDetailsBloc is closed ===');
        }
      } catch (e) {
        debugPrint(
            '=== FALLBACK ERROR: GetAdditionalPersonalDetailsBloc not available: $e ===');
      }
    });

    try {
      final localizations =
          AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
                loaded: (locale) => locale,
                orElse: () => const Locale('en'),
              ));
      debugPrint('=== build METHOD: AppLocalizations created successfully ===');
      final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
            loaded: (isDark) => isDark,
            orElse: () => false,
          );
      final theme = Theme.of(context);
      final formKey = GlobalKey<FormState>();

      String? validateRequired(dynamic value) {
        if (value == null || (value is String && value.isEmpty)) {
          return 'This field is required';
        }
        return null;
      }

      return MultiBlocListener(
        listeners: [
          BlocListener<GetPersonalDetailsBloc, GetPersonalDetailsState>(
            listener: (context, state) {
              log('==============================${state.toString()}=======================');
              if (state is PersonalDetailsServerDownError) {
                showDialog(
                  context: context,
                  builder: (context) =>
                      ServerDownDialog(message: state.message),
                );
              }
            },
          ),
          BlocListener<GetAdditionalPersonalDetailsBloc,
              GetAdditionalPersonalDetailsState>(
            listener: (context, state) {
              debugPrint(
                  '=== NATIONALITY BLOC STATE CHANGED: ${state.runtimeType} ===');
              state.when(
                initial: () => debugPrint('=== NATIONALITY STATE: Initial ==='),
                loading: () => debugPrint('=== NATIONALITY STATE: Loading ==='),
                success: (nationalities) => debugPrint(
                    '=== NATIONALITY STATE: Success with ${nationalities.length} nationalities ==='),
                failure: (message) =>
                    debugPrint('=== NATIONALITY STATE: Failure - $message ==='),
              );
            },
          ),
        ],
        child: Container(
          decoration: AppThemes.scaffoldBackgroundDecoration(
              isDark: isDarkMode, isPrimary: true),
          child: Scaffold(
            appBar: AppBar(),
            body: Form(
              key: formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(localizations.get("personal_details"),
                          style: theme.textTheme.displayMedium),
                      Text(localizations.get("personal_details_description"),
                          style: theme.textTheme.bodyLarge),
                      const SizedBox(height: 25),
                      BlocBuilder<GetPersonalDetailsBloc,
                          GetPersonalDetailsState>(
                        builder: (context, personalState) {
                          if (personalState is PersonalDetailsLoaded) {
                            return Column(
                              children: [
                                // Gender and Marital Status dropdowns row
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RequiredLabelText(
                                              text: localizations.get("gender"),
                                              isRequired: true),
                                          const SizedBox(height: 3),
                                          DropdownButtonFormField<GenderEntity>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              errorStyle: const TextStyle(
                                                  height: 0, fontSize: 0),
                                            ),
                                            initialValue:
                                                personalState.selectedGender,
                                            validator: validateRequired,
                                            items: personalState.genderList
                                                ?.map((gender) {
                                              return DropdownMenuItem<
                                                  GenderEntity>(
                                                value: gender,
                                                child: Text(
                                                  gender.genderName,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (gender) {
                                              if (gender != null) {
                                                try {
                                                  final personalBloc = context.read<GetPersonalDetailsBloc>();
                                                  if (!personalBloc.isClosed) {
                                                    personalBloc.add(GetPersonalDetailsEvent.selectGender(gender));
                                                  } else {
                                                    debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select gender ===');
                                                  }
                                                } catch (e) {
                                                  debugPrint('=== ERROR: Failed to select gender: $e ===');
                                                }
                                              }
                                            },
                                          ).asGradientBox(
                                            context,
                                            hasError:
                                                personalState.selectedGender ==
                                                    null,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RequiredLabelText(
                                              text: localizations
                                                  .get("marital_status"),
                                              isRequired: true),
                                          const SizedBox(height: 3),
                                          DropdownButtonFormField<String>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              errorStyle: const TextStyle(
                                                  height: 0, fontSize: 0),
                                              isDense: true,
                                            ),
                                            initialValue: personalState
                                                .selectedMaritalStatus,
                                            validator: validateRequired,
                                            items: const [
                                              'Single',
                                              'Married',
                                              'Divorced',
                                              'Widowed',
                                            ].map((status) {
                                              return DropdownMenuItem(
                                                value: status,
                                                child: Text(
                                                  status,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              if (value != null) {
                                                try {
                                                  final personalBloc = context.read<GetPersonalDetailsBloc>();
                                                  if (!personalBloc.isClosed) {
                                                    personalBloc.add(GetPersonalDetailsEvent.selectMaritalStatus(value));
                                                  } else {
                                                    debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select marital status ===');
                                                  }
                                                } catch (e) {
                                                  debugPrint('=== ERROR: Failed to select marital status: $e ===');
                                                }
                                              }
                                            },
                                          ).asGradientBox(
                                            context,
                                            hasError: personalState
                                                    .selectedMaritalStatus ==
                                                null,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),

                                // Religion and Category dropdowns row
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RequiredLabelText(
                                              text:
                                                  localizations.get("religion"),
                                              isRequired: true),
                                          const SizedBox(height: 3),
                                          DropdownButtonFormField<
                                              ReligionEntity>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              errorStyle: const TextStyle(
                                                  height: 0, fontSize: 0),
                                              isDense: true,
                                            ),
                                            initialValue:
                                                personalState.selectedReligion,
                                            validator: validateRequired,
                                            items:
                                                (personalState.religionList ??
                                                        [])
                                                    .map((religion) {
                                              return DropdownMenuItem<
                                                  ReligionEntity>(
                                                value: religion,
                                                child: Text(
                                                  religion.religionName,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              if (value != null) {
                                                try {
                                                  final personalBloc = context.read<GetPersonalDetailsBloc>();
                                                  if (!personalBloc.isClosed) {
                                                    personalBloc.add(GetPersonalDetailsEvent.selectReligion(value));
                                                  } else {
                                                    debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select religion ===');
                                                  }
                                                } catch (e) {
                                                  debugPrint('=== ERROR: Failed to select religion: $e ===');
                                                }
                                              }
                                            },
                                          ).asGradientBox(
                                            context,
                                            hasError: personalState
                                                    .selectedReligion ==
                                                null,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RequiredLabelText(
                                              text:
                                                  localizations.get("category"),
                                              isRequired: true),
                                          const SizedBox(height: 3),
                                          DropdownButtonFormField<
                                              CategoryEntity>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              errorStyle: const TextStyle(
                                                  height: 0, fontSize: 0),
                                              isDense: true,
                                            ),
                                            initialValue:
                                                personalState.selectedCategory,
                                            validator: validateRequired,
                                            items:
                                                (personalState.categoryList ??
                                                        [])
                                                    .map((category) {
                                              return DropdownMenuItem<
                                                  CategoryEntity>(
                                                value: category,
                                                child: Text(
                                                  category.categoryName,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              if (value != null) {
                                                try {
                                                  final personalBloc = context.read<GetPersonalDetailsBloc>();
                                                  if (!personalBloc.isClosed) {
                                                    personalBloc.add(GetPersonalDetailsEvent.selectCategory(value));
                                                  } else {
                                                    debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select category ===');
                                                  }
                                                } catch (e) {
                                                  debugPrint('=== ERROR: Failed to select category: $e ===');
                                                }
                                              }
                                            },
                                          ).asGradientBox(
                                            context,
                                            hasError: personalState
                                                    .selectedCategory ==
                                                null,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),

                                // Disability dropdown
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    RequiredLabelText(
                                        text: localizations.get("disability"),
                                        isRequired: true),
                                    const SizedBox(height: 3),
                                    DropdownButtonFormField<DisabilityEntity>(
                                      borderRadius: BorderRadius.circular(5),
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            height: 0, fontSize: 0),
                                        isDense: true,
                                      ),
                                      initialValue:
                                          personalState.selectedDisability,
                                      validator: validateRequired,
                                      items:
                                          (personalState.disabilityList ?? [])
                                              .map((disability) {
                                        return DropdownMenuItem<
                                            DisabilityEntity>(
                                          value: disability,
                                          child: Text(
                                            disability.disabilityName,
                                            style: theme.textTheme.labelMedium,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        if (value != null) {
                                          try {
                                            final personalBloc = context.read<GetPersonalDetailsBloc>();
                                            if (!personalBloc.isClosed) {
                                              personalBloc.add(GetPersonalDetailsEvent.selectDisability(value));
                                            } else {
                                              debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select disability ===');
                                            }
                                          } catch (e) {
                                            debugPrint('=== ERROR: Failed to select disability: $e ===');
                                          }
                                        }
                                      },
                                    ).asGradientBox(
                                      context,
                                      hasError:
                                          personalState.selectedDisability ==
                                              null,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),

                                // Qualification dropdown
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    RequiredLabelText(
                                        text:
                                            localizations.get("qualification"),
                                        isRequired: true),
                                    const SizedBox(height: 3),
                                    DropdownButtonFormField<
                                        QualificationEntity>(
                                      borderRadius: BorderRadius.circular(5),
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            height: 0, fontSize: 0),
                                        isDense: true,
                                      ),
                                      initialValue:
                                          personalState.selectedQualification,
                                      validator: validateRequired,
                                      items: (personalState.qualificationList ??
                                              [])
                                          .map((qualification) {
                                        return DropdownMenuItem<
                                            QualificationEntity>(
                                          value: qualification,
                                          child: Text(
                                            qualification.qualificationName,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        if (value != null) {
                                          try {
                                            final personalBloc = context.read<GetPersonalDetailsBloc>();
                                            if (!personalBloc.isClosed) {
                                              personalBloc.add(GetPersonalDetailsEvent.selectQualification(value));
                                            } else {
                                              debugPrint('=== ERROR: GetPersonalDetailsBloc is closed, cannot select qualification ===');
                                            }
                                          } catch (e) {
                                            debugPrint('=== ERROR: Failed to select qualification: $e ===');
                                          }
                                        }
                                      },
                                    ).asGradientBox(
                                      context,
                                      hasError:
                                          personalState.selectedQualification ==
                                              null,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),

                                // Nationality dropdown
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    RequiredLabelText(
                                        text: localizations.get('nationality'),
                                        isRequired: true),
                                    const SizedBox(height: 3),
                                    BlocBuilder<
                                        GetAdditionalPersonalDetailsBloc,
                                        GetAdditionalPersonalDetailsState>(
                                      builder: (context, nationalityState) {
                                        if (nationalityState
                                            is GetNationalitySuccess) {
                                          return DropdownButtonFormField<
                                              NationalityEntity>(
                                            isExpanded: true,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              errorStyle: const TextStyle(
                                                  height: 0, fontSize: 0),
                                              isDense: true,
                                            ),
                                            initialValue: nationalityState
                                                    .nationalities.isNotEmpty
                                                ? nationalityState
                                                    .nationalities.first
                                                : null,
                                            items: nationalityState
                                                .nationalities
                                                .map((nationality) =>
                                                    DropdownMenuItem<
                                                        NationalityEntity>(
                                                      value: nationality,
                                                      child: Text(
                                                        nationality.name,
                                                        style: theme.textTheme
                                                            .labelMedium,
                                                      ),
                                                    ))
                                                .toList(),
                                            onChanged: (value) {
                                              if (value != null &&
                                                  nationalityState.nationalities
                                                      .isNotEmpty) {
                                                try {
                                                  // Find the nationality with the selected id
                                                  final matchedNationalities =
                                                      nationalityState
                                                          .nationalities
                                                          .where((n) =>
                                                              n.id == value)
                                                          .toList();

                                                  final nationality =
                                                      matchedNationalities
                                                              .isNotEmpty
                                                          ? matchedNationalities
                                                              .first
                                                          : nationalityState
                                                              .nationalities
                                                              .first;

                                                  try {
                                                    final additionalBloc = context
                                                        .read<GetAdditionalPersonalDetailsBloc>();
                                                    if (!additionalBloc.isClosed) {
                                                      additionalBloc.add(GetAdditionalPersonalDetailsEvent
                                                          .selectNationality(nationality));
                                                    } else {
                                                      debugPrint('=== ERROR: GetAdditionalPersonalDetailsBloc is closed, cannot select nationality ===');
                                                    }
                                                  } catch (e) {
                                                    debugPrint('=== ERROR: Failed to select nationality: $e ===');
                                                  }
                                                } catch (e) {
                                                  // Handle error silently to prevent crash
                                                  debugPrint(
                                                      'Error selecting nationality: $e');
                                                }
                                              }
                                            },
                                          ).asGradientBox(context);
                                        }
                                        return const SizedBox.shrink();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: BlocBuilder<GetPersonalDetailsBloc,
                    GetPersonalDetailsState>(
                  builder: (context, personalState) {
                    final isDataLoaded = personalState is PersonalDetailsLoaded;

                    return BlocBuilder<GetAdditionalPersonalDetailsBloc,
                        GetAdditionalPersonalDetailsState>(
                      builder: (context, nationalityState) {
                        final hasNationality =
                            nationalityState is GetNationalitySuccess &&
                                nationalityState.nationalities.isNotEmpty;

                        return GradientButton(
                          onPressed: () {
                            if (formKey.currentState?.validate() ?? false) {
                              if (isDataLoaded && hasNationality) {
                                final personalDetails = personalState;
                                final nationalityDetails = nationalityState;

                                final selectedNationalityId =
                                    nationalityDetails.nationalities.first.id;

                                context.navigateTo(RouteConstants.incomeDetails,
                                    arguments: IncomeDetailsArguments(
                                        refNum: widget.refNum,
                                        customerTypeId: widget.customerTypeId,
                                        firstName: widget.firstName,
                                        middleName: widget.middleName ?? '',
                                        lastName: widget.lastName,
                                        nationality: selectedNationalityId,
                                        documentId: widget.documentId,
                                        optionalDocId:
                                            widget.optionalDocId ?? '',
                                        dob: widget.dob,
                                        dateOfExpiry: widget.dateOfExpiry,
                                        dateOfIssue: widget.dateOfIssue,
                                        religion: personalDetails
                                                .selectedReligion?.id ??
                                            0,
                                        category: personalDetails
                                                .selectedCategory?.id ??
                                            0,
                                        gender:
                                            personalDetails.selectedGender?.id ??
                                                0,
                                        maritalStatus: personalDetails
                                                .selectedMaritalStatus ??
                                            '',
                                        disability: personalDetails
                                                .selectedDisability?.id ??
                                            0,
                                        qualification: personalDetails
                                                .selectedQualification?.id ??
                                            0));
                              }
                            }
                          },
                          isDarkMode: isDarkMode,
                          child: Text(localizations.get("next")),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
    } catch (e) {
      debugPrint('=== build METHOD ERROR: $e ===');
      return Scaffold(
        body: Center(
          child: Text('Error building PersonalDetailsScreen: $e'),
        ),
      );
    }
  }

  void _checkAndLoadData(BuildContext context) {
    debugPrint('=== _checkAndLoadData METHOD CALLED ===');

    // Check if GetAdditionalPersonalDetailsBloc is available and not closed
    try {
      final additionalBloc = context.read<GetAdditionalPersonalDetailsBloc>();
      debugPrint(
          '=== GetAdditionalPersonalDetailsBloc is available: ${additionalBloc.runtimeType} ===');
      
      // Check if bloc is closed before adding events
      if (additionalBloc.isClosed) {
        debugPrint('=== ERROR: GetAdditionalPersonalDetailsBloc is closed ===');
        return;
      }
    } catch (e) {
      debugPrint(
          '=== ERROR: GetAdditionalPersonalDetailsBloc not available: $e ===');
      return;
    }

    // Check if data needs to be loaded and load it if necessary
    try {
      final personalBloc = context.read<GetPersonalDetailsBloc>();
      final personalState = personalBloc.state;

      if (personalState is! PersonalDetailsLoaded ||
          (personalState.genderList == null)) {
        debugPrint('=== LOADING PERSONAL DETAILS DATA ===');
        
        // Check if personal bloc is closed before adding events
        if (!personalBloc.isClosed) {
          personalBloc.add(GetPersonalDetailsEvent.fetchGenderList());
          personalBloc.add(GetPersonalDetailsEvent.fetchReligionList());
          personalBloc.add(GetPersonalDetailsEvent.fetchCategoryList());
          personalBloc.add(GetPersonalDetailsEvent.fetchDisabilityList());
          personalBloc.add(GetPersonalDetailsEvent.fetchQualificationList());
        } else {
          debugPrint('=== ERROR: GetPersonalDetailsBloc is closed ===');
        }
      }
    } catch (e) {
      debugPrint('=== ERROR: Failed to load personal details data: $e ===');
    }

    // Always try to fetch nationality data - the bloc will handle duplicates
    try {
      final additionalBloc = context.read<GetAdditionalPersonalDetailsBloc>();
      
      // Check if bloc is closed before adding events
      if (additionalBloc.isClosed) {
        debugPrint('=== ERROR: GetAdditionalPersonalDetailsBloc is closed, cannot add nationality event ===');
        return;
      }
      
      debugPrint('=== TRIGGERING NATIONALITY LOADING ===');
      debugPrint(
          '=== GetAdditionalPersonalDetailsBloc state before: ${additionalBloc.state} ===');
      
      additionalBloc.add(const GetAdditionalPersonalDetailsEvent.getNationality());
      
      debugPrint('=== NATIONALITY EVENT ADDED ===');
      debugPrint(
          '=== GetAdditionalPersonalDetailsBloc state after: ${additionalBloc.state} ===');
    } catch (e) {
      debugPrint('=== ERROR: Failed to add nationality event: $e ===');
    }
  }
}
