import AVFoundation
import Contacts
import Flutter
import UIKit
import Vision
import CoreImage

@main
@objc class AppDelegate: FlutterAppDelegate {
  private var cameraSession: AVCaptureSession?
  private var textureRegistry: FlutterTextureRegistry?
  private var textureId: Int64?
  private var cameraPreviewStream: CameraPreviewStream?
  private var imageOutput: AVCapturePhotoOutput?
  private var methodChannel: FlutterMethodChannel?

  // Add QR code scanning properties
  private var qrCameraSession: AVCaptureSession?
  private var qrTextureId: Int64?
  private var qrCameraPreviewStream: QRCameraPreviewStream?
  private var qrMethodChannel: FlutterMethodChannel?
  private var torchEnabled: Bool = false

  // Add face login properties
  private var faceLoginSession: AVCaptureSession?
  private var faceLoginTextureId: Int64?
  private var faceLoginPreviewStream: FaceLoginPreviewStream?
  private var faceLoginMethodChannel: FlutterMethodChannel?
  private var faceLoginImageOutput: AVCapturePhotoOutput?

  // Add QR generator properties
  private var qrGeneratorMethodChannel: FlutterMethodChannel?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController

    // Device ID channel setup
    let deviceIdChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/device_id",
      binaryMessenger: controller.binaryMessenger)

    deviceIdChannel.setMethodCallHandler {
      (call: FlutterMethodCall, result: @escaping FlutterResult) in
      if call.method == "getDeviceId" {
        // Get the device's UUID (identifierForVendor)
        if let deviceId = UIDevice.current.identifierForVendor?.uuidString {
          // Get device model and manufacturer
          let deviceModel = UIDevice.current.model
          let deviceManufacturer = "Apple" // iOS devices are always from Apple
          
          // Return all device information
          let data: [String: String] = [
            "deviceId": deviceId,
            "deviceModel": deviceModel,
            "deviceManufacturer": deviceManufacturer
          ]
          
          result(data)
        } else {
          result(
            FlutterError(
              code: "UNAVAILABLE",
              message: "Device ID not available",
              details: nil))
        }
      } else {
        result(FlutterMethodNotImplemented)
      }
    }

    // Custom camera channel setup (for liveliness detection)
    methodChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/custom_camera",
      binaryMessenger: controller.binaryMessenger)

    methodChannel?.setMethodCallHandler {
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      switch call.method {
      case "openFrontCamera":
        self?.openFrontCamera(result: result)
      case "captureSelfie":
        self?.captureSelfie(result: result)
      case "cleanupFrontCamera":
        self?.cleanupFrontCamera(result: result)
      default:
        result(FlutterMethodNotImplemented)
      }
    }

    // Add contacts channel
    let contactsChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/contacts",
      binaryMessenger: controller.binaryMessenger)

    contactsChannel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      if call.method == "getContacts" {
        self?.getContacts(result: result)
      } else {
        result(FlutterMethodNotImplemented)
      }
    })

    // Add QR code camera channel
    qrMethodChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/qr_camera",
      binaryMessenger: controller.binaryMessenger)

    qrMethodChannel?.setMethodCallHandler {
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      switch call.method {
      case "openBackCamera":
        self?.openBackCameraForQR(result: result)
      case "disposeCamera":
        self?.disposeQRCamera(result: result)
      case "toggleFlash":
        self?.toggleFlash(result: result)
      default:
        result(FlutterMethodNotImplemented)
      }
    }

    // Add face login channel
    faceLoginMethodChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/face_login",
      binaryMessenger: controller.binaryMessenger)

    faceLoginMethodChannel?.setMethodCallHandler {
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      switch call.method {
      case "startFaceLoginCamera":
        self?.startFaceLoginCamera(result: result)
      case "stopFaceLoginCamera":
        self?.stopFaceLoginCamera(result: result)
      case "captureFaceImage":
        self?.captureFaceImage(result: result)
      default:
        result(FlutterMethodNotImplemented)
      }
    }

    GeneratedPluginRegistrant.register(with: self)
    
    // Initialize texture registry from the Flutter engine
    textureRegistry = controller.engine.textureRegistry

    // Add QR generator channel
    qrGeneratorMethodChannel = FlutterMethodChannel(
      name: "innovitegra.epurse.ewallet/qr_generator",
      binaryMessenger: controller.binaryMessenger)

    qrGeneratorMethodChannel?.setMethodCallHandler {
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      print("QRGenerator: Method called: \(call.method)")
      switch call.method {
      case "test":
        print("QRGenerator: Test method called")
        result("OK")
      case "generateQRCode":
        print("QRGenerator: generateQRCode method called")
        self?.generateQRCode(call: call, result: result)
      default:
        print("QRGenerator: Unknown method: \(call.method)")
        result(FlutterMethodNotImplemented)
      }
    }
    
    print("QRGenerator: Method channel registered successfully")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func getContacts(result: @escaping FlutterResult) {
    let store = CNContactStore()
    store.requestAccess(for: .contacts) { (granted, error) in
      if granted {
        let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
        let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
        var contacts: [[String: String]] = []

        do {
          try store.enumerateContacts(with: request) { (contact, stopPointer) in
            for phoneNumber in contact.phoneNumbers {
              let number = phoneNumber.value.stringValue
              let name = "\(contact.givenName) \(contact.familyName)".trimmingCharacters(
                in: .whitespaces)
              contacts.append([
                "name": name,
                "number": number,
              ])
            }
          }
          result(contacts)
        } catch {
          result(
            FlutterError(
              code: "CONTACTS_ERROR",
              message: error.localizedDescription,
              details: nil))
        }
      } else {
        result(
          FlutterError(
            code: "PERMISSION_DENIED",
            message: "Contacts permission not granted",
            details: nil))
      }
    }
  }

  private func openFrontCamera(result: @escaping FlutterResult) {
    // Request camera permission
    AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
      if granted {
        DispatchQueue.main.async {
          self?.setupCamera(result: result)
        }
      } else {
        result(
          FlutterError(
            code: "CAMERA_ACCESS_DENIED",
            message: "Camera permission not granted",
            details: nil))
      }
    }
  }

  private func setupCamera(result: @escaping FlutterResult) {
    guard let registry = textureRegistry else { return }

    // Initialize capture session
    let session = AVCaptureSession()
    // Explicitly set to photo preset which is 4:3 on iOS devices
    session.sessionPreset = .photo

    // Get front camera
    guard
      let frontCamera = AVCaptureDevice.default(
        .builtInWideAngleCamera,
        for: .video,
        position: .front)
    else {
      result(
        FlutterError(
          code: "CAMERA_UNAVAILABLE",
          message: "Front camera not available",
          details: nil))
      return
    }

    do {
      // Create input
      let input = try AVCaptureDeviceInput(device: frontCamera)
      if session.canAddInput(input) {
        session.addInput(input)
      }

      // Setup video output
      let videoOutput = AVCaptureVideoDataOutput()
      videoOutput.videoSettings = [
        kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA
      ]

      let cameraPreview = CameraPreviewStream(methodChannel: methodChannel)
      videoOutput.setSampleBufferDelegate(
        cameraPreview, queue: DispatchQueue(label: "camera_queue"))
      if session.canAddOutput(videoOutput) {
        session.addOutput(videoOutput)
      }

      // Fix orientation
      if let connection = videoOutput.connection(with: .video) {
        connection.videoOrientation = .portrait
        connection.isVideoMirrored = true
      }

      // Setup photo output
      let photoOutput = AVCapturePhotoOutput()
      if session.canAddOutput(photoOutput) {
        session.addOutput(photoOutput)
        imageOutput = photoOutput
      }

      // Create and register texture
      let textureId = registry.register(cameraPreview)
      cameraPreview.setTextureFrameAvailable { [weak registry] in
        registry?.textureFrameAvailable(textureId)
      }

      // Store references
      self.cameraSession = session
      self.textureId = textureId
      self.cameraPreviewStream = cameraPreview

      // Start session
      DispatchQueue.global(qos: .userInitiated).async {
        session.startRunning()
      }

      // Get actual camera dimensions from the device format
      let dimensions = CMVideoFormatDescriptionGetDimensions(
        frontCamera.activeFormat.formatDescription)
      let width = Int(dimensions.width)
      let height = Int(dimensions.height)

      // Calculate 4:3 dimensions if needed
      var finalWidth = width
      var finalHeight = height

      // Ensure we're sending 4:3 ratio dimensions to Flutter
      let aspectRatio = Double(width) / Double(height)
      if abs(aspectRatio - (4.0 / 3.0)) > 0.1 {
        // If not close to 4:3, calculate new dimensions
        if width > height {
          // Landscape orientation
          finalHeight = width * 3 / 4
        } else {
          // Portrait orientation
          finalWidth = height * 4 / 3
        }
      }

      // Return the texture ID
      result(NSNumber(value: textureId))

      // Send 4:3 dimensions to Flutter
      DispatchQueue.main.async {
        self.methodChannel?.invokeMethod(
          "onCameraResolutionAvailable",
          arguments: [
            "width": finalWidth,
            "height": finalHeight,
          ])
      }

    } catch {
      result(
        FlutterError(
          code: "CAMERA_INIT_ERROR",
          message: error.localizedDescription,
          details: nil))
    }
  }

  private func captureSelfie(result: @escaping FlutterResult) {
    print("captureSelfie method called")

    // Check if we have a current pixel buffer from the camera stream
    guard let cameraPreviewStream = cameraPreviewStream,
      let pixelBuffer = cameraPreviewStream.getCurrentPixelBuffer()
    else {
      print("No pixel buffer available")
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: "No camera frame available",
          details: nil))
      return
    }

    // Convert pixel buffer to UIImage
    let ciImage = CIImage(cvPixelBuffer: pixelBuffer)
    let context = CIContext()
    guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
      print("Failed to create CGImage")
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: "Failed to process camera frame",
          details: nil))
      return
    }

    let uiImage = UIImage(cgImage: cgImage)

    // Convert UIImage to JPEG data
    guard let imageData = uiImage.jpegData(compressionQuality: 0.9) else {
      print("Failed to convert image to JPEG")
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: "Failed to encode image",
          details: nil))
      return
    }

    print("Photo captured successfully from video feed, data size: \(imageData.count) bytes")

    // Return the image data to Flutter
    result(imageData)

    // Clean up camera resources
    DispatchQueue.main.async { [weak self] in
      print("Cleaning up camera resources")
      let dummyResult: FlutterResult = { _ in }
      self?.cleanupFrontCamera(result: dummyResult)
    }
  }

  private func cleanupFrontCamera(result: @escaping FlutterResult) {
    // Stop the camera session
    if let session = cameraSession {
      session.stopRunning()
    }

    // Release the texture
    if let textureId = textureId, let registry = textureRegistry {
      registry.unregisterTexture(textureId)
    }

    // Reset all camera-related properties
    cameraSession = nil
    textureId = nil
    cameraPreviewStream = nil
    imageOutput = nil

    // Return success
    result(nil)
  }

  // QR Code scanning implementation
  private func openBackCameraForQR(result: @escaping FlutterResult) {
    // Request camera permission
    AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
      if granted {
        DispatchQueue.main.async {
          self?.setupQRCamera(result: result)
        }
      } else {
        result(
          FlutterError(
            code: "CAMERA_ACCESS_DENIED",
            message: "Camera permission not granted",
            details: nil))
      }
    }
  }

  private func setupQRCamera(result: @escaping FlutterResult) {
    guard let registry = textureRegistry else { return }

    // Initialize capture session
    let session = AVCaptureSession()
    session.sessionPreset = .high  // Use high quality for QR scanning

    // Get back camera
    guard
      let backCamera = AVCaptureDevice.default(
        .builtInWideAngleCamera,
        for: .video,
        position: .back)
    else {
      result(
        FlutterError(
          code: "CAMERA_UNAVAILABLE",
          message: "Back camera not available",
          details: nil))
      return
    }

    do {
      // Create input
      let input = try AVCaptureDeviceInput(device: backCamera)
      if session.canAddInput(input) {
        session.addInput(input)
      }

      // Setup video output
      let videoOutput = AVCaptureVideoDataOutput()
      videoOutput.videoSettings = [
        kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA
      ]

      // Create QR camera preview stream
      let qrPreview = QRCameraPreviewStream(methodChannel: qrMethodChannel)
      videoOutput.setSampleBufferDelegate(qrPreview, queue: DispatchQueue(label: "qr_camera_queue"))
      if session.canAddOutput(videoOutput) {
        session.addOutput(videoOutput)
      }

      // Setup metadata output for QR code detection
      let metadataOutput = AVCaptureMetadataOutput()
      if session.canAddOutput(metadataOutput) {
        session.addOutput(metadataOutput)
        metadataOutput.setMetadataObjectsDelegate(qrPreview, queue: DispatchQueue.main)
        metadataOutput.metadataObjectTypes = [.qr, .aztec, .dataMatrix, .pdf417]  // Match Android formats
      }

      // Fix orientation
      if let connection = videoOutput.connection(with: .video) {
        connection.videoOrientation = .portrait
      }

      // Create and register texture
      let textureId = registry.register(qrPreview)
      qrPreview.setTextureFrameAvailable { [weak registry] in
        registry?.textureFrameAvailable(textureId)
      }

      // Store references
      self.qrCameraSession = session
      self.qrTextureId = textureId
      self.qrCameraPreviewStream = qrPreview

      // Start session
      DispatchQueue.global(qos: .userInitiated).async {
        session.startRunning()
      }

      // Get actual camera dimensions
      let dimensions = CMVideoFormatDescriptionGetDimensions(
        backCamera.activeFormat.formatDescription)
      let width = Int(dimensions.width)
      let height = Int(dimensions.height)

      // Calculate aspect ratio (9:16 for portrait mode to match Android)
      let aspectRatio = 9.0 / 16.0

      // Return the texture ID
      result(NSNumber(value: textureId))

      // Notify Flutter that camera is ready
      DispatchQueue.main.async {
        self.qrMethodChannel?.invokeMethod("onCameraReady", arguments: nil)

        // Send resolution to Flutter
        self.qrMethodChannel?.invokeMethod(
          "onCameraResolutionAvailable",
          arguments: [
            "width": width,
            "height": height,
            "aspectRatio": aspectRatio,
          ])
      }

    } catch {
      result(
        FlutterError(
          code: "CAMERA_INIT_ERROR",
          message: error.localizedDescription,
          details: nil))
    }
  }

  private func disposeQRCamera(result: @escaping FlutterResult) {
    // Stop the camera session
    if let session = qrCameraSession {
      session.stopRunning()
    }

    // Release the texture
    if let textureId = qrTextureId, let registry = textureRegistry {
      registry.unregisterTexture(textureId)
    }

    // Reset all camera-related properties
    qrCameraSession = nil
    qrTextureId = nil
    qrCameraPreviewStream = nil
    torchEnabled = false

    // Return success
    result(nil)
  }

  private func toggleFlash(result: @escaping FlutterResult) {
    guard let session = qrCameraSession,
      let device = AVCaptureDevice.default(for: .video)
    else {
      result(
        FlutterError(
          code: "CAMERA_UNAVAILABLE",
          message: "Camera is not available",
          details: nil))
      return
    }

    if device.hasTorch {
      do {
        try device.lockForConfiguration()

        // Toggle torch state
        torchEnabled = !torchEnabled
        device.torchMode = torchEnabled ? .on : .off

        device.unlockForConfiguration()

        // Return the new state to Flutter
        result(torchEnabled)

        // Also notify Flutter about the torch state change
        qrMethodChannel?.invokeMethod("onFlashStateChanged", arguments: ["enabled": torchEnabled])
      } catch {
        result(
          FlutterError(
            code: "FLASH_ERROR",
            message: "Failed to toggle flash: \(error.localizedDescription)",
            details: nil))
      }
    } else {
      result(
        FlutterError(
          code: "FLASH_UNAVAILABLE",
          message: "This device doesn't have a flash unit",
          details: nil))
    }
  }

  private func startFaceLoginCamera(result: @escaping FlutterResult) {
    guard let registry = textureRegistry else { return }

    // Initialize capture session
    let session = AVCaptureSession()
    session.sessionPreset = .high

    // Get front camera
    guard
      let frontCamera = AVCaptureDevice.default(
        .builtInWideAngleCamera,
        for: .video,
        position: .front)
    else {
      result(
        FlutterError(
          code: "CAMERA_UNAVAILABLE",
          message: "Front camera not available",
          details: nil))
      return
    }

    do {
      // Create input
      let input = try AVCaptureDeviceInput(device: frontCamera)
      if session.canAddInput(input) {
        session.addInput(input)
      }

      // Setup video output
      let videoOutput = AVCaptureVideoDataOutput()
      videoOutput.videoSettings = [
        kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA
      ]

      // Create preview stream
      let facePreview = FaceLoginPreviewStream(methodChannel: faceLoginMethodChannel)
      videoOutput.setSampleBufferDelegate(
        facePreview, queue: DispatchQueue(label: "face_login_queue"))

      if session.canAddOutput(videoOutput) {
        session.addOutput(videoOutput)
      }

      // Setup photo output
      let photoOutput = AVCapturePhotoOutput()
      if session.canAddOutput(photoOutput) {
        session.addOutput(photoOutput)
        faceLoginImageOutput = photoOutput
      }

      // Fix orientation
      if let connection = videoOutput.connection(with: .video) {
        connection.videoOrientation = .portrait
        connection.isVideoMirrored = true
      }

      // Create and register texture
      let textureId = registry.register(facePreview)
      facePreview.setTextureFrameAvailable { [weak registry] in
        registry?.textureFrameAvailable(textureId)
      }

      // Store references
      self.faceLoginSession = session
      self.faceLoginTextureId = textureId
      self.faceLoginPreviewStream = facePreview

      // Start session
      DispatchQueue.global(qos: .userInitiated).async {
        session.startRunning()
      }

      // Get dimensions
      let dimensions = CMVideoFormatDescriptionGetDimensions(
        frontCamera.activeFormat.formatDescription)
      let width = Int(dimensions.width)
      let height = Int(dimensions.height)

      // Return the texture ID
      result(NSNumber(value: textureId))

      // Send dimensions to Flutter
      DispatchQueue.main.async {
        self.faceLoginMethodChannel?.invokeMethod(
          "onCameraResolutionAvailable",
          arguments: [
            "width": width,
            "height": height,
            "orientation": 0,
          ])
      }

    } catch {
      result(
        FlutterError(
          code: "CAMERA_INIT_ERROR",
          message: error.localizedDescription,
          details: nil))
    }
  }

  private func stopFaceLoginCamera(result: @escaping FlutterResult) {
    // Stop the camera session
    if let session = faceLoginSession {
      session.stopRunning()
    }

    // Release the texture
    if let textureId = faceLoginTextureId, let registry = textureRegistry {
      registry.unregisterTexture(textureId)
    }

    // Reset properties
    faceLoginSession = nil
    faceLoginTextureId = nil
    faceLoginPreviewStream = nil
    faceLoginImageOutput = nil

    result(nil)
  }

  private func captureFaceImage(result: @escaping FlutterResult) {
    guard let imageOutput = faceLoginImageOutput else {
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: "Camera not initialized",
          details: nil))
      return
    }

    let settings = AVCapturePhotoSettings()
    imageOutput.capturePhoto(with: settings, delegate: FaceImageCaptureDelegate(result: result))
  }

  private func generateQRCode(call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard let args = call.arguments as? [String: Any],
          let data = args["data"] as? String else {
      result(FlutterError(
        code: "INVALID_ARGUMENTS",
        message: "Data is required",
        details: nil))
      return
    }

    let size = args["size"] as? Int ?? 512
    let userId = args["userId"] as? String
    let name = args["name"] as? String

    // Log the QR generation details for debugging
    print("QRGenerator: Generating QR code with data length: \(data.count)")
    print("QRGenerator: 👤 CONTACT QR - User data")
    if let userId = userId {
      print("QRGenerator: User ID: \(userId)")
    }
    if let name = name {
      print("QRGenerator: Name: \(name)")
    }

    // Create QR code using Core Image
    guard let filter = CIFilter(name: "CIQRCodeGenerator") else {
      result(FlutterError(
        code: "QR_GENERATION_ERROR",
        message: "Failed to create QR code filter",
        details: nil))
      return
    }

    // Set the input data
    let inputData = data.data(using: .utf8) ?? Data()
    filter.setValue(inputData, forKey: "inputMessage")
    filter.setValue("M", forKey: "inputCorrectionLevel") // Medium error correction

    // Get the output image
    guard let outputImage = filter.outputImage else {
      result(FlutterError(
        code: "QR_GENERATION_ERROR",
        message: "Failed to generate QR code image",
        details: nil))
      return
    }

    // Scale the image to the desired size
    let scaleX = CGFloat(size) / outputImage.extent.size.width
    let scaleY = CGFloat(size) / outputImage.extent.size.height
    let scaledImage = outputImage.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))

    // Convert to UIImage
    let context = CIContext()
    guard let cgImage = context.createCGImage(scaledImage, from: scaledImage.extent) else {
      result(FlutterError(
        code: "QR_GENERATION_ERROR",
        message: "Failed to create CGImage from QR code",
        details: nil))
      return
    }

    let uiImage = UIImage(cgImage: cgImage)

    // Convert to PNG data
    guard let imageData = uiImage.pngData() else {
      result(FlutterError(
        code: "QR_GENERATION_ERROR",
        message: "Failed to convert QR code to PNG data",
        details: nil))
      return
    }

    print("QRGenerator: QR code generated successfully, size: \(imageData.count) bytes")
    result(imageData)
  }
}

