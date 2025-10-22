import 'dart:math';

import 'package:epurse/core/widgets/otp_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class FaceLoginScreen extends StatefulWidget {
  const FaceLoginScreen({super.key});

  @override
  State<FaceLoginScreen> createState() => _FaceLoginScreenState();
}

class _FaceLoginScreenState extends State<FaceLoginScreen> {
  static const platform =
      MethodChannel('innovitegra.epurse.ewallet/face_login');
  int? _textureId;
  Size? _previewSize;
  int _orientation = 0;
  bool _faceDetected = false;
  bool _isCapturing = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _stopCamera();
    super.dispose();
  }

  Future<void> _initializeCamera() async {
    try {
      final textureId =
          await platform.invokeMethod<int>('startFaceLoginCamera');
      setState(() => _textureId = textureId);

      platform.setMethodCallHandler((call) async {
        switch (call.method) {
          case 'onCameraResolutionAvailable':
            final width = call.arguments['width'] as int;
            final height = call.arguments['height'] as int;
            final orientation = call.arguments['orientation'] as int;
            setState(() {
              _previewSize = Size(width.toDouble(), height.toDouble());
              _orientation = orientation;
            });
            break;

          case 'onFaceDetected':
            final detected = call.arguments['detected'] as bool;
            final isGoodFace = call.arguments['isGoodFace'] as bool;

            setState(() {
              _faceDetected = detected;
            });

            if (detected && isGoodFace && !_isCapturing) {
              setState(() => _isCapturing = true);
              // Add delay for stable capture
              await Future.delayed(const Duration(milliseconds: 500));
              await _captureFace();
            }
            break;
        }
      });
    } catch (e) {
      debugPrint('Error starting camera: $e');
    }
  }

  Future<void> _stopCamera() async {
    try {
      await platform.invokeMethod('stopFaceLoginCamera');
    } catch (e) {
      debugPrint('Error stopping camera: $e');
    }
  }

  Future<void> _captureFace() async {
    try {
      debugPrint('Attempting to capture face');
      final imageBytes =
          await platform.invokeMethod<Uint8List>('captureFaceImage');
      if (imageBytes != null && mounted) {
        debugPrint('Image captured successfully, navigating to preview');
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FacePreviewScreen(imageBytes: imageBytes),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error capturing face: $e');
    } finally {
      if (mounted) {
        setState(() => _isCapturing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );

    final previewWidth = size.width * 0.9;
    final previewHeight = previewWidth * 16 / 9;

    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
        isDark: isDarkMode,
        isPrimary: true,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_textureId != null && _previewSize != null)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _faceDetected ? Colors.green : Colors.red,
                      width: 3,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: SizedBox(
                      width: previewWidth,
                      height: previewHeight,
                      child: Transform.rotate(
                        angle: _orientation * pi / 180,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _previewSize!.width,
                            height: _previewSize!.height,
                            child: Texture(textureId: _textureId!),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              else
                const CircularProgressIndicator(),
              const SizedBox(height: 20),
              OutlinedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => OtpBottomSheet(
                            obscureText: true,
                            showResendButton: false,
                            onVerifyTap: (pin) {},
                            title: "Enter Passcode",
                            subTitle:
                                "Enter the passcode sent to your mobile number",
                            buttonText: "Verify",
                            mobile: ""));
                  },
                  child: Text("Enter Passcode")),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class FacePreviewScreen extends StatelessWidget {
  final Uint8List imageBytes;

  const FacePreviewScreen({
    super.key,
    required this.imageBytes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face Preview'),
      ),
      body: Center(
        child: Image.memory(imageBytes),
      ),
    );
  }
}
