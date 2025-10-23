import 'package:epurse/core/routing/routing.dart';

import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/required_label_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../core/language/app_localizations.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_bloc.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_event.dart';
import '../bloc/get_additional_personal_details/get_additional_personal_details_state.dart';
import '../bloc/get_address_details/get_address_details_bloc.dart';
import '../bloc/get_address_details/get_address_details_event.dart';
import '../bloc/get_address_details/get_address_details_state.dart';
import '../domain/get_address_details/entities/address_proof_entity.dart';
import '../bloc/address_management/address_management_bloc.dart';

class FillAddressScreen extends StatefulWidget {
  FillAddressScreen(
      {super.key,
      required this.refNumber,
      required this.addressType,
      required this.addressTypeId,
      required this.customerTypeId});
  final String refNumber;
  final String addressType;
  final int addressTypeId;
  final int customerTypeId;
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController addressLine1Controller = TextEditingController();
  final TextEditingController addressLine2Controller = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  State<FillAddressScreen> createState() => _FillAddressScreenState();
}

class _FillAddressScreenState extends State<FillAddressScreen> {
  AddressProofEntity? selectedAddressProof;
  File? addressProofImage;
  final TextEditingController addressProofIdController =
      TextEditingController();
  String? selectedCountry;

  @override
  void initState() {
    super.initState();

    debugPrint('=== FillAddressScreen initState ===');
    debugPrint('Ref Number: ${widget.refNumber}');
    debugPrint('Address Type: ${widget.addressType}');

    // Load nationality data when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        try {
          // Load nationality data
          final nationalityBloc =
              context.read<GetAdditionalPersonalDetailsBloc>();
          if (!nationalityBloc.isClosed) {
            nationalityBloc
                .add(const GetAdditionalPersonalDetailsEvent.getNationality());
          }
        } catch (e) {
          debugPrint('Error loading nationality data: $e');
        }