// Camera preview stream class
class CameraPreviewStream: NSObject, FlutterTexture, AVCaptureVideoDataOutputSampleBufferDelegate {
  private var pixelBuffer: CVPixelBuffer?
  private weak var methodChannel: FlutterMethodChannel?
  private var textureFrameAvailable: (() -> Void)?
  private let faceDetectionRequest = VNDetectFaceLandmarksRequest()
  private let sequenceRequestHandler = VNSequenceRequestHandler()
  private var lastFaceObservation: VNFaceObservation?
  private var lastEyeState: Bool = false  // false = open, true = closed
  private let blinkThreshold: Float = 0.2
  private let headTurnThreshold: Double = 0.3  // in radians

  init(methodChannel: FlutterMethodChannel?) {
    self.methodChannel = methodChannel
    super.init()
  }

  func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
    guard let pixelBuffer = pixelBuffer else { return nil }
    return Unmanaged.passRetained(pixelBuffer)
  }

  func onTextureUnregistered(_ texture: Int64) {
    pixelBuffer = nil
  }

  func setTextureFrameAvailable(_ callback: @escaping () -> Void) {
    textureFrameAvailable = callback
  }

  func captureOutput(
    _ output: AVCaptureOutput,
    didOutput sampleBuffer: CMSampleBuffer,
    from connection: AVCaptureConnection
  ) {
    guard let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }

    // Store the pixel buffer directly (maintain 4:3 ratio)
    self.pixelBuffer = imageBuffer

    // Notify Flutter that a new frame is available
    DispatchQueue.main.async { [weak self] in
      self?.textureFrameAvailable?()
    }

    // Perform face detection using Vision framework
    detectFace(in: imageBuffer)
  }

  private func detectFace(in pixelBuffer: CVPixelBuffer) {
    let orientation = CGImagePropertyOrientation.right  // Adjust based on camera orientation

    // Create a handler for Vision requests
    let requestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: orientation)

    // Create a request to detect face landmarks
    let request = VNDetectFaceLandmarksRequest { [weak self] (request, error) in
      guard let self = self else { return }

      if let error = error {
        print("Face detection error: \(error.localizedDescription)")
        return
      }

      guard let observations = request.results as? [VNFaceObservation],
        let face = observations.first
      else {
        // No face detected
        DispatchQueue.main.async {
          let data: [String: Any] = [
            "faceDetected": false,
            "leftEyeOpen": 0.0,
            "rightEyeOpen": 0.0,
            "headEulerAngleY": 0.0,
          ]
          self.methodChannel?.invokeMethod("onFaceUpdate", arguments: data)
        }
        return
      }

      // Face detected, extract landmarks
      self.lastFaceObservation = face

      // Process blink detection and head movement
      let (leftEyeOpen, rightEyeOpen) = self.detectBlink(face)
      let headEulerAngleY = self.processHeadPose(face)

      // Send data to Flutter
      DispatchQueue.main.async {
        let data: [String: Any] = [
          "faceDetected": true,
          "leftEyeOpen": leftEyeOpen,
          "rightEyeOpen": rightEyeOpen,
          "headEulerAngleY": headEulerAngleY,
        ]
        self.methodChannel?.invokeMethod("onFaceUpdate", arguments: data)
      }
    }

    // Perform the request
    do {
      try requestHandler.perform([request])
    } catch {
      print("Failed to perform face detection: \(error.localizedDescription)")
    }
  }

  private func detectBlink(_ face: VNFaceObservation) -> (Double, Double) {
    guard let landmarks = face.landmarks,
      let leftEye = landmarks.leftEye,
      let rightEye = landmarks.rightEye
    else {
      return (0.5, 0.5)  // Default values if eyes not detected
    }

    let leftEAR = calculateEyeAspectRatio(eye: leftEye)
    let rightEAR = calculateEyeAspectRatio(eye: rightEye)

    // Convert EAR to openness value (0.0 = closed, 1.0 = fully open)
    // EAR values typically range from ~0.05 (closed) to ~0.3 (open)
    let leftOpenness = convertEARToOpenness(leftEAR)
    let rightOpenness = convertEARToOpenness(rightEAR)

    // Update eye state for blink detection
    let averageEAR = (leftEAR + rightEAR) / 2.0
    let eyesClosed = averageEAR < blinkThreshold
    lastEyeState = eyesClosed

    return (leftOpenness, rightOpenness)
  }

  private func calculateEyeAspectRatio(eye: VNFaceLandmarkRegion2D) -> Float {
    let points = eye.normalizedPoints

    // Ensure we have enough points for EAR calculation
    guard points.count >= 6 else {
      return 0.2  // Default value if not enough points
    }

    // EAR = (||p2-p6|| + ||p3-p5||) / (2 * ||p1-p4||)
    // Using simplified indices - actual indices may vary based on Vision's point ordering

    // Vertical distances (height)
    let height1 = distance(from: points[1], to: points[5])
    let height2 = distance(from: points[2], to: points[4])

    // Horizontal distance (width)
    let width = distance(from: points[0], to: points[3])

    // Calculate EAR
    if width == 0 { return 0.2 }  // Avoid division by zero
    let ear = (height1 + height2) / (2.0 * width)

    return ear
  }

  private func distance(from p1: CGPoint, to p2: CGPoint) -> Float {
    let dx = p2.x - p1.x
    let dy = p2.y - p1.y
    return Float(sqrt(dx * dx + dy * dy))
  }

  private func convertEARToOpenness(_ ear: Float) -> Double {
    // Convert EAR to a 0-1 range where:
    // - EAR <= blinkThreshold means eyes closed (0.0)
    // - EAR >= 0.3 means eyes fully open (1.0)
    // - Values in between are linearly interpolated

    let minEAR = blinkThreshold
    let maxEAR: Float = 0.3

    if ear <= minEAR {
      return 0.0
    } else if ear >= maxEAR {
      return 1.0
    } else {
      return Double((ear - minEAR) / (maxEAR - minEAR))
    }
  }

  private func processHeadPose(_ face: VNFaceObservation) -> Double {
    guard let yaw = face.yaw?.doubleValue else {
      return 0.0
    }

    // Convert yaw from radians to degrees for consistency with Android
    let yawDegrees = yaw * 180.0 / .pi

    // Return the head euler angle Y in degrees
    return yawDegrees
  }

  // Add method to get the current pixel buffer
  func getCurrentPixelBuffer() -> CVPixelBuffer? {
    return pixelBuffer
  }
}

