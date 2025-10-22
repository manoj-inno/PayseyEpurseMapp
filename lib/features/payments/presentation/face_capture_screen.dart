import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class FaceCaptureScreen extends StatefulWidget {
  const FaceCaptureScreen({super.key});

  @override
  State<FaceCaptureScreen> createState() => _FaceCaptureScreenState();
}

class _FaceCaptureScreenState extends State<FaceCaptureScreen> {
  CameraController? _controller;
  Future<void>? _initFuture;
  Timer? _captureTimer;
  int _countdown = 3;
  bool _isCapturing = false;

  @override
  void initState() {
    super.initState();
    _initFuture = _initCamera();
  }

  Future<void> _initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    // Pick the first front camera, or fallback to first camera
    final front = cameras.firstWhere(
      (c) => c.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.isNotEmpty ? cameras.first : throw Exception('No cameras available'),
    );
    _controller = CameraController(front, ResolutionPreset.medium, enableAudio: false);
    await _controller!.initialize();
    if (!mounted) return;
    setState(() {});
    
    // Start the 3-second countdown timer
    _startCountdown();
  }

  @override
  void dispose() {
    _captureTimer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  void _startCountdown() {
    _captureTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      
      setState(() {
        _countdown--;
      });
      
      if (_countdown <= 0) {
        timer.cancel();
        _capture();
      }
    });
  }

  Future<void> _capture() async {
    if (_controller == null || !_controller!.value.isInitialized || _isCapturing) return;
    
    setState(() {
      _isCapturing = true;
    });
    
    try {
      final file = await _controller!.takePicture();
      if (!mounted) return;
      Navigator.of(context).pop<String>(file.path);
    } catch (e) {
      debugPrint('Error capturing photo: $e');
      if (!mounted) return;
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Face Verification'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: _initFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    'Initializing camera...',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            );
          }
          if (!(_controller?.value.isInitialized ?? false)) {
            return const Center(
              child: Text(
                'Camera not initialized',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            );
          }
          return Stack(
            children: [
              Positioned.fill(child: CameraPreview(_controller!)),
              
              // Instructions
              Positioned(
                top: 5,
                left: 20,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Position your face in the center. Photo will be taken automatically.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              
              // Countdown timer below instructions
              if (_countdown > 0 && !_isCapturing)
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '$_countdown',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              
              // Capturing indicator
              if (_isCapturing)
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(color: Colors.white),
                      SizedBox(height: 16),
                      Text(
                        'Capturing...',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}


