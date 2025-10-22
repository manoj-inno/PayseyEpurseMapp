package innovitegra.epurse.ewallet

import android.Manifest
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.os.Bundle
import android.provider.ContactsContract
import android.provider.Settings
import android.util.Log
import android.view.Surface
import androidx.camera.core.AspectRatio
import androidx.camera.core.CameraSelector
import androidx.camera.core.FocusMeteringAction
import androidx.camera.core.ImageAnalysis
import androidx.camera.core.ImageCapture
import androidx.camera.core.ImageCaptureException
import androidx.camera.core.ImageProxy
import androidx.camera.core.Preview as CameraPreview
import androidx.camera.core.SurfaceOrientedMeteringPointFactory
import androidx.camera.core.TorchState
import androidx.camera.lifecycle.ProcessCameraProvider

import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.google.mlkit.vision.barcode.BarcodeScannerOptions
import com.google.mlkit.vision.barcode.BarcodeScanning
import com.google.mlkit.vision.barcode.common.Barcode
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.face.FaceDetection
import com.google.mlkit.vision.face.FaceDetectorOptions
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.TextureRegistry
import java.io.ByteArrayOutputStream
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import android.os.Build
import android.graphics.Color
import com.google.zxing.BarcodeFormat
import com.google.zxing.WriterException
import com.google.zxing.qrcode.QRCodeWriter
import io.flutter.plugin.common.MethodCall

