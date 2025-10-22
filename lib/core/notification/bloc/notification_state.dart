part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.success() = _Success;
  const factory NotificationState.error({required String message}) = _Error;
  const factory NotificationState.received(
      {required NotificationEntity notification}) = _Received;
}
