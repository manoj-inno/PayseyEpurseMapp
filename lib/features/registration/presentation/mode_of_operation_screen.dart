import 'package:epurse/core/routing/routing.dart';
import 'package:epurse/core/widgets/error_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/get_business_details/get_business_details_bloc.dart';
import '../bloc/get_business_details/get_business_details_event.dart';
import '../bloc/get_business_details/get_business_details_state.dart';
import '../bloc/register8_mode_of_op/register_mode_of_op_bloc.dart';
import '../data/register8_mode_of_op/register_mode_of_op_model.dart';
import '../domain/get_business_details/entities/mode_of_operation_entity.dart';

class ModeOfOperationScreen extends StatefulWidget {
  const ModeOfOperationScreen({super.key, required this.refNumber});
  final String refNumber;

  @override
  State<ModeOfOperationScreen> createState() => _ModeOfOperationScreenState();
}

class _ModeOfOperationScreenState extends State<ModeOfOperationScreen> {
  final _formKey = GlobalKey<FormState>();
  int numberOfPartners = 1;
  ModeOfOperationEntity? selectedMode;
  final TextEditingController designationController = TextEditingController();
  final TextEditingController stakeController = TextEditingController();

  @override
  void dispose() {
    designationController.dispose();
    stakeController.dispose();
    super.dispose();
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

    return BlocProvider(
      create: (context) => di.sl<GetBusinessDetailsBloc>()
        ..add(GetBusinessDetailsEvent.fetchModeOfOperations()),
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: BlocListener<RegisterModeOfOpBloc, RegisterModeOfOpState>(
          listener: (context, state) {
            if (state is RegisterModeOfOpSuccess) {
              context.navigateTo(RouteConstants.pep,
                  arguments: PepArguments(refNumber: widget.refNumber));
            } else if (state is RegisterModeOfOpFailure) {
              showErrorSnackBar(context, state.failure.message);
            } else if (state is RegisterModeOfOpServerDown) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      ServerDownDialog(message: state.failure.message));
            }
          },
          child: Scaffold(
            appBar: AppBar(),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mode of Operation",
                        style: theme.textTheme.displayMedium,
                      ),
                      Text(
                        "Select the mode of operation for your business",
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 20),
                      RequiredLabelText(
                          text: "Mode of Operation", isRequired: true),
                      const SizedBox(height: 5),
                      BlocBuilder<GetBusinessDetailsBloc,
                          GetBusinessDetailsState>(
                        builder: (context, state) {
                          debugPrint('Mode of Operation State: $state');
                          if (state is GetModeOfOperationsSuccess) {
                            debugPrint(
                                'Mode of Operations Count: ${state.modeOfOperations.length}');
                            debugPrint(
                                'Mode of Operations: ${state.modeOfOperations.toString()}');
                            return DropdownButtonFormField<String>(
                              isExpanded: true,
                              initialValue: selectedMode?.modeDesc,
                              hint: Text(
                                'Select mode of operation',
                                style: theme.textTheme.labelMedium,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              menuMaxHeight:
                                  MediaQuery.of(context).size.height * 0.7,
                              items:
                                  state.modeOfOperations.map((modeOfOperation) {
                                debugPrint(
                                    'Creating dropdown item: ${modeOfOperation.modeDesc}');
                                return DropdownMenuItem<String>(
                                  value: modeOfOperation.modeDesc,
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.7,
                                    ),
                                    child: Text(
                                      modeOfOperation.modeDesc,
                                      style: theme.textTheme.labelMedium,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedMode = state.modeOfOperations
                                      .firstWhere((element) =>
                                          element.modeDesc == value);
                                  debugPrint(selectedMode?.isStakeHolderRequired
                                      .toString());
                                  debugPrint(selectedMode?.modeDesc);
                                });
                              },
                            ).asGradientBox(context);
                          } else if (state is GetModeOfOperationsLoading) {
                            debugPrint('Mode of Operation State: Loading');
                            return TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ).asGradientBox(context);
                          } else if (state is GetModeOfOperationsFailure) {
                            debugPrint(
                                'Mode of Operation State: Failure - ${state.message}');
                            return TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    'Error loading modes: ${state.message}',
                              ),
                            ).asGradientBox(context);
                          } else if (state is GetModeOfOperationsServerDown) {
                            debugPrint('Mode of Operation State: Server Down');
                            return TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Server is down',
                              ),
                            ).asGradientBox(context);
                          }
                          debugPrint(
                              'Mode of Operation State: Unknown - $state');
                          return const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(height: 10),
                      RequiredLabelText(
                          text: "Your Designation", isRequired: true),
                      const SizedBox(height: 5),
                      TextFormField(
                        controller: designationController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ).asGradientBox(context),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RequiredLabelText(
                                    text: "Your Stake", isRequired: false),
                                const SizedBox(height: 5),
                                TextFormField(
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(fontSize: 18),
                                  controller: stakeController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    suffixText: '% ',
                                    suffixStyle: theme.textTheme.titleMedium!
                                        .copyWith(fontSize: 18),
                                  ),
                                ).asGradientBox(context),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          if (selectedMode?.isStakeHolderRequired == true)
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RequiredLabelText(
                                      text: "No. of Partners",
                                      isRequired: true),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 47,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (numberOfPartners > 1) {
                                                numberOfPartners--;
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: theme.iconTheme.color,
                                          ),
                                        ),
                                        Text(
                                          numberOfPartners.toString(),
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(fontSize: 18),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (numberOfPartners < 10) {
                                                numberOfPartners++;
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: theme.iconTheme.color,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).asGradientBox(context),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      GradientButton(
                        isDarkMode: isDarkMode,
                        onPressed: _handleSubmit,
                        child: BlocBuilder<RegisterModeOfOpBloc,
                            RegisterModeOfOpState>(
                          builder: (context, state) {
                            if (state is RegisterModeOfOpLoading) {
                              return const SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator());
                            }
                            return Text(localizations.get('next'));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // Validate stake percentage
      final stake = double.tryParse(stakeController.text);
      if (designationController.text.isEmpty) {
        showErrorSnackBar(
            context, "Please enter your designation for the business");
        return;
      } else if (stake == null || stake <= 0 || stake > 100) {
        showErrorSnackBar(
            context, "Please enter a valid stake percentage between 1 and 100");
        return;
      }
      context.read<RegisterModeOfOpBloc>().add(RegisterModeOfOperationEvent(
            ModeOfOperationRequestModel(
              refNumber: widget.refNumber,
              modeOfOpId: selectedMode?.modeId ?? 0,
              designation: designationController.text,
              stake: stake,
              noOfPartners: selectedMode?.isStakeHolderRequired == true
                  ? numberOfPartners
                  : 0,
            ),
          ));
    }
  }
}
