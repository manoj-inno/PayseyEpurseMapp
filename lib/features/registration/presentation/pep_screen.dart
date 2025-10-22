import '../../../core/routing/routing.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../features/registration/domain/get_pep_details/entities/pep_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_bloc.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_event.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_state.dart';
import '../bloc/get_pep_details/get_pep_details_bloc.dart';
import '../bloc/get_pep_details/get_pep_details_event.dart';
import '../bloc/get_pep_details/get_pep_details_state.dart';
import '../bloc/register5_pep/register_pep_bloc.dart';
import '../data/register5_pep/models/register_pep_model.dart';
import '../domain/get_pep_details/entities/relation_entity.dart';
import '../domain/get_pep_details/entities/pep_type_entity.dart';
import '../domain/get_personal_details/entities/nationality_entity.dart';

class PepScreen extends StatefulWidget {
  const PepScreen({super.key, required this.refNumber});
  final String refNumber;

  @override
  State<PepScreen> createState() => _PepScreenState();
}

class _PepScreenState extends State<PepScreen> {
  PepEntity? pepOption;
  PepTypeEntity? selectedPepType;
  
  // Dynamic field controllers and values
  final Map<String, TextEditingController> _textControllers = {};
  final Map<String, dynamic> _fieldValues = {};
  
  // Legacy controllers for backward compatibility
  final _positionController = TextEditingController();
  final _pepNameController = TextEditingController();
  RelationshipEntity? selectedRelation;
  int? selectedNationality;

  @override
  void dispose() {
    _positionController.dispose();
    _pepNameController.dispose();
    // Dispose dynamic controllers
    for (var controller in _textControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget _buildDynamicDropdown(RequiredFieldEntity field, GetPepDetailsLoaded state, ThemeData theme) {
    // Determine dropdown type based on field name patterns (dynamic)
    if (field.fieldName.toLowerCase().contains('relationship')) {
      return DropdownButtonFormField<RelationshipEntity>(
        borderRadius: BorderRadius.circular(5),
        style: theme.textTheme.labelMedium,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        isDense: true,
        items: state.relationships
            .map((relation) => DropdownMenuItem<RelationshipEntity>(
                value: relation,
                child: Text(relation.relationshipName)))
            .toList(),
        onChanged: (value) {
          setState(() {
            _fieldValues[field.fieldName] = value;
            selectedRelation = value; // Keep for backward compatibility
          });
        },
      ).asGradientBox(context);
    } else if (field.fieldName.toLowerCase().contains('nationality')) {
      debugPrint('=== BUILDING NATIONALITY DROPDOWN ===');
      return BlocBuilder<GetAdditionalPersonalDetailsBloc, GetAdditionalPersonalDetailsState>(
        builder: (context, state) {
          debugPrint('Nationality BLoC State: $state');
          return state.when(
            initial: () {
              debugPrint('Nationality state: initial - showing fallback dropdown');
              return DropdownButtonFormField<String>(
                isExpanded: true,
                borderRadius: BorderRadius.circular(5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Loading nationalities...',
                ),
                items: const [
                  DropdownMenuItem<String>(value: 'Indian', child: Text('Indian')),
                  DropdownMenuItem<String>(value: 'American', child: Text('American')),
                  DropdownMenuItem<String>(value: 'British', child: Text('British')),
                ],
                onChanged: (value) {
                  setState(() {
                    _fieldValues[field.fieldName] = value;
                    selectedNationality = 1; // Fallback ID
                  });
                },
              ).asGradientBox(context);
            },
            loading: () {
              debugPrint('Nationality state: loading - showing fallback dropdown');
              return DropdownButtonFormField<String>(
                isExpanded: true,
                borderRadius: BorderRadius.circular(5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Loading nationalities...',
                ),
                items: const [
                  DropdownMenuItem<String>(value: 'Indian', child: Text('Indian')),
                  DropdownMenuItem<String>(value: 'American', child: Text('American')),
                  DropdownMenuItem<String>(value: 'British', child: Text('British')),
                ],
                onChanged: (value) {
                  setState(() {
                    _fieldValues[field.fieldName] = value;
                    selectedNationality = 1; // Fallback ID
                  });
                },
              ).asGradientBox(context);
            },
            success: (nationalities) {
              debugPrint('Nationality state: success - ${nationalities.length} nationalities loaded');
              return DropdownButtonFormField<NationalityEntity>(
                isExpanded: true,
                borderRadius: BorderRadius.circular(5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                items: nationalities
                    .map((nationality) => DropdownMenuItem<NationalityEntity>(
                        value: nationality,
                        child: Text(
                          nationality.name,
                          style: theme.textTheme.labelMedium,
                        )))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _fieldValues[field.fieldName] = value?.id;
                    selectedNationality = value?.id; // Keep for backward compatibility
                  });
                },
              ).asGradientBox(context);
            },
            failure: (message) {
              debugPrint('Nationality state: failure - $message - showing fallback dropdown');
              return DropdownButtonFormField<String>(
                isExpanded: true,
                borderRadius: BorderRadius.circular(5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Error loading nationalities',
                ),
                items: const [
                  DropdownMenuItem<String>(value: 'Indian', child: Text('Indian')),
                  DropdownMenuItem<String>(value: 'American', child: Text('American')),
                  DropdownMenuItem<String>(value: 'British', child: Text('British')),
                ],
                onChanged: (value) {
                  setState(() {
                    _fieldValues[field.fieldName] = value;
                    selectedNationality = 1; // Fallback ID
                  });
                },
              ).asGradientBox(context);
            },
          );
        },
      );
    } else {
      // Generic dropdown for any other field type
      return DropdownButtonFormField<String>(
        borderRadius: BorderRadius.circular(5),
        style: theme.textTheme.labelMedium,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        isDense: true,
        hint: Text('Select ${field.fieldName}'),
        items: const [
          DropdownMenuItem<String>(value: 'option1', child: Text('Option 1')),
          DropdownMenuItem<String>(value: 'option2', child: Text('Option 2')),
        ],
        onChanged: (value) {
          setState(() {
            _fieldValues[field.fieldName] = value;
          });
        },
      ).asGradientBox(context);
    }
  }