// Photo capture delegate
class PhotoCaptureDelegate: NSObject, AVCapturePhotoCaptureDelegate {
  private let completion: (Data?) -> Void

  init(completion: @escaping (Data?) -> Void) {
    self.completion = completion
    super.init()
    print("PhotoCaptureDelegate initialized")
  }

  func photoOutput(
    _ output: AVCapturePhotoOutput,
    didFinishProcessingPhoto photo: AVCapturePhoto,
    error: Error?
  ) {
    print("photoOutput delegate method called")

    if let error = error {
      print("Photo capture error: \(error.localizedDescription)")
      completion(nil)
      return
    }

    guard let imageData = photo.fileDataRepresentation() else {
      print("Failed to get image data")
      completion(nil)
      return
    }

    print("Photo captured successfully, data size: \(imageData.count) bytes")
    // Return the image data directly
    completion(imageData)
  }

  // Add older delegate methods for compatibility
  func photoOutput(
    _ output: AVCapturePhotoOutput,
    willBeginCaptureFor resolvedSettings: AVCaptureResolvedPhotoSettings
  ) {
    print("Will begin capture")
  }

  func photoOutput(
    _ output: AVCapturePhotoOutput,
    willCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings
  ) {
    print("Will capture photo")
  }

  func photoOutput(
    _ output: AVCapturePhotoOutput,
    didCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings
  ) {
    print("Did capture photo")
  }
}

