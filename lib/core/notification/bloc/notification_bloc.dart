import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notification_entity.dart';
import '../domain/notification_repo.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _repository;

  NotificationBloc(this._repository)
      : super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.map(
        initializeNotifications: (e) => _onInitializeNotifications(e, emit),
        sendTestNotification: (e) => _onSendTestNotification(e, emit),
        receiveNotification: (e) => _onReceiveNotification(e, emit),
      );
    });
  }

  Future<void> _onInitializeNotifications(
    _InitializeNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      emit(const NotificationState.loading());
      await _repository.initializeNotifications();
      await _repository.requestPermission();

      await emit.forEach(
        _repository.getNotificationStream(),
        onData: (notification) =>
            NotificationState.received(notification: notification),
      );
    } catch (e) {
      debugPrint('Error initializing notifications: $e');
      emit(NotificationState.error(
          message: 'Failed to initialize notifications: $e'));
    }
  }

  Future<void> _onSendTestNotification(
    _SendTestNotification event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      emit(const NotificationState.loading());
      await _repository.sendTestNotification();
      emit(const NotificationState.success());
    } catch (e) {
      debugPrint('Error sending test notification: $e');
      emit(NotificationState.error(
          message: 'Failed to send test notification: $e'));
    }
  }

  Future<void> _onReceiveNotification(
    _ReceiveNotification event,
    Emitter<NotificationState> emit,
  ) async {
    emit(NotificationState.received(
        notification: NotificationEntity(
            id: event.body,
            title: event.title,
            body: event.body,
            timestamp: DateTime.now())));
  }
}