        // Verify AddressManagementBloc is available
        try {
          final addressBloc = context.read<AddressManagementBloc>();
          debugPrint(
              'AddressManagementBloc is available: ${addressBloc.runtimeType}');
          debugPrint(
              'AddressManagementBloc is closed: ${addressBloc.isClosed}');
          debugPrint('AddressManagementBloc state: ${addressBloc.state}');

          // If the BLoC is closed, try to get a fresh instance from DI
          if (addressBloc.isClosed) {
            debugPrint(
                'AddressManagementBloc is closed, this might cause issues');
          }
        } catch (e) {
          debugPrint('AddressManagementBloc is not available: $e');
        }
      }
    });
  }

  @override
  void dispose() {
    addressProofIdController.dispose();
    super.dispose();
  }

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<GetAddressDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => di.sl<GetAdditionalPersonalDetailsBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetAddressDetailsBloc, GetAddressDetailsState>(
            listener: (context, state) {
              if (state is GetAddressDetailsServerDown) {
                showDialog(
                    context: context,
                    builder: (context) =>
                        ServerDownDialog(message: state.message));
              }
            },
          ),
          BlocListener<AddressManagementBloc, AddressManagementState>(
            listener: (context, state) {
              debugPrint('=== ADDRESS MANAGEMENT BLOC LISTENER ===');
              debugPrint('State: $state');
              debugPrint('State type: ${state.runtimeType}');

              if (state is AddressSaved) {
                debugPrint('Address saved successfully, navigating back');
                // After successful save/update, reload addresses and navigate back
                try {
                  final bloc = context.read<AddressManagementBloc>();
                  if (!bloc.isClosed) {
                    bloc.add(LoadAddresses(refNumber: widget.refNumber));
                  }
                } catch (e) {
                  debugPrint('Error adding LoadAddresses event: $e');
                }
                context.goBack(); // Navigate back after save/update
              } else if (state is AddressLoaded) {
                debugPrint('Address loaded, updating existing address');
                // Only include image if not a master type
                // final existingAddress = state.address;
                final bool isMasterType =
                    selectedAddressProof?.isMaster ?? false;

                try {
                  final bloc = context.read<AddressManagementBloc>();
                  if (!bloc.isClosed) {
                    bloc.add(UpdateAddressData(
                      refNumber: widget.refNumber,
                      addressType: widget.addressType,
                      addressProof: selectedAddressProof?.docType ?? '',
                      addressProofId: selectedAddressProof?.id ?? 0,
                      addressProofIdNumber: addressProofIdController.text == ''
                          ? "1238764"
                          : addressProofIdController.text,
                      // Only include image if not a master type
                      addressProofImage:
                          isMasterType ? null : addressProofImage,
                      buildingName: widget.buildingNameController.text,
                      addressLine1: widget.addressLine1Controller.text,
                      addressLine2: widget.addressLine2Controller.text,
                      city: widget.cityController.text,
                      state: widget.stateController.text,
                      postalCode: widget.postalCodeController.text,
                      country: widget.countryController.text,
                      addressTypeId: widget.addressTypeId,
                      // Add this parameter to explicitly clear the image path for master type
                      clearImagePath: isMasterType,
                    ));
                  }
                } catch (e) {
                  debugPrint('Error adding UpdateAddressData event: $e');
                }
              } else if (state is AddressError &&
                  state.message.contains('not found')) {
                debugPrint('Address not found, creating new address');
                // Similar change for SaveAddressData
                final bool isMasterType =
                    selectedAddressProof?.isMaster ?? false;

                try {
                  final bloc = context.read<AddressManagementBloc>();
                  if (!bloc.isClosed) {
                    bloc.add(SaveAddressData(
                      refNumber: widget.refNumber,
                      addressType: widget.addressType,
                      addressTypeId: widget.addressTypeId,
                      addressProofId: selectedAddressProof?.id ?? 0,
                      addressProof: selectedAddressProof?.docType ?? '',
                      addressProofIdNumber: addressProofIdController.text == ''
                          ? " "
                          : addressProofIdController.text,
                      // Only include image if not a master type
                      addressProofImage:
                          isMasterType ? null : addressProofImage,
                      buildingName: widget.buildingNameController.text,
                      addressLine1: widget.addressLine1Controller.text,
                      addressLine2: widget.addressLine2Controller.text,
                      city: widget.cityController.text,
                      state: widget.stateController.text,
                      postalCode: widget.postalCodeController.text,
                      country: widget.countryController.text,
                      // Add this parameter to explicitly clear the image path for master type
                      clearImagePath: isMasterType,
                    ));
                  }
                } catch (e) {
                  debugPrint('Error adding SaveAddressData event: $e');
                }
              }
            },
          ),
        ],
        child: Container(
          decoration: AppThemes.scaffoldBackgroundDecoration(
              isDark: isDarkMode, isPrimary: true),
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RefreshIndicator(
                onRefresh: () async {
                  try {
                    final bloc = context.read<AddressManagementBloc>();
                    if (!bloc.isClosed) {
                      bloc.add(LoadAddressByType(
                        refNumber: widget.refNumber,
                        addressType: widget.addressType,
                      ));
                    }
                  } catch (e) {
                    debugPrint('Error adding LoadAddressByType event: $e');
                  }
                },
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 15),
                    Text(
                      localizations.get('fill_the_address_details'),
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      localizations.get(
                          'please_fill_all_the_required_fields_for_the_address_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(widget.addressType, style: theme.textTheme.labelLarge),
                    SizedBox(
                      height: 15,
                    ),
                    RequiredLabelText(
                        text: localizations.get('address_proof'),
                        isRequired: true),
                    SizedBox(
                      height: 3,
                    ),
                    BlocBuilder<GetAddressDetailsBloc, GetAddressDetailsState>(
                      builder: (context, state) {
                        debugPrint("=== BLOC BUILDER CALLED ===");
                        debugPrint("Address Proof State: $state");
                        debugPrint("State type: ${state.runtimeType}");

                        // Handle initial state - trigger the event
                        if (state is GetAddressDetailsInitial) {
                          debugPrint(
                              "Initial state detected, triggering getAddressProofs event");
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            try {
                              final bloc =
                                  context.read<GetAddressDetailsBloc>();
                              if (!bloc.isClosed) {
                                bloc.add(
                                    GetAddressDetailsEvent.getAddressProofs(
                                        entityType: widget.customerTypeId));
                              }
                            } catch (e) {
                              debugPrint(
                                  'Error adding getAddressProofs event: $e');
                            }
                          });
                          return TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: 'Loading address proofs...',
                            ),
                          ).asGradientBox(context);
                        }

                        if (state is GetAddressProofsLoaded) {
                          debugPrint(
                              "Address Proofs Count: ${state.addressProofs.length}");
                          debugPrint(
                              "Address Proofs: ${state.addressProofs.map((e) => e.docType).toList()}");

                          // If no address proofs, show a message
                          if (state.addressProofs.isEmpty) {
                            debugPrint("No address proofs available");
                            return TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: 'No address proofs available',
                              ),
                            ).asGradientBox(context);
                          }

                          debugPrint(
                              "Rendering dropdown with ${state.addressProofs.length} items");
                          return DropdownButtonFormField<AddressProofEntity>(
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(5),
                            style: theme.textTheme.labelMedium,
                            hint: Text(
                              'Select address proof',
                              style: theme.textTheme.labelMedium,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                            ),
                            initialValue: selectedAddressProof,
                            menuMaxHeight:
                                MediaQuery.of(context).size.height * 0.3,
                            items: state.addressProofs.map((e) {
                              debugPrint(
                                  "Creating dropdown item: ${e.docType} (entityType: ${e.entityType}, isMaster: ${e.isMaster})");
                              return DropdownMenuItem<AddressProofEntity>(
                                  value: e, child: Text(e.docType));
                            }).toList(),
                            onChanged: (value) {
                              debugPrint(
                                  "Address proof selected: ${value?.docType}");
                              setState(() => selectedAddressProof = value);
                            },
                          ).asGradientBox(context);
                        } else if (state is GetAddressProofsLoading) {
                          debugPrint("Address Proof State: Loading");
                          return TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: 'Loading address proofs...',
                            ),
                          ).asGradientBox(context);
                        } else if (state is GetAddressProofsError) {
                          debugPrint(
                              "Address Proof State: Error - ${state.failure}");
                          return TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: 'Error loading address proofs',
                            ),
                          ).asGradientBox(context);
                        } else {
                          debugPrint("Address Proof State: Unknown - $state");
                          // Fallback: Show a simple dropdown with hardcoded options for testing
                          return DropdownButtonFormField<String>(
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(5),
                            style: theme.textTheme.labelMedium,
                            hint: Text(
                              'Select address proof (Fallback)',
                              style: theme.textTheme.labelMedium,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                            ),
                            items: [
                              DropdownMenuItem<String>(
                                  value: 'VOTER ID', child: Text('VOTER ID')),
                              DropdownMenuItem<String>(
                                  value: 'SAME AS EKYC DOC',
                                  child: Text('SAME AS EKYC DOC')),
                            ],
                            onChanged: (value) {
                              debugPrint("Fallback dropdown selected: $value");
                            },
                          ).asGradientBox(context);
                        }
                      },
                    ),
                    if (selectedAddressProof != null &&
                        selectedAddressProof?.isMaster == false) ...[
                      SizedBox(
                        height: 15,
                      ),
                      RequiredLabelText(
                          text: localizations.get('address_id_proof_number'),
                          isRequired: true),
                      SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: addressProofIdController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ).asGradientBox(context),
                      SizedBox(
                        height: 15,
                      ),
                      RequiredLabelText(
                          text: localizations.get('address_proof_id'),
                          isRequired: true),
                      SizedBox(
                        height: 3,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: isDarkMode
                                ? AppColors.darkSecondary
                                : AppColors.lightSecondary,
                            context: context,
                            builder: (context) => Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.camera_alt),
                                    title:
                                        Text(localizations.get('take_photo')),
                                    onTap: () {
                                      context.goBack();
                                      _pickImage(ImageSource.camera);
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.photo_library),
                                    title: Text(localizations
                                        .get('choose_from_gallery')),
                                    onTap: () {
                                      context.goBack();
                                      _pickImage(ImageSource.gallery);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          child: SizedBox(
                            width: double.infinity,
                            height: size.width * 0.5,
                            child: addressProofImage != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Stack(
                                      children: [
                                        Image.file(
                                          addressProofImage!,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: double.infinity,
                                        ),
                                        Positioned(
                                          top: 8,
                                          right: 8,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                addressProofImage = null;
                                              });
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withValues(alpha: 0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.camera_alt_outlined,
                                              size: 30),
                                          SizedBox(
                                            height: 25,
                                            child: VerticalDivider(
                                              thickness: 0.5,
                                              color: isDarkMode
                                                  ? AppColors.darkTextPrimary
                                                  : AppColors.lightTextPrimary,
                                            ),
                                          ),
                                          Icon(Icons.photo_library_outlined,
                                              size: 30)
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        localizations
                                            .get('upload_address_proof_id'),
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                          ).asGradientBox(context),
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 15,
                    ),
                    RequiredLabelText(
                        text: "Building Name/House No.", isRequired: true),
                    SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: widget.buildingNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ).asGradientBox(context),
                    SizedBox(
                      height: 15,
                    ),
                    RequiredLabelText(text: "Address Line 1", isRequired: true),
                    SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: widget.addressLine1Controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ).asGradientBox(context),
                    SizedBox(
                      height: 15,
                    ),
                    RequiredLabelText(
                        text: "Address Line 2", isRequired: false),
                    SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: widget.addressLine2Controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ).asGradientBox(context),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              RequiredLabelText(text: "City", isRequired: true),
                              SizedBox(
                                height: 3,
                              ),
                              TextFormField(
                                controller: widget.cityController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ).asGradientBox(context),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              RequiredLabelText(
                                  text: "State", isRequired: true),
                              SizedBox(
                                height: 3,
                              ),
                              TextFormField(
                                controller: widget.stateController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ).asGradientBox(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              RequiredLabelText(
                                  text: "Postal Code", isRequired: true),
                              SizedBox(
                                height: 3,
                              ),
                              TextFormField(
                                controller: widget.postalCodeController,
                                maxLength: 6,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ).asGradientBox(context),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 9,
                          child: Column(
                            children: [
                              RequiredLabelText(
                                  text: "Country", isRequired: true),
                              SizedBox(
                                height: 3,
                              ),
                              BlocBuilder<GetAdditionalPersonalDetailsBloc,
                                  GetAdditionalPersonalDetailsState>(
                                builder: (context, state) {
                                  debugPrint(
                                      '=== COUNTRY DROPDOWN BLOC BUILDER ===');
                                  debugPrint('Country BLoC State: $state');
                                  debugPrint(
                                      'State type: ${state.runtimeType}');

                                  return state.when(
                                    initial: () {
                                      debugPrint(
                                          'Country state: initial - showing fallback dropdown');
                                      return DropdownButtonFormField<String>(
                                        isExpanded: true,
                                        borderRadius: BorderRadius.circular(5),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                          hintText: 'Loading countries...',
                                        ),
                                        items: const [
                                          DropdownMenuItem<String>(
                                              value: 'India',
                                              child: Text('India')),
                                          DropdownMenuItem<String>(
                                              value: 'United States',
                                              child: Text('United States')),
                                        ],
                                        onChanged: (value) {
                                          if (mounted) {
                                            setState(() {
                                              selectedCountry = value;
                                              widget.countryController.text =
                                                  value ?? '';
                                            });
                                          }
                                        },
                                      ).asGradientBox(context);
                                    },
                                    loading: () {
                                      debugPrint(
                                          'Country state: loading - showing fallback dropdown');
                                      return DropdownButtonFormField<String>(
                                        isExpanded: true,
                                        borderRadius: BorderRadius.circular(5),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                          hintText: 'Loading countries...',
                                        ),
                                        items: const [
                                          DropdownMenuItem<String>(
                                              value: 'India',
                                              child: Text('India')),
                                          DropdownMenuItem<String>(
                                              value: 'United States',
                                              child: Text('United States')),
                                        ],
                                        onChanged: (value) {
                                          if (mounted) {
                                            setState(() {
                                              selectedCountry = value;
                                              widget.countryController.text =
                                                  value ?? '';
                                            });
                                          }
                                        },
                                      ).asGradientBox(context);
                                    },
                                    success: (nationalities) {
                                      debugPrint(
                                          'Country state: success - ${nationalities.length} nationalities loaded');
                                      return DropdownButtonFormField<String>(
                                        isExpanded: true,
                                        borderRadius: BorderRadius.circular(5),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                        ),
                                        items: nationalities
                                            .map((nationality) =>
                                                DropdownMenuItem<String>(
                                                  value: nationality.name,
                                                  child: Text(nationality.name,
                                                      style: theme.textTheme
                                                          .labelMedium),
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                          // Add safety check before updating state
                                          if (mounted) {
                                            setState(() {
                                              selectedCountry = value;
                                              widget.countryController.text =
                                                  value ?? '';
                                            });
                                          }
                                        },
                                      ).asGradientBox(context);
                                    },
                                    failure: (message) {
                                      debugPrint(
                                          'Country state: failure - $message - showing fallback dropdown');
                                      return DropdownButtonFormField<String>(
                                        isExpanded: true,
                                        borderRadius: BorderRadius.circular(5),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                          hintText: 'Error loading countries',
                                        ),
                                        items: const [
                                          DropdownMenuItem<String>(
                                              value: 'India',
                                              child: Text('India')),
                                          DropdownMenuItem<String>(
                                              value: 'United States',
                                              child: Text('United States')),
                                        ],
                                        onChanged: (value) {
                                          if (mounted) {
                                            setState(() {
                                              selectedCountry = value;
                                              widget.countryController.text =
                                                  value ?? '';
                                            });
                                          }
                                        },
                                      ).asGradientBox(context);
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: GradientButton(
                    onPressed: () {
                      debugPrint('=== SAVE BUTTON PRESSED ===');
                      debugPrint('Button pressed at: ${DateTime.now()}');

                      if (validateFields()) {
                        debugPrint('Validation passed, calling _saveAddress()');
                        _saveAddress();
                      } else {
                        debugPrint(
                            'Validation failed, not calling _saveAddress()');
                      }
                    },
                    isDarkMode: isDarkMode,
                    child: Text(localizations.get('save'))),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool validateFields() {
    bool isValid = true;
    String errorMessage = '';

    // Validate Address Proof selection
    if (selectedAddressProof == null) {
      isValid = false;
      errorMessage = 'Please select an address proof';
    }
    if (selectedAddressProof != null &&
        selectedAddressProof!.isMaster == false) {
      if (addressProofIdController.text.trim().isEmpty) {
        isValid = false;
        errorMessage = 'Please enter address proof ID';
      }
      if (addressProofImage == null) {
        isValid = false;
        errorMessage = 'Please upload address proof image';
      }
    }

    // Validate Building Name/House No.
    if (widget.buildingNameController.text.trim().isEmpty) {
      isValid = false;
      errorMessage = 'Please enter building name/house number';
    }

    // Validate Address Line 1
    if (widget.addressLine1Controller.text.trim().isEmpty) {
      isValid = false;
      errorMessage = 'Please enter address line 1';
    }

    // Validate City
    if (widget.cityController.text.trim().isEmpty) {
      isValid = false;
      errorMessage = 'Please enter city';
    }

    // Validate State
    if (widget.stateController.text.trim().isEmpty) {
      isValid = false;
      errorMessage = 'Please enter state';
    }

    // Validate Postal Code
    final postalCode = widget.postalCodeController.text.trim();
    if (postalCode.isEmpty) {
      isValid = false;
      errorMessage = 'Please enter postal code';
    } else if (postalCode.length != 6 ||
        !RegExp(r'^[0-9]+$').hasMatch(postalCode)) {
      isValid = false;
      errorMessage = 'Please enter a valid 6-digit postal code';
    }

    // Validate Country
    if (selectedCountry == null ||
        widget.countryController.text.trim().isEmpty) {
      isValid = false;
      errorMessage = 'Please select country';
    }

    // Show error message if validation fails
    if (!isValid) {
      showErrorSnackBar(context, errorMessage);
    }

    return isValid;
  }

  void _saveAddress() {
    debugPrint('=== SAVE ADDRESS BUTTON PRESSED ===');
    debugPrint('Ref Number: ${widget.refNumber}');
    debugPrint('Address Type: ${widget.addressType}');
    debugPrint('Selected Address Proof: ${selectedAddressProof?.docType}');
    debugPrint('Is Master Type: ${selectedAddressProof?.isMaster}');
    debugPrint('Widget mounted: $mounted');

    // Check if widget is still mounted
    if (!mounted) {
      debugPrint('Widget is not mounted, cannot save address');
      return;
    }

    try {
      // Try to access the AddressManagementBloc (provided at app level)
      final bloc = context.read<AddressManagementBloc>();
      debugPrint(
          'AddressManagementBloc accessed successfully: ${bloc.runtimeType}');
      debugPrint('BLoC is closed: ${bloc.isClosed}');
      debugPrint('BLoC state: ${bloc.state}');

      if (!bloc.isClosed) {
        debugPrint('BLoC is not closed, adding LoadAddressByType event');

        // Check if address already exists by trying to load it first
        bloc.add(LoadAddressByType(
          refNumber: widget.refNumber,
          addressType: widget.addressType,
        ));

        debugPrint('LoadAddressByType event added successfully');
        // The BlocListener will handle the response and call appropriate save/update
      } else {
        debugPrint('BLoC is closed, cannot add events');
        showErrorSnackBar(context,
            'Address management service is not available. Please restart the app.');
      }
    } catch (e) {
      debugPrint('Error accessing AddressManagementBloc: $e');
      debugPrint('Error type: ${e.runtimeType}');

      // Show user-friendly error message
      if (mounted) {
        showErrorSnackBar(context, 'Unable to save address. Please try again.');
      }
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: source);

      if (image != null && mounted) {
        // Create a temporary file with unique name based on address type AND current timestamp
        final tempDir = Directory.systemTemp;
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final tempFile = File(
            '${tempDir.path}/address_proof_${widget.addressType}_$timestamp.jpg');

        // Copy the image to the temporary file
        await image.saveTo(tempFile.path);

        setState(() {
          addressProofImage = tempFile;
        });
      }
    } catch (e) {
      if (mounted) {
        showErrorSnackBar(context, 'Failed to pick image: $e');
      }
    }
  }
}