// QR Camera preview stream class
class QRCameraPreviewStream: NSObject, FlutterTexture, AVCaptureVideoDataOutputSampleBufferDelegate,
  AVCaptureMetadataOutputObjectsDelegate
{
  private var pixelBuffer: CVPixelBuffer?
  private weak var methodChannel: FlutterMethodChannel?
  private var textureFrameAvailable: (() -> Void)?
  private var processingCode: Bool = false

  init(methodChannel: FlutterMethodChannel?) {
    self.methodChannel = methodChannel
    super.init()
  }

  func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
    guard let pixelBuffer = pixelBuffer else { return nil }
    return Unmanaged.passRetained(pixelBuffer)
  }

  func setTextureFrameAvailable(_ callback: @escaping () -> Void) {
    textureFrameAvailable = callback
  }

  func captureOutput(
    _ output: AVCaptureOutput,
    didOutput sampleBuffer: CMSampleBuffer,
    from connection: AVCaptureConnection
  ) {
    guard let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }

    // Store the pixel buffer
    self.pixelBuffer = imageBuffer

    // Notify Flutter that a new frame is available
    DispatchQueue.main.async { [weak self] in
      self?.textureFrameAvailable?()
    }
  }

  // Handle QR code detection
  func metadataOutput(
    _ output: AVCaptureMetadataOutput,
    didOutput metadataObjects: [AVMetadataObject],
    from connection: AVCaptureConnection
  ) {
    // Prevent multiple detections
    if processingCode {
      return
    }

    // Look for QR codes
    for metadata in metadataObjects {
      guard let readableObject = metadata as? AVMetadataMachineReadableCodeObject,
        let value = readableObject.stringValue
      else {
        continue
      }

      // QR code detected
      processingCode = true
      print("QR code detected: \(value)")

      // Send the result to Flutter
      DispatchQueue.main.async { [weak self] in
        self?.methodChannel?.invokeMethod("onQRCodeDetected", arguments: ["value": value])
      }

      break
    }
  }
}

