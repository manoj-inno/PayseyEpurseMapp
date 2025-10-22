import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/util/date_formatter.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/id_card_extraction/front_image_extraction/front_image_extraction_bloc.dart';
import '../bloc/id_card_extraction/back_image_extraction/back_image_extraction_bloc.dart';
import '../widget/capture_id_tile.dart';
import '../widget/extracted_details_row.dart';
import '../widget/extracted_details_shimmer.dart';

class UploadIdScreen extends StatefulWidget {
  const UploadIdScreen({
    super.key,
    required this.customerTypeId,
    required this.refNum,
    this.showDialogOnInit = false,
  });
  final int customerTypeId;
  final String refNum;
  final bool showDialogOnInit;

  @override
  State<UploadIdScreen> createState() => _UploadIdScreenState();
}

class _UploadIdScreenState extends State<UploadIdScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint("______________UPLOAD ID SCREEN INIT____________");
    debugPrint("RefNum: ${widget.refNum}");
    debugPrint("CustomerTypeId: ${widget.customerTypeId}");
    debugPrint("ShowDialogOnInit: ${widget.showDialogOnInit}");

    // Show dialog after the first frame is rendered
    if (widget.showDialogOnInit) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showEkycDialog();
      });
    }
  }

  void _showEkycDialog() {
    final localizations =
        AppLocalizations(context.read<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            localizations.get('get_ready_for_ekyc'),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            width: 0.5,
                            color: Theme.of(context).colorScheme.tertiary)),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Lottie.asset('lib/core/animation/readykyc.json'),
                    )),
              ),
              Text(
                '${localizations.get('ensure_your_phone_s_camera_is_functional')}\n\n${localizations.get('have_your_government_issued_id_ready')}\n\n${localizations.get('make_sure_you_are_in_a_well_lit_environment')}\n\n${localizations.get('be_prepared_to_take_a_selfie_for_identity_verification')}\n\n${localizations.get('keep_your_internet_connection_stable')}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.goBack();
              },
              child: Text(localizations.get('ok')),
            ),
          ],
        );
      },
    );
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

    return MultiBlocListener(
      listeners: [
        BlocListener<FrontImageExtractionBloc, FrontImageExtractionState>(
          listener: (context, state) {
            state.maybeWhen(
              serverDown: (message) {
                showDialog(
                  context: context,
                  builder: (context) => ServerDownDialog(message: message),
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<BackImageExtractionBloc, BackImageExtractionState>(
          listener: (context, state) {
            state.maybeWhen(
              serverDown: (message) {
                showDialog(
                  context: context,
                  builder: (context) => ServerDownDialog(message: message),
                );
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.get('upload_id'),
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    localizations.get(
                        'please_upload_both_sides_of_your_id_card_to_continue'),
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CaptureIdTile(
                    theme: theme,
                    title: localizations.get('capture_front_of_id'),
                    refNum: widget.refNum,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CaptureIdTile(
                    theme: theme,
                    title: localizations.get('capture_back_of_id'),
                    refNum: widget.refNum,
                    isBackSide: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<FrontImageExtractionBloc,
                      FrontImageExtractionState>(
                    builder: (context, frontState) {
                      return BlocBuilder<BackImageExtractionBloc,
                          BackImageExtractionState>(
                        builder: (context, backState) {
                          final shouldShowTitle = frontState.maybeWhen(
                                loading: () => true,
                                success: (entity, image) => true,
                                orElse: () => false,
                              ) ||
                              backState.maybeWhen(
                                loading: () => true,
                                success: (entity, image) => true,
                                orElse: () => false,
                              );

                          return shouldShowTitle
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      localizations.get('extracted_details'),
                                      style: theme.textTheme.displayMedium,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink();
                        },
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? AppColors.otpDarkBackground1
                          : AppColors.otpLightBackground1,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlocBuilder<FrontImageExtractionBloc,
                            FrontImageExtractionState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () => Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 10),
                                      child: Shimmer.fromColors(
                                        baseColor: isDarkMode
                                            ? AppColors.shimmerBaseDark
                                            : AppColors.shimmerBaseLight2,
                                        highlightColor: isDarkMode
                                            ? AppColors.shimmerHighlightDark
                                            : AppColors.shimmerHighlightLight,
                                        child: Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: isDarkMode
                                                ? AppColors.otpDarkBackground1
                                                : AppColors.otpLightBackground1,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ExtractedDetailsShimmer(
                                      theme: theme,
                                      isDark: isDarkMode,
                                    ),
                                    ExtractedDetailsShimmer(
                                      theme: theme,
                                      isDark: isDarkMode,
                                    ),
                                    ExtractedDetailsShimmer(
                                      theme: theme,
                                      isDark: isDarkMode,
                                    ),
                                    ExtractedDetailsShimmer(
                                      theme: theme,
                                      isDark: isDarkMode,
                                    ),
                                  ],
                                ),
                              ),
                              success: (ocrEntity, image) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  children: [
                                    if (ocrEntity.croppedFace.isNotEmpty)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 80, vertical: 10),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.network(
                                                ocrEntity.croppedFace)),
                                      ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    if (ocrEntity.fullName.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations.get('full_name'),
                                          value: ocrEntity.fullName,
                                          theme: theme),
                                    if (ocrEntity.dateOfBirth.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations
                                              .get('date_of_birth'),
                                          value: ocrEntity.dateOfBirth,
                                          theme: theme),
                                    if (ocrEntity.sex.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations.get('sex'),
                                          value: ocrEntity.sex,
                                          theme: theme),
                                    if (ocrEntity.nationality.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title:
                                              localizations.get('nationality'),
                                          value: ocrEntity.nationality,
                                          theme: theme),
                                    if (ocrEntity.dateOfExpiry.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations
                                              .get('date_of_expiry'),
                                          value: ocrEntity.dateOfExpiry,
                                          theme: theme),
                                    if (ocrEntity.dateOfIssue.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations
                                              .get('date_of_issue'),
                                          value: ocrEntity.dateOfIssue,
                                          theme: theme),
                                    if (ocrEntity.fcn.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations.get('fcn'),
                                          value: ocrEntity.fcn,
                                          theme: theme),
                                    if (ocrEntity
                                        .countryOfCitizenship.isNotEmpty)
                                      ExtractedDetailsRow(
                                          title: localizations
                                              .get('country_of_citizenship'),
                                          value: ocrEntity.countryOfCitizenship,
                                          theme: theme),
                                  ],
                                ),
                              ),
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                        BlocBuilder<BackImageExtractionBloc,
                            BackImageExtractionState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(children: [
                                  ExtractedDetailsShimmer(
                                    theme: theme,
                                    isDark: isDarkMode,
                                  ),
                                  ExtractedDetailsShimmer(
                                    theme: theme,
                                    isDark: isDarkMode,
                                  ),
                                  ExtractedDetailsShimmer(
                                    theme: theme,
                                    isDark: isDarkMode,
                                  ),
                                ]),
                              ),
                              success: (ocrEntity, image) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(children: [
                                  if (ocrEntity.fin.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title: localizations.get('fin'),
                                        value: ocrEntity.fin,
                                        theme: theme),
                                  if (ocrEntity.dateOfIssue.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title:
                                            localizations.get('date_of_issue'),
                                        value: ocrEntity.dateOfIssue,
                                        theme: theme),
                                  if (ocrEntity.dateOfExpiry != null &&
                                      ocrEntity.dateOfExpiry!.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title:
                                            localizations.get('date_of_expiry'),
                                        value: ocrEntity.dateOfExpiry ?? '',
                                        theme: theme),
                                  if (ocrEntity.nationality.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title: localizations.get('nationality'),
                                        value: ocrEntity.nationality,
                                        theme: theme),
                                  if (ocrEntity.phoneNumber.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title:
                                            localizations.get('phone_number'),
                                        value: ocrEntity.phoneNumber,
                                        theme: theme),
                                  if (ocrEntity.region.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title: localizations.get('region'),
                                        value: ocrEntity.region,
                                        theme: theme),
                                  if (ocrEntity.zone.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title: localizations.get('zone'),
                                        value: ocrEntity.zone,
                                        theme: theme),
                                  if (ocrEntity.woreda.isNotEmpty)
                                    ExtractedDetailsRow(
                                        title: localizations.get('woreda'),
                                        value: ocrEntity.woreda,
                                        theme: theme),
                                  SizedBox(height: 10),
                                ]),
                              ),
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar:
              BlocBuilder<FrontImageExtractionBloc, FrontImageExtractionState>(
            builder: (context, frontState) {
              return BlocBuilder<BackImageExtractionBloc,
                  BackImageExtractionState>(
                builder: (context, backState) {
                  // Show button when both images are captured (either imageCaptured or success state)
                  final frontImageCaptured = frontState.maybeWhen(
                    imageCaptured: (image) => true,
                    success: (entity, image) => true,
                    orElse: () => false,
                  );
                  final backImageCaptured = backState.maybeWhen(
                    imageCaptured: (image) => true,
                    success: (entity, image) => true,
                    orElse: () => false,
                  );
                  final bothImagesCaptured =
                      frontImageCaptured && backImageCaptured;

                  // Show continue button only when both OCR processes are successful
                  final shouldShowButton = frontState.maybeWhen(
                        success: (entity, image) => true,
                        orElse: () => false,
                      ) &&
                      backState.maybeWhen(
                        success: (entity, image) => true,
                        orElse: () => false,
                      );

                  if (shouldShowButton) {
                    // Show continue button when both OCR processes are successful
                    return BottomAppBar(
                      color: Colors.transparent,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: GradientButton(
                          isDarkMode: isDarkMode,
                          onPressed: () {
                            final frontImage = frontState.maybeWhen(
                              success: (entity, image) => image,
                              orElse: () => null,
                            );
                            final backImage = backState.maybeWhen(
                              success: (entity, image) => image,
                              orElse: () => null,
                            );
                            final ocrFrontEntity = frontState.maybeWhen(
                              success: (entity, image) => entity,
                              orElse: () => null,
                            );
                            final ocrBackEntity = backState.maybeWhen(
                              success: (entity, image) => entity,
                              orElse: () => null,
                            );

                            log("COMPLETED UPLOAD ID SCREEN");

                            if (frontImage != null &&
                                backImage != null &&
                                ocrFrontEntity != null &&
                                ocrBackEntity != null) {
                              context.navigateTo(
                                  RouteConstants.livelinessDetection,
                                  arguments: LivelinessDetectionArguments(
                                      refNum: widget.refNum,
                                      customerTypeId: widget.customerTypeId,
                                      frontIdFile: frontImage,
                                      backIdFile: backImage,
                                      frontSelfieUrl:
                                          ocrFrontEntity.croppedFace,
                                      fullName: ocrFrontEntity.fullName,
                                      fcn: ocrFrontEntity.fcn,
                                      dateOfBirth: formatDate(
                                          ocrFrontEntity.dateOfBirth),
                                      sex: ocrFrontEntity.sex,
                                      nationality: ocrBackEntity.nationality,
                                      fin: ocrBackEntity.fin,
                                      dateOfIssue:
                                          formatDate(ocrBackEntity.dateOfIssue),
                                      expiryDate: ocrBackEntity.dateOfExpiry !=
                                              null
                                          ? formatDate(
                                              ocrBackEntity.dateOfExpiry ?? "")
                                          : formatDate(
                                              ocrFrontEntity.dateOfExpiry),
                                      phoneNumber: ocrBackEntity.phoneNumber,
                                      region: ocrBackEntity.region,
                                      zone: ocrBackEntity.zone,
                                      woreda: ocrBackEntity.woreda));
                              log("COMPLETED UPLOAD ID SCREEN");
                            } else {
                              showErrorSnackBar(context,
                                  'Please capture both sides of your ID card');
                            }
                          },
                          child: Text(localizations.get('continue')),
                        ),
                      ),
                    );
                  } else if (bothImagesCaptured) {
                    // Show process button when both images are captured but OCR not done
                    return BottomAppBar(
                      color: Colors.transparent,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: GradientButton(
                          isDarkMode: isDarkMode,
                          onPressed: () {
                            // Get the captured images
                            final frontImage = frontState.maybeWhen(
                              imageCaptured: (image) => image,
                              success: (entity, image) => image,
                              orElse: () => null,
                            );
                            final backImage = backState.maybeWhen(
                              imageCaptured: (image) => image,
                              success: (entity, image) => image,
                              orElse: () => null,
                            );

                            if (frontImage != null && backImage != null) {
                              debugPrint("______________TRIGGERING OCR____________");
                              debugPrint("RefNum for OCR: ${widget.refNum}");
                              debugPrint("RefNum length: ${widget.refNum.length}");
                              debugPrint("RefNum isEmpty: ${widget.refNum.isEmpty}");
                              
                              // Trigger OCR for both sides
                              context.read<FrontImageExtractionBloc>().add(
                                    FrontImageExtractionEvent.performFrontOcr(
                                      image: frontImage,
                                      referenceId: widget.refNum,
                                      side: 'front',
                                    ),
                                  );
                              context.read<BackImageExtractionBloc>().add(
                                    BackImageExtractionEvent.performBackOcr(
                                      image: backImage,
                                      referenceId: widget.refNum,
                                      side: 'back',
                                    ),
                                  );
                            }
                          },
                          child: Text('Process Images'),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
