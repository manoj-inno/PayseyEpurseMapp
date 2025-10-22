import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:io' show Platform;

import '../../storage/preferences_manager.dart';

class NotificationRemoteDataSource {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotifications;

  static const androidChannel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
  );

  NotificationRemoteDataSource(
    this._firebaseMessaging,
    this._localNotifications,
  );

  Future<void> initialize() async {
    // Initialize local notifications
    await _initializeLocalNotifications();

    // Create notification channel for Android
    await _createNotificationChannel();

    if (Platform.isIOS) {
      // Request provisional authorization and wait for APNS token
      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      // Wait for APNS token to be set
      final apnsToken = await _firebaseMessaging.getAPNSToken();
      if (apnsToken == null) {
        debugPrint('Waiting for APNS token...');
        // You might want to implement a retry mechanism here
      }
    }

    // Configure foreground notifications
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Get and print FCM token
    final fcmToken = await _firebaseMessaging.getToken();
    debugPrint('FCM Token: $fcmToken');
    final prefs = await PreferencesManager.getInstance();
    await prefs.setFCMToken(fcmToken ?? '');

    // Listen for token refresh
    _firebaseMessaging.onTokenRefresh.listen((newToken) async {
      debugPrint('FCM Token Refreshed: $newToken');
      final prefs = await PreferencesManager.getInstance();
      await prefs.setFCMToken(newToken);
    });

    // Handle background messages
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle when notification is clicked while app is in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationOpen);
  }

  // Background message handler must be a top-level function
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    debugPrint('Handling background message: ${message.messageId}');
    // You can handle the background message here
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    debugPrint('Got a message whilst in the foreground!');
    debugPrint('Message data: ${message.data}');

    if (message.notification != null) {
      debugPrint(
          'Message also contained a notification: ${message.notification}');

      // Show local notification for foreground messages
      await _localNotifications.show(
        message.hashCode,
        message.notification?.title,
        message.notification?.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            // sound: AndroidNotificationSound.defaultSound,
            androidChannel.id,
            androidChannel.name,
            channelDescription: androidChannel.description,
            importance: Importance.max,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
          ),
          iOS: const DarwinNotificationDetails(
              // sound: 'default',
              ),
        ),
        payload: message.data.toString(),
      );
    }
  }

  void _handleNotificationOpen(RemoteMessage message) {
    debugPrint('Notification clicked: ${message.messageId}');
    // Handle notification click here
  }

  Future<void> _initializeLocalNotifications() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) {
        debugPrint('Local notification clicked: ${details.payload}');
      },
    );
  }

  Future<void> _createNotificationChannel() async {
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);
  }

  Stream<RemoteMessage> getMessageStream() {
    return FirebaseMessaging.onMessage;
  }

  Future<bool> requestPermission() async {
    if (Platform.isIOS) {
      // For iOS, first check if we have the APNS token
      final apnsToken = await _firebaseMessaging.getAPNSToken();
      if (apnsToken == null) {
        // Wait a bit and retry if APNS token is not available
        await Future.delayed(const Duration(seconds: 1));
        return requestPermission();
      }
    }

    // Request Firebase permission
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    // For Android 13 and above, we need to request notification permission
    if (Platform.isAndroid) {
      final androidImplementation =
          _localNotifications.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      // Request permission for Android 13 and above
      final granted =
          await androidImplementation?.requestNotificationsPermission();

      return settings.authorizationStatus == AuthorizationStatus.authorized &&
          (granted ?? false);
    }

    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  Future<void> sendTestNotification() async {
    final hasPermission = await requestPermission();
    if (!hasPermission) {
      debugPrint('Notification permissions not granted');
      return;
    }

    try {
      // For testing remote notifications, you would typically send this from your backend
      // Here we'll show a local notification for testing
      await _localNotifications.show(
        0,
        'Test Notification',
        'This is a test notification',
        NotificationDetails(
          android: AndroidNotificationDetails(
            androidChannel.id,
            androidChannel.name,
            channelDescription: androidChannel.description,
            importance: Importance.max,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
          ),
          iOS: const DarwinNotificationDetails(),
        ),
      );
    } catch (e) {
      debugPrint('Error showing notification: $e');
    }
  }

  // Method to get the FCM token
  Future<String?> getFCMToken() async {
    return await _firebaseMessaging.getToken();
  }
}
