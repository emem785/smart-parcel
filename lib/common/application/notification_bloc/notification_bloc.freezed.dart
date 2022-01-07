// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  InitializeFirebaseMessaging initializeFirebaseMessaging(
      FirebaseMessaging firebaseMessaging) {
    return InitializeFirebaseMessaging(
      firebaseMessaging,
    );
  }

  AddNotification addnotification(RemoteMessage remoteMessage) {
    return AddNotification(
      remoteMessage,
    );
  }

  RemoveNotification removeNotification(int index) {
    return RemoveNotification(
      index,
    );
  }

  ClearNotification clearNotification() {
    return const ClearNotification();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseMessaging firebaseMessaging)
        initializeFirebaseMessaging,
    required TResult Function(RemoteMessage remoteMessage) addnotification,
    required TResult Function(int index) removeNotification,
    required TResult Function() clearNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeFirebaseMessaging value)
        initializeFirebaseMessaging,
    required TResult Function(AddNotification value) addnotification,
    required TResult Function(RemoveNotification value) removeNotification,
    required TResult Function(ClearNotification value) clearNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class $InitializeFirebaseMessagingCopyWith<$Res> {
  factory $InitializeFirebaseMessagingCopyWith(
          InitializeFirebaseMessaging value,
          $Res Function(InitializeFirebaseMessaging) then) =
      _$InitializeFirebaseMessagingCopyWithImpl<$Res>;
  $Res call({FirebaseMessaging firebaseMessaging});
}

/// @nodoc
class _$InitializeFirebaseMessagingCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $InitializeFirebaseMessagingCopyWith<$Res> {
  _$InitializeFirebaseMessagingCopyWithImpl(InitializeFirebaseMessaging _value,
      $Res Function(InitializeFirebaseMessaging) _then)
      : super(_value, (v) => _then(v as InitializeFirebaseMessaging));

  @override
  InitializeFirebaseMessaging get _value =>
      super._value as InitializeFirebaseMessaging;

  @override
  $Res call({
    Object? firebaseMessaging = freezed,
  }) {
    return _then(InitializeFirebaseMessaging(
      firebaseMessaging == freezed
          ? _value.firebaseMessaging
          : firebaseMessaging // ignore: cast_nullable_to_non_nullable
              as FirebaseMessaging,
    ));
  }
}

/// @nodoc

class _$InitializeFirebaseMessaging implements InitializeFirebaseMessaging {
  const _$InitializeFirebaseMessaging(this.firebaseMessaging);

  @override
  final FirebaseMessaging firebaseMessaging;

  @override
  String toString() {
    return 'NotificationEvent.initializeFirebaseMessaging(firebaseMessaging: $firebaseMessaging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitializeFirebaseMessaging &&
            (identical(other.firebaseMessaging, firebaseMessaging) ||
                other.firebaseMessaging == firebaseMessaging));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseMessaging);

  @JsonKey(ignore: true)
  @override
  $InitializeFirebaseMessagingCopyWith<InitializeFirebaseMessaging>
      get copyWith => _$InitializeFirebaseMessagingCopyWithImpl<
          InitializeFirebaseMessaging>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseMessaging firebaseMessaging)
        initializeFirebaseMessaging,
    required TResult Function(RemoteMessage remoteMessage) addnotification,
    required TResult Function(int index) removeNotification,
    required TResult Function() clearNotification,
  }) {
    return initializeFirebaseMessaging(firebaseMessaging);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
  }) {
    return initializeFirebaseMessaging?.call(firebaseMessaging);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
    required TResult orElse(),
  }) {
    if (initializeFirebaseMessaging != null) {
      return initializeFirebaseMessaging(firebaseMessaging);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeFirebaseMessaging value)
        initializeFirebaseMessaging,
    required TResult Function(AddNotification value) addnotification,
    required TResult Function(RemoveNotification value) removeNotification,
    required TResult Function(ClearNotification value) clearNotification,
  }) {
    return initializeFirebaseMessaging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
  }) {
    return initializeFirebaseMessaging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
    required TResult orElse(),
  }) {
    if (initializeFirebaseMessaging != null) {
      return initializeFirebaseMessaging(this);
    }
    return orElse();
  }
}

