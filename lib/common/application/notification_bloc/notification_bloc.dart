import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/notification_message.dart';
import 'package:smart_parcel/common/domain/usecases/common_usecases.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final CommonUseCases commonUseCases;
  List<NotificationMessage> notificationMessages = [];
  late FirebaseMessaging firebaseMessaging;

  NotificationBloc(this.commonUseCases) : super(const NotificationInitial()) {
    on<AddNotification>(_addNotification);
    on<RemoveNotification>(_removeNotification);
    on<ClearNotification>(_clearNotification);
    on<InitializeFirebaseMessaging>(_initialFirebaseMessaging);
  }

  FutureOr<void> _addNotification(
    AddNotification event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationLoading());
    final notificationMessage =
        NotificationMessage.fromRemoteMessage(event.remoteMessage);
    notificationMessages = [notificationMessage, ...notificationMessages];
    emit(NotificationAdded(notificationMessages));
  }

  FutureOr<void> _removeNotification(
    RemoveNotification event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationLoading());
    notificationMessages.removeAt(event.index);
    emit(NotificationRemoved(notificationMessages));
  }

  FutureOr<void> _clearNotification(
    ClearNotification event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationLoading());
    notificationMessages.clear();
    emit(NotificationCleared(notificationMessages));
  }

  FutureOr<void> _initialFirebaseMessaging(
    InitializeFirebaseMessaging event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationLoading());
    firebaseMessaging = event.firebaseMessaging;
    emit(const NotificationInitial());
  }
}