class MainActivity : FlutterActivity() {
    private val CHANNEL = "innovitegra.epurse.ewallet/device_id"
    private val CAMERA_CHANNEL = "innovitegra.epurse.ewallet/custom_camera"
    private val CONTACTS_CHANNEL = "innovitegra.epurse.ewallet/contacts"
    private val QR_CAMERA_CHANNEL = "innovitegra.epurse.ewallet/qr_camera"
    private val QR_GENERATOR_CHANNEL = "innovitegra.epurse.ewallet/qr_generator"
    private val FACE_LOGIN_CHANNEL = "innovitegra.epurse.ewallet/face_login"
    private val CONTACTS_PERMISSION_REQUEST = 100
    private val CAMERA_PERMISSION_REQUEST = 101
    private var flutterTexture: TextureRegistry.SurfaceTextureEntry? = null
    private var qrFlutterTexture: TextureRegistry.SurfaceTextureEntry? = null
    private var faceLoginTexture: TextureRegistry.SurfaceTextureEntry? = null
    private lateinit var cameraExecutor: ExecutorService
    private var methodChannel: MethodChannel? = null
    private var qrMethodChannel: MethodChannel? = null
    private var faceLoginMethodChannel: MethodChannel? = null
    private var imageCapture: ImageCapture? = null
    private var pendingContactsResult: MethodChannel.Result? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        cameraExecutor = Executors.newSingleThreadExecutor()
    }

    override fun onDestroy() {
        super.onDestroy()
        cameraExecutor.shutdown()
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call,
                result ->
            if (call.method == "getDeviceId") {
                val deviceId =
                        Settings.Secure.getString(contentResolver, Settings.Secure.ANDROID_ID)
                val deviceModel = Build.MODEL
                val deviceManufacturer = Build.MANUFACTURER
                
                val data = mapOf(
                    "deviceId" to deviceId,
                    "deviceModel" to deviceModel,
                    "deviceManufacturer" to deviceManufacturer
                )
                
                result.success(data)
            } else {
                result.notImplemented()
            }
        }

        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CAMERA_CHANNEL)
        methodChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "openFrontCamera" -> {
                    val textureId = openFrontCamera()
                    result.success(textureId)
                }
                "captureSelfie" -> {
                    captureSelfie(result)
                }
                "cleanupFrontCamera" -> {
                    cleanupFrontCamera()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CONTACTS_CHANNEL)
                .setMethodCallHandler { call, result ->
                    when (call.method) {
                        "getContacts" -> {
                            fetchContacts(result)
                        }
                        else -> result.notImplemented()
                    }
                }

        qrMethodChannel =
                MethodChannel(flutterEngine.dartExecutor.binaryMessenger, QR_CAMERA_CHANNEL)
        qrMethodChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "openBackCamera" -> {
                    val textureId = openBackCamera()
                    result.success(textureId)
                }
                "disposeCamera" -> {
                    disposeCamera()
                    result.success(null)
                }
                "toggleFlash" -> {
                    toggleFlash(result)
                }
                else -> result.notImplemented()
            }
        }

        faceLoginMethodChannel =
                MethodChannel(flutterEngine.dartExecutor.binaryMessenger, FACE_LOGIN_CHANNEL)
        faceLoginMethodChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "startFaceLoginCamera" -> {
                    val textureId = startFaceLoginCamera()
                    result.success(textureId)
                }
                "stopFaceLoginCamera" -> {
                    stopFaceLoginCamera()
                    result.success(null)
                }
                "captureFaceImage" -> {
                    captureFaceImage(result)
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, QR_GENERATOR_CHANNEL)
                .setMethodCallHandler { call, result ->
                    when (call.method) {
                        "generateQRCode" -> {
                            generateQRCode(call, result)
                        }
                        else -> result.notImplemented()
                    }
                }
    }

    private fun openFrontCamera(): Long {
        try {
            val textureEntry = flutterEngine?.renderer?.createSurfaceTexture()
            flutterTexture = textureEntry

            val cameraProviderFuture = ProcessCameraProvider.getInstance(this)

            // Create ImageCapture use case with 4:3 aspect ratio
            imageCapture =
                    ImageCapture.Builder()
                            .setCaptureMode(ImageCapture.CAPTURE_MODE_MAXIMIZE_QUALITY)
                            .setTargetAspectRatio(AspectRatio.RATIO_4_3)
                            .setJpegQuality(95)
                            .build()

            // High-accuracy landmark detection and face classification
            val faceDetectorOptions =
                    FaceDetectorOptions.Builder()
                            .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_ACCURATE)
                            .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_ALL)
                            .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_ALL)
                            .setContourMode(FaceDetectorOptions.CONTOUR_MODE_ALL)
                            .enableTracking()
                            .build()

            val detector = FaceDetection.getClient(faceDetectorOptions)

            val imageAnalyzer =
                    ImageAnalysis.Builder()
                            .setTargetAspectRatio(AspectRatio.RATIO_4_3)
                            .setBackpressureStrategy(ImageAnalysis.STRATEGY_KEEP_ONLY_LATEST)
                            .build()
                            .also { analysis ->
                                analysis.setAnalyzer(cameraExecutor) { imageProxy ->
                                    val mediaImage = imageProxy.image
                                    if (mediaImage != null) {
                                        val image =
                                                InputImage.fromMediaImage(
                                                        mediaImage,
                                                        imageProxy.imageInfo.rotationDegrees
                                                )

                                        detector.process(image)
                                                .addOnSuccessListener { faces ->
                                                    if (faces.isNotEmpty()) {
                                                        val face = faces[0]
                                                        val data =
                                                                mapOf(
                                                                        "faceDetected" to true,
                                                                        "leftEyeOpen" to
                                                                                face.leftEyeOpenProbability,
                                                                        "rightEyeOpen" to
                                                                                face.rightEyeOpenProbability,
                                                                        "headEulerAngleY" to
                                                                                face.headEulerAngleY
                                                                )
                                                        methodChannel?.invokeMethod(
                                                                "onFaceUpdate",
                                                                data
                                                        )
                                                    } else {
                                                        val data =
                                                                mapOf(
                                                                        "faceDetected" to false,
                                                                        "leftEyeOpen" to 0.0,
                                                                        "rightEyeOpen" to 0.0,
                                                                        "headEulerAngleY" to 0.0
                                                                )
                                                        methodChannel?.invokeMethod(
                                                                "onFaceUpdate",
                                                                data
                                                        )
                                                    }
                                                }
                                                .addOnFailureListener { e ->
                                                    Log.e(
                                                            "MainActivity",
                                                            "Face detection failed",
                                                            e
                                                    )
                                                }
                                                .addOnCompleteListener { imageProxy.close() }
                                    } else {
                                        imageProxy.close()
                                    }
                                }
                            }

            cameraProviderFuture.addListener(
                    {
                        val cameraProvider = cameraProviderFuture.get()
                        val preview =
                                CameraPreview.Builder()
                                        .setTargetAspectRatio(AspectRatio.RATIO_4_3)
                                        .setTargetRotation(windowManager.defaultDisplay.rotation)
                                        .build()
                                        .also { preview ->
                                            preview.setSurfaceProvider { request ->
                                                val texture = textureEntry?.surfaceTexture()
                                                texture?.setDefaultBufferSize(
                                                        request.resolution.width,
                                                        request.resolution.height
                                                )
                                                val surface = Surface(texture)
                                                request.provideSurface(
                                                        surface,
                                                        ContextCompat.getMainExecutor(this)
                                                ) {}

                                                // Send 4:3 dimensions to Flutter
                                                val width = request.resolution.width
                                                val height = request.resolution.height
                                                methodChannel?.invokeMethod(
                                                        "onCameraResolutionAvailable",
                                                        mapOf("width" to width, "height" to height)
                                                )
                                            }
                                        }

                        val cameraSelector = CameraSelector.DEFAULT_FRONT_CAMERA

                        try {
                            cameraProvider.unbindAll()
                            cameraProvider.bindToLifecycle(
                                    this,
                                    cameraSelector,
                                    preview,
                                    imageAnalyzer,
                                    imageCapture
                            )
                        } catch (exc: Exception) {
                            Log.e("MainActivity", "Use case binding failed", exc)
                        }
                    },
                    ContextCompat.getMainExecutor(this)
            )

            // Return just the texture ID as a Long value
            return textureEntry?.id() ?: -1L
        } catch (e: Exception) {
            Log.e("MainActivity", "Error initializing camera", e)
            return -1L
        }
    }

    private fun openBackCamera(): Long {
        // Check for camera permission first
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) !=
                        PackageManager.PERMISSION_GRANTED
        ) {
            ActivityCompat.requestPermissions(
                    this,
                    arrayOf(Manifest.permission.CAMERA),
                    CAMERA_PERMISSION_REQUEST
            )
            return -1 // Return invalid texture ID, will retry after permission granted
        }

        val textureEntry = flutterEngine?.renderer?.createSurfaceTexture()
        qrFlutterTexture = textureEntry

        val cameraProviderFuture = ProcessCameraProvider.getInstance(this)

        cameraProviderFuture.addListener(
                {
                    val cameraProvider = cameraProviderFuture.get()

                    // Define camera selector - back camera
                    val cameraSelector = CameraSelector.DEFAULT_BACK_CAMERA

                    // Create the preview use case without forcing aspect ratio
                    val preview =
                            CameraPreview.Builder()
                                    .build()

                    // Set up surface provider
                    val surfaceProvider =
                            androidx.camera.core.Preview.SurfaceProvider { request ->
                                val texture = textureEntry?.surfaceTexture()

                                // Set the buffer size to match the resolution
                                texture?.setDefaultBufferSize(
                                        request.resolution.width,
                                        request.resolution.height
                                )

                                val surface = Surface(texture)
                                request.provideSurface(
                                        surface,
                                        ContextCompat.getMainExecutor(this)
                                ) {
                                    Log.d("MainActivity", "Surface request result: $it")
                                }

                                // Send the actual resolution to Flutter
                                qrMethodChannel?.invokeMethod(
                                        "onCameraResolutionAvailable",
                                        mapOf(
                                                "width" to request.resolution.width,
                                                "height" to request.resolution.height
                                        )
                                )

                                Log.d(
                                        "MainActivity",
                                        "Camera resolution: ${request.resolution.width}x${request.resolution.height}"
                                )
                            }

                    preview.setSurfaceProvider(surfaceProvider)

                    // Set up barcode scanner options
                    val options =
                            BarcodeScannerOptions.Builder()
                                    .setBarcodeFormats(
                                            Barcode.FORMAT_QR_CODE,
                                            Barcode.FORMAT_AZTEC,
                                            Barcode.FORMAT_DATA_MATRIX,
                                            Barcode.FORMAT_PDF417
                                    )
                                    .build()

                    val scanner = BarcodeScanning.getClient(options)

                    // Set up image analyzer
                    val imageAnalyzer =
                            ImageAnalysis.Builder()
                                    .setBackpressureStrategy(ImageAnalysis.STRATEGY_KEEP_ONLY_LATEST)
                                    .build()
                                    .also { analysis ->
                                        analysis.setAnalyzer(cameraExecutor) { imageProxy ->
                                            val mediaImage = imageProxy.image
                                            if (mediaImage != null) {
                                                val image =
                                                        InputImage.fromMediaImage(
                                                                mediaImage,
                                                                imageProxy.imageInfo.rotationDegrees
                                                        )

                                                scanner.process(image)
                                                        .addOnSuccessListener { barcodes ->
                                                            for (barcode in barcodes) {
                                                                val rawValue = barcode.rawValue
                                                                Log.d(
                                                                        "QRCodeScanner",
                                                                        "Detected QR code: $rawValue"
                                                                )

                                                                qrMethodChannel?.invokeMethod(
                                                                        "onQRCodeDetected",
                                                                        mapOf("value" to rawValue)
                                                                )
                                                            }
                                                        }
                                                        .addOnFailureListener { e ->
                                                            Log.e(
                                                                    "QRCodeScanner",
                                                                    "Barcode scanning failed",
                                                                    e
                                                            )
                                                        }
                                                        .addOnCompleteListener {
                                                            imageProxy.close()
                                                        }
                                            } else {
                                                imageProxy.close()
                                            }
                                        }
                                    }

                    try {
                        cameraProvider.unbindAll()
                        cameraProvider.bindToLifecycle(
                                this,
                                cameraSelector,
                                preview,
                                imageAnalyzer
                        )
                    } catch (exc: Exception) {
                        Log.e("MainActivity", "Use case binding failed", exc)
                    }
                },
                ContextCompat.getMainExecutor(this)
        )

        return textureEntry?.id() ?: -1L
    }

    private fun captureSelfie(result: MethodChannel.Result) {
        val imageCapture =
                imageCapture
                        ?: return result.error(
                                "CAPTURE_FAILED",
                                "Image capture not initialized",
                                null
                        )

        // Create output options with higher quality
        imageCapture.takePicture(
                ContextCompat.getMainExecutor(this),
                object : ImageCapture.OnImageCapturedCallback() {
                    override fun onCaptureSuccess(image: ImageProxy) {
                        try {
                            // Convert ImageProxy to Bitmap
                            val buffer = image.planes[0].buffer
                            val bytes = ByteArray(buffer.remaining())
                            buffer.get(bytes)

                            // Convert to Bitmap
                            val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)

                            // Ensure the image is square
                            val size = Math.min(bitmap.width, bitmap.height)
                            val x = (bitmap.width - size) / 2
                            val y = (bitmap.height - size) / 2

                            // Crop to square
                            val squareBitmap = Bitmap.createBitmap(bitmap, x, y, size, size)

                            // Compress to JPEG with higher quality
                            val outputStream = ByteArrayOutputStream()
                            squareBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                            val compressedBytes = outputStream.toByteArray()

                            // Clean up camera resources after capturing selfie
                            cleanupFrontCamera()

                            // Return the byte array to Flutter
                            result.success(compressedBytes)
                        } catch (e: Exception) {
                            result.error("CAPTURE_FAILED", e.message, null)
                        } finally {
                            image.close()
                        }
                    }

                    override fun onError(exception: ImageCaptureException) {
                        result.error("CAPTURE_FAILED", exception.message, null)
                    }
                }
        )
    }

    // Add this new method to clean up front camera resources
    private fun cleanupFrontCamera() {
        try {
            val cameraProviderFuture = ProcessCameraProvider.getInstance(this)
            val cameraProvider = cameraProviderFuture.get()
            cameraProvider.unbindAll()

            // Release the texture
            flutterTexture?.release()
            flutterTexture = null

            // Set imageCapture to null to prevent further usage
            imageCapture = null

            Log.d("MainActivity", "Front camera resources cleaned up successfully")
        } catch (e: Exception) {
            Log.e("MainActivity", "Error cleaning up front camera resources", e)
        }
    }

    private fun fetchContacts(result: MethodChannel.Result) {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_CONTACTS) !=
                        PackageManager.PERMISSION_GRANTED
        ) {
            // Permission not granted, request it
            pendingContactsResult = result
            ActivityCompat.requestPermissions(
                    this,
                    arrayOf(Manifest.permission.READ_CONTACTS),
                    CONTACTS_PERMISSION_REQUEST
            )
        } else {
            // Permission already granted, fetch contacts
            fetchContactsWithPermission(result)
        }
    }

    private fun fetchContactsWithPermission(result: MethodChannel.Result) {
        try {
            val contacts = mutableListOf<Map<String, String>>()
            contentResolver.query(
                            ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                            arrayOf(
                                    ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME,
                                    ContactsContract.CommonDataKinds.Phone.NUMBER
                            ),
                            null,
                            null,
                            ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME
                    )
                    ?.use { cursor ->
                        while (cursor.moveToNext()) {
                            val name =
                                    cursor.getString(
                                            cursor.getColumnIndex(
                                                    ContactsContract.CommonDataKinds.Phone
                                                            .DISPLAY_NAME
                                            )
                                    )
                            val number =
                                    cursor.getString(
                                            cursor.getColumnIndex(
                                                    ContactsContract.CommonDataKinds.Phone.NUMBER
                                            )
                                    )
                            contacts.add(
                                    mapOf(
                                            "name" to name,
                                            "number" to number.replace("\\s".toRegex(), "")
                                    )
                            )
                        }
                    }
            result.success(contacts)
        } catch (e: Exception) {
            result.error("CONTACTS_ERROR", e.message, null)
        }
    }

    override fun onRequestPermissionsResult(
            requestCode: Int,
            permissions: Array<out String>,
            grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        when (requestCode) {
            CONTACTS_PERMISSION_REQUEST -> {
                if ((grantResults.isNotEmpty() &&
                                grantResults[0] == PackageManager.PERMISSION_GRANTED)
                ) {
                    // Permission granted
                    pendingContactsResult?.let { result ->
                        fetchContactsWithPermission(result)
                        pendingContactsResult = null
                    }
                } else {
                    // Permission denied
                    pendingContactsResult?.error(
                            "PERMISSION_DENIED",
                            "Contacts permission was denied",
                            null
                    )
                    pendingContactsResult = null
                }
                return
            }
            CAMERA_PERMISSION_REQUEST -> {
                if ((grantResults.isNotEmpty() &&
                                grantResults[0] == PackageManager.PERMISSION_GRANTED)
                ) {
                    // Permission granted, notify Flutter
                    qrMethodChannel?.invokeMethod("onCameraPermissionGranted", null)
                } else {
                    // Permission denied, notify Flutter
                    qrMethodChannel?.invokeMethod("onCameraPermissionDenied", null)
                }
                return
            }
        }
    }

    // Add a method to dispose of the camera resources
    private fun disposeCamera() {
        try {
            val cameraProviderFuture = ProcessCameraProvider.getInstance(this)
            val cameraProvider = cameraProviderFuture.get()
            cameraProvider.unbindAll()
            qrFlutterTexture?.release()
            qrFlutterTexture = null
        } catch (e: Exception) {
            Log.e("MainActivity", "Error disposing camera", e)
        }
    }

    // Add this new method to toggle the flashlight
    private fun toggleFlash(result: MethodChannel.Result) {
        try {
            val cameraProviderFuture = ProcessCameraProvider.getInstance(this)
            val cameraProvider = cameraProviderFuture.get()

            // Get the camera control from the currently bound use cases
            // This is the correct way to access the camera
            val camera =
                    cameraProvider.availableCameraInfos.firstOrNull()?.let { cameraInfo ->
                        cameraProvider.bindToLifecycle(
                                this,
                                CameraSelector.Builder()
                                        .addCameraFilter { listOf(cameraInfo) }
                                        .build()
                        )
                    }

            if (camera != null) {
                val cameraControl = camera.cameraControl
                val cameraInfo = camera.cameraInfo

                // Check if torch is available
                if (cameraInfo.hasFlashUnit()) {
                    // Get current torch state and toggle it
                    val isCurrentlyEnabled = cameraInfo.torchState.value == TorchState.ON
                    val newState = !isCurrentlyEnabled

                    cameraControl
                            .enableTorch(newState)
                            .addListener(
                                    {
                                        // Return the new state to Flutter
                                        result.success(newState)

                                        // Also notify Flutter about the torch state change
                                        qrMethodChannel?.invokeMethod(
                                                "onFlashStateChanged",
                                                mapOf("enabled" to newState)
                                        )
                                    },
                                    ContextCompat.getMainExecutor(this)
                            )
                } else {
                    result.error("FLASH_UNAVAILABLE", "This device doesn't have a flash unit", null)
                }
            } else {
                result.error("CAMERA_UNAVAILABLE", "Camera is not available", null)
            }
        } catch (e: Exception) {
            Log.e("MainActivity", "Error toggling flash", e)
            result.error("FLASH_ERROR", "Failed to toggle flash: ${e.message}", null)
        }
    }

    private fun startFaceLoginCamera(): Long {
        val textureEntry = flutterEngine?.renderer?.createSurfaceTexture()
        faceLoginTexture = textureEntry

        val cameraProviderFuture = ProcessCameraProvider.getInstance(this)

        // Create ImageCapture use case with higher quality settings
        imageCapture =
                ImageCapture.Builder()
                        .setCaptureMode(ImageCapture.CAPTURE_MODE_MAXIMIZE_QUALITY)
                        .setTargetAspectRatio(AspectRatio.RATIO_16_9)
                        .setJpegQuality(95)
                        .build()

        // Improve face detector options for login purposes
        val faceDetectorOptions = FaceDetectorOptions.Builder()
                .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_ACCURATE)
                .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_ALL)
                .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_ALL)
                .setMinFaceSize(0.35f)  // Require closer face for better quality
                .build()

        val detector = FaceDetection.getClient(faceDetectorOptions)

        val imageAnalyzer = ImageAnalysis.Builder()
                .setTargetAspectRatio(AspectRatio.RATIO_16_9)
                .setBackpressureStrategy(ImageAnalysis.STRATEGY_KEEP_ONLY_LATEST)
                .build()
                .also { analysis ->
                    analysis.setAnalyzer(cameraExecutor) { imageProxy ->
                        val mediaImage = imageProxy.image
                        if (mediaImage != null) {
                            val image = InputImage.fromMediaImage(
                                    mediaImage,
                                    imageProxy.imageInfo.rotationDegrees
                            )

                            detector.process(image)
                                    .addOnSuccessListener { faces ->
                                        if (faces.isNotEmpty()) {
                                            val face = faces[0]
                                            // Check if face is properly positioned
                                            val isGoodFace = face.headEulerAngleY in -15.0..15.0 && 
                                                   face.headEulerAngleZ in -15.0..15.0 &&
                                                   (face.leftEyeOpenProbability ?: 0f) > 0.8 &&
                                                   (face.rightEyeOpenProbability ?: 0f) > 0.8
                                            
                                            faceLoginMethodChannel?.invokeMethod(
                                                    "onFaceDetected",
                                                    mapOf(
                                                        "detected" to true,
                                                        "isGoodFace" to isGoodFace,
                                                        "message" to if (!isGoodFace) "Please look straight at the camera" else ""
                                                    )
                                            )
                                        } else {
                                            faceLoginMethodChannel?.invokeMethod(
                                                    "onFaceDetected",
                                                    mapOf(
                                                        "detected" to false,
                                                        "isGoodFace" to false,
                                                        "message" to "No face detected"
                                                    )
                                            )
                                        }
                                    }
                                    .addOnFailureListener { e ->
                                        Log.e("MainActivity", "Face detection failed", e)
                                    }
                                    .addOnCompleteListener { imageProxy.close() }
                        } else {
                            imageProxy.close()
                        }
                    }
                }

        cameraProviderFuture.addListener(
                {
                    val cameraProvider = cameraProviderFuture.get()

                    val preview =
                            CameraPreview.Builder()
                                    .setTargetAspectRatio(AspectRatio.RATIO_16_9)
                                    .build()

                    preview.setSurfaceProvider { request ->
                        val texture = textureEntry?.surfaceTexture()

                        // Calculate dimensions to maintain 9:16 aspect ratio
                        val width = request.resolution.width
                        val height = request.resolution.height

                        // Swap width and height for portrait orientation
                        val displayWidth = height
                        val displayHeight = width

                        texture?.setDefaultBufferSize(width, height)
                        val surface = Surface(texture)
                        request.provideSurface(surface, ContextCompat.getMainExecutor(this)) {}

                        // Send the correct portrait dimensions to Flutter
                        faceLoginMethodChannel?.invokeMethod(
                                "onCameraResolutionAvailable",
                                mapOf(
                                        "width" to displayWidth,
                                        "height" to displayHeight,
                                        "orientation" to 0 // Changed to -90 to counter-rotate
                                )
                        )
                    }

                    val cameraSelector = CameraSelector.DEFAULT_FRONT_CAMERA

                    try {
                        cameraProvider.unbindAll()
                        cameraProvider.bindToLifecycle(
                                this,
                                cameraSelector,
                                preview,
                                imageAnalyzer,
                                imageCapture
                        )
                    } catch (exc: Exception) {
                        Log.e("MainActivity", "Face login camera use case binding failed", exc)
                    }
                },
                ContextCompat.getMainExecutor(this)
        )

        return textureEntry?.id() ?: -1L
    }

    private fun stopFaceLoginCamera() {
        try {
            val cameraProviderFuture = ProcessCameraProvider.getInstance(this)
            val cameraProvider = cameraProviderFuture.get()
            cameraProvider.unbindAll()
            faceLoginTexture?.release()
            faceLoginTexture = null
        } catch (e: Exception) {
            Log.e("MainActivity", "Error stopping face login camera", e)
        }
    }

    // Add new method for capturing face image
    private fun captureFaceImage(result: MethodChannel.Result) {
        val imageCapture = imageCapture
        if (imageCapture == null) {
            result.error("CAPTURE_FAILED", "Image capture not initialized", null)
            return
        }

        imageCapture.takePicture(
                ContextCompat.getMainExecutor(this),
                object : ImageCapture.OnImageCapturedCallback() {
                    override fun onCaptureSuccess(image: ImageProxy) {
                        try {
                            val buffer = image.planes[0].buffer
                            val bytes = ByteArray(buffer.remaining())
                            buffer.get(bytes)

                            // Convert to Bitmap for processing
                            val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                            
                            // Ensure proper orientation
                            val matrix = Matrix()
                            
                            val rotatedBitmap = Bitmap.createBitmap(
                                bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true
                            )

                            // Convert back to bytes with high quality
                            val outputStream = ByteArrayOutputStream()
                            rotatedBitmap.compress(Bitmap.CompressFormat.JPEG, 100, outputStream)
                            result.success(outputStream.toByteArray())
                        } catch (e: Exception) {
                            result.error("CAPTURE_FAILED", e.message, null)
                        } finally {
                            image.close()
                        }
                    }

                    override fun onError(exception: ImageCaptureException) {
                        result.error("CAPTURE_FAILED", exception.message, null)
                    }
                }
        )
    }

    private fun generateQRCode(call: MethodCall, result: MethodChannel.Result) {
        try {
            val data = call.argument<String>("data")
            val size = call.argument<Int>("size") ?: 512
            val userId = call.argument<String>("userId")
            val name = call.argument<String>("name")

            if (data == null) {
                result.error("INVALID_ARGUMENTS", "Data is required", null)
                return
            }

            // Log the QR generation details for debugging
            Log.d("QRGenerator", "Generating QR code with data length: ${data.length}")
            Log.d("QRGenerator", "👤 CONTACT QR - User data")
            userId?.let { userIdValue ->
                Log.d("QRGenerator", "User ID: $userIdValue")
            }
            name?.let { nameValue ->
                Log.d("QRGenerator", "Name: $nameValue")
            }

            val writer = QRCodeWriter()
            val bitMatrix = writer.encode(data, BarcodeFormat.QR_CODE, size, size)
            val width = bitMatrix.width
            val height = bitMatrix.height
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565)

            for (x in 0 until width) {
                for (y in 0 until height) {
                    bitmap.setPixel(x, y, if (bitMatrix[x, y]) Color.BLACK else Color.WHITE)
                }
            }

            val stream = ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream)
            val byteArray = stream.toByteArray()

            Log.d("QRGenerator", "QR code generated successfully, size: ${byteArray.size} bytes")
            result.success(byteArray)
        } catch (e: WriterException) {
            Log.e("QRGenerator", "QR generation error: ${e.message}", e)
            result.error("QR_GENERATION_ERROR", "Failed to generate QR code: ${e.message}", null)
        } catch (e: Exception) {
            Log.e("QRGenerator", "Unknown error: ${e.message}", e)
            result.error("UNKNOWN_ERROR", "Unknown error: ${e.message}", null)
        }
    }
}