abstract class InitializeFirebaseMessaging implements NotificationEvent {
  const factory InitializeFirebaseMessaging(
      FirebaseMessaging firebaseMessaging) = _$InitializeFirebaseMessaging;

  FirebaseMessaging get firebaseMessaging;
  @JsonKey(ignore: true)
  $InitializeFirebaseMessagingCopyWith<InitializeFirebaseMessaging>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNotificationCopyWith<$Res> {
  factory $AddNotificationCopyWith(
          AddNotification value, $Res Function(AddNotification) then) =
      _$AddNotificationCopyWithImpl<$Res>;
  $Res call({RemoteMessage remoteMessage});
}

/// @nodoc
class _$AddNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $AddNotificationCopyWith<$Res> {
  _$AddNotificationCopyWithImpl(
      AddNotification _value, $Res Function(AddNotification) _then)
      : super(_value, (v) => _then(v as AddNotification));

  @override
  AddNotification get _value => super._value as AddNotification;

  @override
  $Res call({
    Object? remoteMessage = freezed,
  }) {
    return _then(AddNotification(
      remoteMessage == freezed
          ? _value.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$AddNotification implements AddNotification {
  const _$AddNotification(this.remoteMessage);

  @override
  final RemoteMessage remoteMessage;

  @override
  String toString() {
    return 'NotificationEvent.addnotification(remoteMessage: $remoteMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddNotification &&
            (identical(other.remoteMessage, remoteMessage) ||
                other.remoteMessage == remoteMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteMessage);

  @JsonKey(ignore: true)
  @override
  $AddNotificationCopyWith<AddNotification> get copyWith =>
      _$AddNotificationCopyWithImpl<AddNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseMessaging firebaseMessaging)
        initializeFirebaseMessaging,
    required TResult Function(RemoteMessage remoteMessage) addnotification,
    required TResult Function(int index) removeNotification,
    required TResult Function() clearNotification,
  }) {
    return addnotification(remoteMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
  }) {
    return addnotification?.call(remoteMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
    required TResult orElse(),
  }) {
    if (addnotification != null) {
      return addnotification(remoteMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeFirebaseMessaging value)
        initializeFirebaseMessaging,
    required TResult Function(AddNotification value) addnotification,
    required TResult Function(RemoveNotification value) removeNotification,
    required TResult Function(ClearNotification value) clearNotification,
  }) {
    return addnotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
  }) {
    return addnotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
    required TResult orElse(),
  }) {
    if (addnotification != null) {
      return addnotification(this);
    }
    return orElse();
  }
}

abstract class AddNotification implements NotificationEvent {
  const factory AddNotification(RemoteMessage remoteMessage) =
      _$AddNotification;

  RemoteMessage get remoteMessage;
  @JsonKey(ignore: true)
  $AddNotificationCopyWith<AddNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveNotificationCopyWith<$Res> {
  factory $RemoveNotificationCopyWith(
          RemoveNotification value, $Res Function(RemoveNotification) then) =
      _$RemoveNotificationCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RemoveNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $RemoveNotificationCopyWith<$Res> {
  _$RemoveNotificationCopyWithImpl(
      RemoveNotification _value, $Res Function(RemoveNotification) _then)
      : super(_value, (v) => _then(v as RemoveNotification));

  @override
  RemoveNotification get _value => super._value as RemoveNotification;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(RemoveNotification(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveNotification implements RemoveNotification {
  const _$RemoveNotification(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NotificationEvent.removeNotification(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveNotification &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  $RemoveNotificationCopyWith<RemoveNotification> get copyWith =>
      _$RemoveNotificationCopyWithImpl<RemoveNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseMessaging firebaseMessaging)
        initializeFirebaseMessaging,
    required TResult Function(RemoteMessage remoteMessage) addnotification,
    required TResult Function(int index) removeNotification,
    required TResult Function() clearNotification,
  }) {
    return removeNotification(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
  }) {
    return removeNotification?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
    required TResult orElse(),
  }) {
    if (removeNotification != null) {
      return removeNotification(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeFirebaseMessaging value)
        initializeFirebaseMessaging,
    required TResult Function(AddNotification value) addnotification,
    required TResult Function(RemoveNotification value) removeNotification,
    required TResult Function(ClearNotification value) clearNotification,
  }) {
    return removeNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
  }) {
    return removeNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
    required TResult orElse(),
  }) {
    if (removeNotification != null) {
      return removeNotification(this);
    }
    return orElse();
  }
}

abstract class RemoveNotification implements NotificationEvent {
  const factory RemoveNotification(int index) = _$RemoveNotification;

