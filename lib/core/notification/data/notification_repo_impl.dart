import '../domain/notification_entity.dart';
import '../domain/notification_repo.dart';
import 'notification_remote_datasource.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _remoteDataSource;

  NotificationRepositoryImpl(this._remoteDataSource);

  @override
  Future<void> initializeNotifications() async {
    await _remoteDataSource.initialize();
  }

  @override
  Stream<NotificationEntity> getNotificationStream() {
    return _remoteDataSource.getMessageStream().map(
          (message) => NotificationEntity(
            id: message.messageId ?? '',
            title: message.notification?.title ?? '',
            body: message.notification?.body ?? '',
            timestamp: DateTime.now(),
          ),
        );
  }

  @override
  Future<void> requestPermission() async {
    await _remoteDataSource.requestPermission();
  }

  @override
  Future<void> sendTestNotification() async {
    await _remoteDataSource.sendTestNotification();
  }
}
