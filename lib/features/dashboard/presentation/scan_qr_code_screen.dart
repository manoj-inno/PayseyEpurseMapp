import '../../../core/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/util/encryption_util.dart';
import '../../../core/routing/route_constants.dart';
import '../../../core/routing/route_arguments.dart';
import '../../payments/cubit/transaction_type_cubit.dart';

class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({super.key});

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen>
    with TickerProviderStateMixin {
  static const MethodChannel _channel =
      MethodChannel('innovitegra.epurse.ewallet/qr_camera');
  int? _textureId;
  bool _processingCode = false; // Flag to prevent multiple navigations
  bool _flashEnabled = false; // Track flash state
  bool _isInitializing = false; // Track initialization state
  
  // Animation controller for scan line
  AnimationController? _scanLineController;
  Animation<double>? _scanLineAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initializeCamera();

    // Set up method call handler for camera events
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'onCameraReady':
          setState(() {
            _isInitializing = false;
          });
          break;
        case 'onCameraResolutionAvailable':
          final width = call.arguments['width'] as int;
          final height = call.arguments['height'] as int;
          final aspectRatio = call.arguments['aspectRatio'] as double?;

          setState(() {
            if (aspectRatio != null) {}
          });

          debugPrint(
              'Camera resolution: $width x $height, aspect ratio: $aspectRatio');
          break;
        case 'onQRCodeDetected':
          // Handle QR code detection
          if (!_processingCode) {
            _processingCode = true; // Prevent multiple detections
            final qrValue = call.arguments['value'] as String;
            debugPrint('QR code detected: $qrValue');

            // Navigate to result screen
            _navigateToResultScreen(qrValue);
          }
          break;
        case 'onFlashStateChanged':
          final enabled = call.arguments['enabled'] as bool;
          setState(() {
            _flashEnabled = enabled;
          });
          break;
        case 'onCameraPermissionGranted':
          // Reinitialize camera when permission is granted
          _initializeCamera();
          break;
        case 'onCameraPermissionDenied':
          setState(() {
            _isInitializing = false;
          });
          // Show error message or handle permission denied
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Camera permission is required to scan QR codes'),
              backgroundColor: Colors.red,
            ),
          );
          break;
      }
    });
  }

  void _navigateToResultScreen(String qrValue) {
    // Dispose camera before navigation
    _channel.invokeMethod('disposeCamera');

    // Try to decrypt the QR code data
    try {
      final userData = EncryptionUtil.decryptUserData(qrValue);
      
      if (userData != null && userData['name'] != null && userData['userId'] != null) {
        // Navigate directly to amount entry screen
        Navigator.of(context).pushNamed(
          RouteConstants.amountEntry,
          arguments: AmountEntryArguments(
            type: TransactionType.pay,
            amount: 0.0, // Default amount, user will enter
            receiver: userData['name'] ?? 'Unknown',
            receiverNumber: userData['phone'] ?? 'Unknown',
            userId: userData['userId'] ?? 'Unknown',
          ),
        ).then((_) {
          // When returning from amount entry screen, reinitialize camera
          _processingCode = false;
          _initializeCamera();
        });
      } else {
        // Invalid QR code - show error and return to camera
        _showInvalidQRCodeError();
      }
    } catch (e) {
      // Decryption failed - show error and return to camera
      debugPrint('QR code decryption failed: $e');
      _showInvalidQRCodeError();
    }
  }

  void _showInvalidQRCodeError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Invalid QR code. Please scan a valid user QR code.'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
    
    // Reinitialize camera after showing error
    _processingCode = false;
    _initializeCamera();
  }

  void _initializeAnimations() {
    _scanLineController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scanLineAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _scanLineController!,
      curve: Curves.easeInOut,
    ));

    // Start animation - moves from top to bottom and back
    _scanLineController!.repeat(reverse: true);
  }

  Future<void> _initializeCamera() async {
    if (_isInitializing) return; // Prevent multiple initialization attempts

    setState(() {
      _isInitializing = true;
    });

    try {
      debugPrint('Initializing camera...');
      final textureId = await _channel.invokeMethod<int>('openBackCamera');
      debugPrint('Camera initialized with texture ID: $textureId');

      if (textureId == null || textureId < 0) {
        debugPrint('Invalid texture ID: $textureId');
        setState(() {
          _isInitializing = false;
        });
        return;
      }

      setState(() {
        _textureId = textureId;
        _isInitializing = false;
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to initialize camera: ${e.message}');
      setState(() {
        _isInitializing = false;
      });
    } catch (e) {
      debugPrint('Unexpected error initializing camera: $e');
      setState(() {
        _isInitializing = false;
      });
    }
  }

  // Add this method to toggle the flashlight
  Future<void> _toggleFlash() async {
    try {
      final result = await _channel.invokeMethod<bool>('toggleFlash');
      if (result != null) {
        setState(() {
          _flashEnabled = result;
        });
      }
    } on PlatformException catch (e) {
      debugPrint('Failed to toggle flash: ${e.message}');
    }
  }

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, right: 5, left: 5),
            child: _textureId != null && _textureId! >= 0
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11.5),
                      border: Border.all(
                        color: isDarkMode
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                        width: 1.5,
                      ),
                    ),
                    width: size.width,
                    height: size.height -
                        kToolbarHeight -
                        MediaQuery.of(context).padding.top -
                        60,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Stack(
                         children: [
                           // Full screen camera preview - no black lines
                           Positioned.fill(
                             child: Texture(
                               textureId: _textureId!,
                               filterQuality: FilterQuality.medium,
                             ),
                           ),
                           // Overlay for QR code scanning area
                           Center(
                             child: Container(
                               width: size.width * 0.6,
                               height: size.width * 0.6,
                               child: Stack(
                                 children: [
                                   // Scanning area border
                                   Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(
                                         color: isDarkMode
                                             ? AppColors.iconDarkColor
                                             : AppColors.iconLightColor,
                                         width: 2.0,
                                       ),
                                     ),
                                   ),
                                   // Animated scan line
                                   if (_scanLineAnimation != null)
                                     AnimatedBuilder(
                                       animation: _scanLineAnimation!,
                                       builder: (context, child) {
                                         return Positioned(
                                           top: _scanLineAnimation!.value * (size.width * 0.6 - 2),
                                           left: 0,
                                           right: 0,
                                           child: Container(
                                             height: 2,
                                             decoration: BoxDecoration(
                                               gradient: LinearGradient(
                                                 colors: [
                                                   Colors.transparent,
                                                   isDarkMode ? AppColors.iconDarkColor : AppColors.iconLightColor,
                                                   Colors.transparent,
                                                 ],
                                               ),
                                             ),
                                           ),
                                         );
                                       },
                                     ),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: GradientButton(
                onPressed: _toggleFlash,
                isDarkMode: isDarkMode,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _flashEnabled
                          ? Icons.flashlight_off
                          : Icons.flashlight_on_rounded,
                      size: 15,
                      color: isDarkMode
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _flashEnabled ? "Flash Off" : "Flash On",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: isDarkMode
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose animation controller
    _scanLineController?.dispose();
    
    // Make sure to release the camera when the screen is disposed
    try {
      _channel.invokeMethod('disposeCamera');
    } catch (e) {
      debugPrint('Error disposing camera: $e');
    }
    super.dispose();
  }
}

