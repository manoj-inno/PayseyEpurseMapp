part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.initializeNotifications() =
      _InitializeNotifications;
  const factory NotificationEvent.sendTestNotification() =
      _SendTestNotification;
  const factory NotificationEvent.receiveNotification({
    required String title,
    required String body,
  }) = _ReceiveNotification;
}