// Face login preview stream class
class FaceLoginPreviewStream: NSObject, FlutterTexture, AVCaptureVideoDataOutputSampleBufferDelegate
{
  private var pixelBuffer: CVPixelBuffer?
  private weak var methodChannel: FlutterMethodChannel?
  private var textureFrameAvailable: (() -> Void)?
  private let faceDetectionRequest = VNDetectFaceLandmarksRequest()
  private let sequenceHandler = VNSequenceRequestHandler()

  init(methodChannel: FlutterMethodChannel?) {
    self.methodChannel = methodChannel
    super.init()
  }

  func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
    guard let pixelBuffer = pixelBuffer else { return nil }
    return Unmanaged.passRetained(pixelBuffer)
  }

  func setTextureFrameAvailable(_ callback: @escaping () -> Void) {
    textureFrameAvailable = callback
  }

  func captureOutput(
    _ output: AVCaptureOutput,
    didOutput sampleBuffer: CMSampleBuffer,
    from connection: AVCaptureConnection
  ) {
    guard let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }

    self.pixelBuffer = imageBuffer
    textureFrameAvailable?()

    // Perform face detection
    detectFace(in: imageBuffer)
  }

  private func detectFace(in pixelBuffer: CVPixelBuffer) {
    let faceDetectionRequest = VNDetectFaceRectanglesRequest { [weak self] request, error in
      guard let self = self,
        let observations = request.results as? [VNFaceObservation]
      else {
        // No face detected
        DispatchQueue.main.async {
          self?.methodChannel?.invokeMethod(
            "onFaceDetected",
            arguments: [
              "detected": false,
              "isGoodFace": false,
              "message": "No face detected",
            ])
        }
        return
      }

      // Process the first detected face
      if let face = observations.first {
        // Check face position and quality
        let isGoodFace = self.checkFaceQuality(face)

        DispatchQueue.main.async {
          self.methodChannel?.invokeMethod(
            "onFaceDetected",
            arguments: [
              "detected": true,
              "isGoodFace": isGoodFace,
              "message": isGoodFace ? "" : "Please look straight at the camera",
            ])
        }
      }
    }

    try? sequenceHandler.perform([faceDetectionRequest], on: pixelBuffer)
  }

  private func checkFaceQuality(_ face: VNFaceObservation) -> Bool {
    // Check if face is centered and of good size
    let faceBounds = face.boundingBox
    let isCentered = abs(faceBounds.midX - 0.5) < 0.2 && abs(faceBounds.midY - 0.5) < 0.2
    let isGoodSize = faceBounds.width > 0.5 && faceBounds.height > 0.5

    return isCentered && isGoodSize
  }
}

// Photo capture delegate
class FaceImageCaptureDelegate: NSObject, AVCapturePhotoCaptureDelegate {
  private let result: FlutterResult

  init(result: @escaping FlutterResult) {
    self.result = result
    super.init()
  }

  func photoOutput(
    _ output: AVCapturePhotoOutput,
    didFinishProcessingPhoto photo: AVCapturePhoto,
    error: Error?
  ) {
    if let error = error {
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: error.localizedDescription,
          details: nil))
      return
    }

    guard let imageData = photo.fileDataRepresentation() else {
      result(
        FlutterError(
          code: "CAPTURE_ERROR",
          message: "Failed to get image data",
          details: nil))
      return
    }

    result(imageData)
  }
}
