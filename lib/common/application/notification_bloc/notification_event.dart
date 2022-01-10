part of 'notification_bloc.dart';

@immutable
@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.initializeFirebaseMessaging(
    FirebaseMessaging firebaseMessaging,
  ) = InitializeFirebaseMessaging;
  const factory NotificationEvent.addnotification(RemoteMessage remoteMessage) =
      AddNotification;
  const factory NotificationEvent.removeNotification(int index) =
      RemoveNotification;
  const factory NotificationEvent.clearNotification() = ClearNotification;
}
