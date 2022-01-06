part of 'notification_bloc.dart';

@immutable
@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationInitial;
  const factory NotificationState.loading() = NotificationLoading;
  const factory NotificationState.error(Failure failure) = NotificationError;
  const factory NotificationState.notificationAdded(
    List<NotificationMessage> notifications,
  ) = NotificationAdded;
  const factory NotificationState.notificationRemoved(
    List<NotificationMessage> notifications,
  ) = NotificationRemoved;
}
