// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'dart:io';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../bloc/liveliness_detection/liveliness_detection_bloc.dart';

class LivelinessDetectionScreen extends StatefulWidget {
  const LivelinessDetectionScreen(
      {super.key,
      required this.refNum,
      required this.customerTypeId,
      required this.frontIdFile,
      required this.backIdFile,
      required this.frontSelfieUrl,
      this.fullName,
      this.dateOfBirth,
      this.sex,
      this.nationality,
      this.fin,
      this.fcn,
      this.dateOfIssue,
      this.expiryDate,
      this.phoneNumber,
      this.region,
      this.zone,
      this.woreda});

  final String refNum;
  final int customerTypeId;
  final Uint8List frontIdFile;
  final Uint8List backIdFile;
  final String frontSelfieUrl;
  final String? fullName;
  final String? dateOfBirth;
  final String? sex;
  final String? nationality;
  final String? fcn;
  final String? fin;
  final String? dateOfIssue;
  final String? expiryDate;
  final String? phoneNumber;
  final String? region;
  final String? zone;
  final String? woreda;

  static const platform = MethodChannel('innovitegra.epurse.ewallet/custom_camera');

  @override
  State<LivelinessDetectionScreen> createState() =>
      _LivelinessDetectionScreenState();
}

class _LivelinessDetectionScreenState extends State<LivelinessDetectionScreen> {
  int? _textureId;
  bool _isFaceDetected = false;
  bool _isBlinking = false;
  Uint8List? _capturedImage;
  LivelinessDetectionState? _currentState;
  late final LivelinessDetectionBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<LivelinessDetectionBloc>();
    _setupMethodCallHandler();
    _bloc.add(const LivelinessDetectionEvent.initializeCamera());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _currentState = context.read<LivelinessDetectionBloc>().state;
  }

  void _setupMethodCallHandler() {
    LivelinessDetectionScreen.platform.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'onFaceUpdate':
          final Map<dynamic, dynamic> data = call.arguments;
          final bool isFaceDetected = data['faceDetected'] as bool;

          // Consider eyes closed if probability is less than 0.2
          final double leftEyeOpen = data['leftEyeOpen'] ?? 1.0;
          final double rightEyeOpen = data['rightEyeOpen'] ?? 1.0;
          final bool isBlinking = leftEyeOpen < 0.2 || rightEyeOpen < 0.2;

          // Get head movement data
          final double? headEulerAngleY = data['headEulerAngleY'] as double?;

          _bloc.add(
            LivelinessDetectionEvent.updateFaceDetection(
              isFaceDetected: isFaceDetected,
              isBlinking: isBlinking,
              headEulerAngleY: headEulerAngleY,
            ),
          );
          break;

        case 'onCameraResolutionAvailable':
          final Map<dynamic, dynamic> data = call.arguments;
          final int width = data['width'] as int;
          final int height = data['height'] as int;

          // Update the bloc with the camera resolution
          _bloc.add(LivelinessDetectionEvent.updateCameraResolution(
            width: width,
            height: height,
          ));
          break;
      }
    });
  }

  Widget _buildCameraPreview(LivelinessDetectionState state) {
    return state.maybeWhen(
      initialized: (textureId,
          isFaceDetected,
          isBlinking,
          hasCompletedBlinking,
          hasCompletedRightMovement,
          hasCompletedLeftMovement,
          isVerificationCompleted,
          width,
          height) {
        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        // Calculate the square size (use width - 50 as the base dimension)
        final double squareSize = size.width - 50;
        final localizations =
            AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
                  loaded: (locale) => locale,
                  orElse: () => const Locale('en'),
                ));

        return Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                    color: isFaceDetected
                        ? hasCompletedBlinking
                            ? hasCompletedRightMovement
                                ? hasCompletedLeftMovement
                                    ? Colors.green
                                    : Colors.blue
                                : Colors.yellow
                            : Colors.orange
                        : Colors.red,
                    width: 3),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: squareSize,
                  height: squareSize * 4 / 3, // 4:3 aspect ratio
                  child: AspectRatio(
                    aspectRatio: 4 / 3, // 4:3 aspect ratio
                    child: Texture(textureId: textureId),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 6,
              left: 6,
              right: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    !isFaceDetected
                        ? localizations.get('position_your_face_in_the_frame')
                        : !hasCompletedBlinking
                            ? localizations.get('please_blink_your_eyes')
                            : !hasCompletedRightMovement
                                ? localizations
                                    .get(Platform.isAndroid ? 'now_turn_your_head_to_the_left' : 'turn_your_head_to_the_right')
                                : !hasCompletedLeftMovement
                                    ? localizations
                                        .get(Platform.isAndroid ? 'turn_your_head_to_the_right' : 'now_turn_your_head_to_the_left')
                                    : localizations
                                        .get('great_all_steps_completed'),
                    style: theme.textTheme.labelLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }

  Widget _buildStateListener(Widget child) {
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    return BlocListener<LivelinessDetectionBloc, LivelinessDetectionState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            showErrorSnackBar(context, message);
          },
          verificationSuccess: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(localizations
                    .get('verification_successful_preparing_to_take_selfie')),
                backgroundColor: Colors.green,
              ),
            );
          },
          selfieCapture: (selfieImage) {
            _bloc.add(LivelinessDetectionEvent.matchFaces(
              candidateImage: selfieImage,
              referenceImageUrl: widget.frontSelfieUrl,
              refNum: widget.refNum,
            ));
          },
          faceMatchFailure: (message, selfieImage) {
            context.goBack();
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  localizations.get('face_not_matching'),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                content: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(localizations.get(
                      'face_is_not_matching_with_the_image_on_your_id_please_try_again_or_continue_with_the_manual_verification_process')),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        context.goBack();
                        context.navigateTo(RouteConstants.kycVerified,
                            arguments: KycVerifiedArguments(
                                refNum: widget.refNum,
                                customerTypeId: widget.customerTypeId,
                                frontIdFile: widget.frontIdFile,
                                backIdFile: widget.backIdFile,
                                frontSelfieUrl: widget.frontSelfieUrl,
                                fullName: widget.fullName ?? "",
                                fcn: widget.fcn ?? "",
                                dateOfBirth: widget.dateOfBirth ?? "",
                                sex: widget.sex ?? "",
                                nationality: widget.nationality ?? "",
                                fin: widget.fin ?? "",
                                dateOfIssue: widget.dateOfIssue ?? "",
                                expiryDate: widget.expiryDate ?? "",
                                phoneNumber: widget.phoneNumber ?? "",
                                region: widget.region ?? "",
                                zone: widget.zone ?? "",
                                woreda: widget.woreda ?? "",
                                faceMatchStatus: "Failed",
                                faceMatchScore: 0,
                                selfieImage: selfieImage));
                      },
                      child: Text(localizations.get('continue'))),
                  TextButton(
                      onPressed: () {
                        _setupMethodCallHandler();
                        _bloc.add(
                            const LivelinessDetectionEvent.initializeCamera());
                        context.goBack();
                      },
                      child: Text(localizations.get('retry')))
                ],
              ),
            );
          },
          faceMatchLoading: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                title: Text(localizations.get('face_matching')),
                contentPadding: EdgeInsets.zero,
                content: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Lottie.asset(
                      'lib/core/animation/face_matching.json',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            );
          },
          faceMatchSuccess: (entity, selfieImage) {
            context.goBack();
            context.navigateTo(RouteConstants.kycVerified,
                arguments: KycVerifiedArguments(
                    refNum: widget.refNum,
                    customerTypeId: widget.customerTypeId,
                    frontIdFile: widget.frontIdFile,
                    backIdFile: widget.backIdFile,
                    frontSelfieUrl: widget.frontSelfieUrl,
                    fullName: widget.fullName ?? "",
                    fcn: widget.fcn ?? "",
                    dateOfBirth: widget.dateOfBirth ?? "",
                    sex: widget.sex ?? "",
                    nationality: widget.nationality ?? "",
                    fin: widget.fin ?? "",
                    dateOfIssue: widget.dateOfIssue ?? "",
                    expiryDate: widget.expiryDate ?? "",
                    phoneNumber: widget.phoneNumber ?? "",
                    region: widget.region ?? "",
                    zone: widget.zone ?? "",
                    woreda: widget.woreda ?? "",
                    faceMatchStatus: "Success",
                    faceMatchScore: entity.score,
                    selfieImage: selfieImage));
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }

  void _updateCurrentState(LivelinessDetectionState state) {
    _currentState = state;
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
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(),
        body: _buildStateListener(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(localizations.get('face_matching'),
                    style: theme.textTheme.displayMedium),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  localizations.get(
                      'please_ensure_your_face_is_visible_and_well_lit_the_camera_will_take_a_selfie_and_compare_it_with_the_image_on_your_id_if_the_images_match_you_will_be_redirected_to_the_next_step'),
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: BlocConsumer<LivelinessDetectionBloc,
                    LivelinessDetectionState>(
                  listener: (context, state) {
                    _updateCurrentState(state);
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      initialized: (textureId,
                          isFaceDetected,
                          isBlinking,
                          hasCompletedBlinking,
                          hasCompletedRightMovement,
                          hasCompletedLeftMovement,
                          isVerificationCompleted,
                          width,
                          height) {
                        return _buildCameraPreview(state);
                      },
                      countdownInProgress: (countdown,
                          textureId,
                          isFaceDetected,
                          isBlinking,
                          hasCompletedBlinking,
                          hasCompletedRightMovement,
                          hasCompletedLeftMovement,
                          isVerificationCompleted,
                          width,
                          height) {
                        return Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              _buildCameraPreview(
                                  LivelinessDetectionState.initialized(
                                textureId: textureId,
                                isFaceDetected: isFaceDetected,
                                isBlinking: isBlinking,
                                hasCompletedBlinking: hasCompletedBlinking,
                                hasCompletedRightMovement:
                                    hasCompletedRightMovement,
                                hasCompletedLeftMovement:
                                    hasCompletedLeftMovement,
                                isVerificationCompleted:
                                    isVerificationCompleted,
                                width: width,
                                height: height,
                              )),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      localizations.get('taking_selfie_in'),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      '$countdown',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (mounted) {
      _currentState?.maybeWhen(
        selfieCapture: (_) {},
        faceMatchLoading: () {},
        faceMatchSuccess: (_, __) {},
        faceMatchFailure: (_, __) {},
        orElse: () {
          LivelinessDetectionScreen.platform.setMethodCallHandler(null);
          LivelinessDetectionScreen.platform.invokeMethod('cleanupFrontCamera');
        },
      );
    }
    super.dispose();
  }
}