  int get index;
  @JsonKey(ignore: true)
  $RemoveNotificationCopyWith<RemoveNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearNotificationCopyWith<$Res> {
  factory $ClearNotificationCopyWith(
          ClearNotification value, $Res Function(ClearNotification) then) =
      _$ClearNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $ClearNotificationCopyWith<$Res> {
  _$ClearNotificationCopyWithImpl(
      ClearNotification _value, $Res Function(ClearNotification) _then)
      : super(_value, (v) => _then(v as ClearNotification));

  @override
  ClearNotification get _value => super._value as ClearNotification;
}

/// @nodoc

class _$ClearNotification implements ClearNotification {
  const _$ClearNotification();

  @override
  String toString() {
    return 'NotificationEvent.clearNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseMessaging firebaseMessaging)
        initializeFirebaseMessaging,
    required TResult Function(RemoteMessage remoteMessage) addnotification,
    required TResult Function(int index) removeNotification,
    required TResult Function() clearNotification,
  }) {
    return clearNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
  }) {
    return clearNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseMessaging firebaseMessaging)?
        initializeFirebaseMessaging,
    TResult Function(RemoteMessage remoteMessage)? addnotification,
    TResult Function(int index)? removeNotification,
    TResult Function()? clearNotification,
    required TResult orElse(),
  }) {
    if (clearNotification != null) {
      return clearNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeFirebaseMessaging value)
        initializeFirebaseMessaging,
    required TResult Function(AddNotification value) addnotification,
    required TResult Function(RemoveNotification value) removeNotification,
    required TResult Function(ClearNotification value) clearNotification,
  }) {
    return clearNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
  }) {
    return clearNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeFirebaseMessaging value)?
        initializeFirebaseMessaging,
    TResult Function(AddNotification value)? addnotification,
    TResult Function(RemoveNotification value)? removeNotification,
    TResult Function(ClearNotification value)? clearNotification,
    required TResult orElse(),
  }) {
    if (clearNotification != null) {
      return clearNotification(this);
    }
    return orElse();
  }
}

abstract class ClearNotification implements NotificationEvent {
  const factory ClearNotification() = _$ClearNotification;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  NotificationInitial initial() {
    return const NotificationInitial();
  }

  NotificationLoading loading() {
    return const NotificationLoading();
  }

  NotificationError error(Failure failure) {
    return NotificationError(
      failure,
    );
  }

  NotificationAdded notificationAdded(List<NotificationMessage> notifications) {
    return NotificationAdded(
      notifications,
    );
  }

  NotificationRemoved notificationRemoved(
      List<NotificationMessage> notifications) {
    return NotificationRemoved(
      notifications,
    );
  }

