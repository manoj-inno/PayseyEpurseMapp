import 'notification_entity.dart';

abstract class NotificationRepository {
  Future<void> initializeNotifications();
  Stream<NotificationEntity> getNotificationStream();
  Future<void> requestPermission();
  Future<void> sendTestNotification();
}