  void _validateAndContinue() {
    String? errorMessage;
    final localizations =
        AppLocalizations(context.read<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    
    if (pepOption == null) {
      errorMessage = localizations.get('please_select_a_pep_type');
    } else if (selectedPepType == null) {
      errorMessage = 'Please select a valid PEP type';
    } else {
      // Validate dynamic fields based on required_fields
      for (var field in selectedPepType!.requiredFields) {
        if (field.fieldType == 'TextField') {
          final controller = _textControllers[field.fieldName];
          if (controller == null || controller.text.trim().isEmpty) {
            errorMessage = 'Please enter ${field.fieldName}';
            break;
          }
        } else if (field.fieldType == 'Dropdown') {
          final value = _fieldValues[field.fieldName];
          if (value == null) {
            errorMessage = 'Please select ${field.fieldName}';
            break;
          }
        }
      }
    }

    if (errorMessage != null) {
      showErrorSnackBar(context, errorMessage);
    } else {
      // Create dynamic fields map using exact field names from API response
      final Map<String, dynamic> dynamicFields = {};
      
      debugPrint('=== EXTRACTING FIELD VALUES ===');
      debugPrint('Selected PEP Option ID: ${pepOption!.id}');
      debugPrint('Selected PEP Type: ${selectedPepType!.pepTypeName}');
      
      for (var field in selectedPepType!.requiredFields) {
        debugPrint('Processing field: ${field.fieldName} (${field.fieldType})');
        
        if (field.fieldType == 'TextField') {
          final controller = _textControllers[field.fieldName];
          if (controller != null) {
            final fieldValue = controller.text.trim();
            debugPrint('${field.fieldName}: $fieldValue');
            
            // Use exact field name from API response
            dynamicFields[field.fieldName] = fieldValue;
          }
        } else if (field.fieldType == 'Dropdown') {
          final value = _fieldValues[field.fieldName];
          if (value != null) {
            debugPrint('${field.fieldName}: $value');
            
            // Handle different dropdown types and use exact field name
            if (field.fieldName.toLowerCase().contains('relationship')) {
              dynamicFields[field.fieldName] = (value as RelationshipEntity).id;
            } else if (field.fieldName.toLowerCase().contains('nationality')) {
              dynamicFields[field.fieldName] = value as int;
            } else {
              dynamicFields[field.fieldName] = value;
            }
          }
        }
      }
      
      debugPrint('=== FINAL API REQUEST ===');
      debugPrint('user_ref: ${widget.refNumber}');
      debugPrint('pep_id: ${pepOption!.id}');
      debugPrint('dynamicFields: $dynamicFields');
      
      context.read<RegisterPepBloc>().add(RegisterPepEvent.submit(
              requestModel: RegisterPepRequestModel(
            userRef: widget.refNumber,
            pepType: pepOption!.id, // Use PEP option ID from pep_array
            dynamicFields: dynamicFields, // Use exact field names from API response
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
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
    return BlocListener<RegisterPepBloc, RegisterPepState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (registerPep) {
            debugPrint(registerPep.toString());
            context.navigateTo(RouteConstants.setPasscode,
                arguments: PasscodeArguments(refNumber: widget.refNumber));
          },
          error: (message) {
            showErrorSnackBar(context, message);
          },
          orElse: () {},
        );
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.sl<GetPepDetailsBloc>()
              ..add(GetPepDetailsEvent.getPepOptions())
              ..add(GetPepDetailsEvent.getRelationships())
              ..add(GetPepDetailsEvent.getPepTypes()),
          ),
          BlocProvider(
            create: (context) {
              final bloc = di.sl<GetAdditionalPersonalDetailsBloc>();
              // Add event safely after a frame to ensure BLoC is ready
              WidgetsBinding.instance.addPostFrameCallback((_) {
                try {
                  if (!bloc.isClosed) {
                    bloc.add(const GetAdditionalPersonalDetailsEvent.getNationality());
                  }
                } catch (e) {
                  debugPrint('Error adding getNationality event: $e');
                }
              });
              return bloc;
            },
          ),
        ],
        child: Container(
          decoration: AppThemes.scaffoldBackgroundDecoration(
              isDark: isDarkMode, isPrimary: true),
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text(localizations.get('policy_of_exposed_person'),
                      style: theme.textTheme.displayMedium),
                  Text(
                      localizations
                          .get('are_you_a_person_who_is_exposed_politics'),
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 30),
                  RequiredLabelText(
                      text: localizations.get('pep_type'), isRequired: true),
                  SizedBox(height: 3),
                  BlocBuilder<GetPepDetailsBloc, GetPepDetailsState>(
                    builder: (context, state) {
                      if (state is GetPepDetailsLoaded) {
                        return Column(
                          children: [
                            DropdownButtonFormField<PepEntity>(
                              borderRadius: BorderRadius.circular(5),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: theme.textTheme.labelMedium,
                              isDense: true,
                              items: state.pepOptions
                                  .map((option) => DropdownMenuItem<PepEntity>(
                                      value: option,
                                      child: Text(option.pepOptionName)))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  pepOption = value;
                                  // Find matching PEP type and clear previous field values
                                  if (value != null) {
                                    // Map pep_type from PEP option to type_name in PEP types
                                    debugPrint('=== PEP OPTION SELECTED ===');
                                    debugPrint('PEP Option ID: ${value.id}');
                                    debugPrint('PEP Option Type: ${value.pepType}');
                                    debugPrint('Available PEP Types: ${state.pepTypes.map((t) => t.pepTypeName).toList()}');
                                    
                                    final matchingPepType = state.pepTypes.firstWhere(
                                      (type) => type.pepTypeName == value.pepType,
                                      orElse: () => PepTypeEntity(
                                        pepTypeId: 0,
                                        pepTypeName: '',
                                        status: 0,
                                        requiredFields: [],
                                      ),
                                    );
                                    
                                    debugPrint('Matched PEP Type: ${matchingPepType.pepTypeName}');
                                    debugPrint('Required Fields: ${matchingPepType.requiredFields.map((f) => '${f.fieldName} (${f.fieldType})').toList()}');
                                    
                                    selectedPepType = matchingPepType;
                                    
                                    // Clear previous field values
                                    _fieldValues.clear();
                                    for (var controller in _textControllers.values) {
                                      controller.dispose();
                                    }
                                    _textControllers.clear();
                                    
                                    // Create new controllers for required fields
                                    for (var field in matchingPepType.requiredFields) {
                                      if (field.fieldType == 'TextField') {
                                        _textControllers[field.fieldName] = TextEditingController();
                                      }
                                    }
                                  } else {
                                    selectedPepType = null;
                                  }
                                });
                              },
                            ).asGradientBox(context),
                            if (pepOption != null && selectedPepType != null) ...[
                              ...selectedPepType!.requiredFields.map((field) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15),
                                    RequiredLabelText(
                                      text: field.fieldName,
                                      isRequired: true,
                                    ),
                                    SizedBox(height: 3),
                                    if (field.fieldType == 'TextField')
                                      TextFormField(
                                        controller: _textControllers[field.fieldName],
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ).asGradientBox(context),
                                    if (field.fieldType == 'Dropdown')
                                      _buildDynamicDropdown(field, state, theme)
                                  ],
                                );
                              }).toList(),
                            ],
                          ],
                        );
                      }
                      return TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        readOnly: true,
                      ).asGradientBox(context);
                    },
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: GradientButton(
                  onPressed: _validateAndContinue,
                  isDarkMode: isDarkMode,
                  child: BlocBuilder<RegisterPepBloc, RegisterPepState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () {
                          return SizedBox(
                            width: 30,
                            height: 30,
                            child: const CircularProgressIndicator(),
                          );
                        },
                        orElse: () {
                          return Text(localizations.get('continue'));
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