  NotificationCleared notificationCleared(
      List<NotificationMessage> notifications) {
    return NotificationCleared(
      notifications,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

/// @nodoc
abstract class $NotificationInitialCopyWith<$Res> {
  factory $NotificationInitialCopyWith(
          NotificationInitial value, $Res Function(NotificationInitial) then) =
      _$NotificationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationInitialCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationInitialCopyWith<$Res> {
  _$NotificationInitialCopyWithImpl(
      NotificationInitial _value, $Res Function(NotificationInitial) _then)
      : super(_value, (v) => _then(v as NotificationInitial));

  @override
  NotificationInitial get _value => super._value as NotificationInitial;
}

/// @nodoc

class _$NotificationInitial implements NotificationInitial {
  const _$NotificationInitial();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotificationInitial implements NotificationState {
  const factory NotificationInitial() = _$NotificationInitial;
}

/// @nodoc
abstract class $NotificationLoadingCopyWith<$Res> {
  factory $NotificationLoadingCopyWith(
          NotificationLoading value, $Res Function(NotificationLoading) then) =
      _$NotificationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationLoadingCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationLoadingCopyWith<$Res> {
  _$NotificationLoadingCopyWithImpl(
      NotificationLoading _value, $Res Function(NotificationLoading) _then)
      : super(_value, (v) => _then(v as NotificationLoading));

  @override
  NotificationLoading get _value => super._value as NotificationLoading;
}

/// @nodoc

class _$NotificationLoading implements NotificationLoading {
  const _$NotificationLoading();

  @override
  String toString() {
    return 'NotificationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationLoading implements NotificationState {
  const factory NotificationLoading() = _$NotificationLoading;
}

/// @nodoc
abstract class $NotificationErrorCopyWith<$Res> {
  factory $NotificationErrorCopyWith(
          NotificationError value, $Res Function(NotificationError) then) =
      _$NotificationErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$NotificationErrorCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationErrorCopyWith<$Res> {
  _$NotificationErrorCopyWithImpl(
      NotificationError _value, $Res Function(NotificationError) _then)
      : super(_value, (v) => _then(v as NotificationError));

  @override
  NotificationError get _value => super._value as NotificationError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(NotificationError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$NotificationError implements NotificationError {
  const _$NotificationError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NotificationState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $NotificationErrorCopyWith<NotificationError> get copyWith =>
      _$NotificationErrorCopyWithImpl<NotificationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NotificationError implements NotificationState {
  const factory NotificationError(Failure failure) = _$NotificationError;

  Failure get failure;
  @JsonKey(ignore: true)
  $NotificationErrorCopyWith<NotificationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationAddedCopyWith<$Res> {
  factory $NotificationAddedCopyWith(
          NotificationAdded value, $Res Function(NotificationAdded) then) =
      _$NotificationAddedCopyWithImpl<$Res>;
  $Res call({List<NotificationMessage> notifications});
}

/// @nodoc
class _$NotificationAddedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationAddedCopyWith<$Res> {
  _$NotificationAddedCopyWithImpl(
      NotificationAdded _value, $Res Function(NotificationAdded) _then)
      : super(_value, (v) => _then(v as NotificationAdded));

  @override
  NotificationAdded get _value => super._value as NotificationAdded;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(NotificationAdded(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationMessage>,
    ));
  }
}

/// @nodoc

class _$NotificationAdded implements NotificationAdded {
  const _$NotificationAdded(this.notifications);

  @override
  final List<NotificationMessage> notifications;

  @override
  String toString() {
    return 'NotificationState.notificationAdded(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationAdded &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @JsonKey(ignore: true)
  @override
  $NotificationAddedCopyWith<NotificationAdded> get copyWith =>
      _$NotificationAddedCopyWithImpl<NotificationAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return notificationAdded(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return notificationAdded?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationAdded != null) {
      return notificationAdded(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return notificationAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return notificationAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationAdded != null) {
      return notificationAdded(this);
    }
    return orElse();
  }
}

abstract class NotificationAdded implements NotificationState {
  const factory NotificationAdded(List<NotificationMessage> notifications) =
      _$NotificationAdded;

  List<NotificationMessage> get notifications;
  @JsonKey(ignore: true)
  $NotificationAddedCopyWith<NotificationAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationRemovedCopyWith<$Res> {
  factory $NotificationRemovedCopyWith(
          NotificationRemoved value, $Res Function(NotificationRemoved) then) =
      _$NotificationRemovedCopyWithImpl<$Res>;
  $Res call({List<NotificationMessage> notifications});
}

/// @nodoc
class _$NotificationRemovedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationRemovedCopyWith<$Res> {
  _$NotificationRemovedCopyWithImpl(
      NotificationRemoved _value, $Res Function(NotificationRemoved) _then)
      : super(_value, (v) => _then(v as NotificationRemoved));

  @override
  NotificationRemoved get _value => super._value as NotificationRemoved;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(NotificationRemoved(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationMessage>,
    ));
  }
}

/// @nodoc

class _$NotificationRemoved implements NotificationRemoved {
  const _$NotificationRemoved(this.notifications);

  @override
  final List<NotificationMessage> notifications;

  @override
  String toString() {
    return 'NotificationState.notificationRemoved(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationRemoved &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @JsonKey(ignore: true)
  @override
  $NotificationRemovedCopyWith<NotificationRemoved> get copyWith =>
      _$NotificationRemovedCopyWithImpl<NotificationRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return notificationRemoved(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return notificationRemoved?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationRemoved != null) {
      return notificationRemoved(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return notificationRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return notificationRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationRemoved != null) {
      return notificationRemoved(this);
    }
    return orElse();
  }
}

abstract class NotificationRemoved implements NotificationState {
  const factory NotificationRemoved(List<NotificationMessage> notifications) =
      _$NotificationRemoved;

  List<NotificationMessage> get notifications;
  @JsonKey(ignore: true)
  $NotificationRemovedCopyWith<NotificationRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationClearedCopyWith<$Res> {
  factory $NotificationClearedCopyWith(
          NotificationCleared value, $Res Function(NotificationCleared) then) =
      _$NotificationClearedCopyWithImpl<$Res>;
  $Res call({List<NotificationMessage> notifications});
}

/// @nodoc
class _$NotificationClearedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationClearedCopyWith<$Res> {
  _$NotificationClearedCopyWithImpl(
      NotificationCleared _value, $Res Function(NotificationCleared) _then)
      : super(_value, (v) => _then(v as NotificationCleared));

  @override
  NotificationCleared get _value => super._value as NotificationCleared;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(NotificationCleared(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationMessage>,
    ));
  }
}

/// @nodoc

class _$NotificationCleared implements NotificationCleared {
  const _$NotificationCleared(this.notifications);

  @override
  final List<NotificationMessage> notifications;

  @override
  String toString() {
    return 'NotificationState.notificationCleared(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationCleared &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @JsonKey(ignore: true)
  @override
  $NotificationClearedCopyWith<NotificationCleared> get copyWith =>
      _$NotificationClearedCopyWithImpl<NotificationCleared>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(List<NotificationMessage> notifications)
        notificationAdded,
    required TResult Function(List<NotificationMessage> notifications)
        notificationRemoved,
    required TResult Function(List<NotificationMessage> notifications)
        notificationCleared,
  }) {
    return notificationCleared(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
  }) {
    return notificationCleared?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(List<NotificationMessage> notifications)?
        notificationAdded,
    TResult Function(List<NotificationMessage> notifications)?
        notificationRemoved,
    TResult Function(List<NotificationMessage> notifications)?
        notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationCleared != null) {
      return notificationCleared(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationError value) error,
    required TResult Function(NotificationAdded value) notificationAdded,
    required TResult Function(NotificationRemoved value) notificationRemoved,
    required TResult Function(NotificationCleared value) notificationCleared,
  }) {
    return notificationCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
  }) {
    return notificationCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationError value)? error,
    TResult Function(NotificationAdded value)? notificationAdded,
    TResult Function(NotificationRemoved value)? notificationRemoved,
    TResult Function(NotificationCleared value)? notificationCleared,
    required TResult orElse(),
  }) {
    if (notificationCleared != null) {
      return notificationCleared(this);
    }
    return orElse();
  }
}

abstract class NotificationCleared implements NotificationState {
  const factory NotificationCleared(List<NotificationMessage> notifications) =
      _$NotificationCleared;

  List<NotificationMessage> get notifications;
  @JsonKey(ignore: true)
  $NotificationClearedCopyWith<NotificationCleared> get copyWith =>
      throw _privateConstructorUsedError;
}
