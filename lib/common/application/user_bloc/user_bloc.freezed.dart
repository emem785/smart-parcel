// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  GetUserFromStorage getUserFromStorage() {
    return const GetUserFromStorage();
  }

  GetUserStreamFromStorage getUserStreamFromStorage() {
    return const GetUserStreamFromStorage();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromStorage,
    required TResult Function() getUserStreamFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserFromStorage value) getUserFromStorage,
    required TResult Function(GetUserStreamFromStorage value)
        getUserStreamFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $GetUserFromStorageCopyWith<$Res> {
  factory $GetUserFromStorageCopyWith(
          GetUserFromStorage value, $Res Function(GetUserFromStorage) then) =
      _$GetUserFromStorageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserFromStorageCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $GetUserFromStorageCopyWith<$Res> {
  _$GetUserFromStorageCopyWithImpl(
      GetUserFromStorage _value, $Res Function(GetUserFromStorage) _then)
      : super(_value, (v) => _then(v as GetUserFromStorage));

  @override
  GetUserFromStorage get _value => super._value as GetUserFromStorage;
}

/// @nodoc

class _$GetUserFromStorage implements GetUserFromStorage {
  const _$GetUserFromStorage();

  @override
  String toString() {
    return 'UserEvent.getUserFromStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserFromStorage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromStorage,
    required TResult Function() getUserStreamFromStorage,
  }) {
    return getUserFromStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
  }) {
    return getUserFromStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
    required TResult orElse(),
  }) {
    if (getUserFromStorage != null) {
      return getUserFromStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserFromStorage value) getUserFromStorage,
    required TResult Function(GetUserStreamFromStorage value)
        getUserStreamFromStorage,
  }) {
    return getUserFromStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
  }) {
    return getUserFromStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
    required TResult orElse(),
  }) {
    if (getUserFromStorage != null) {
      return getUserFromStorage(this);
    }
    return orElse();
  }
}

abstract class GetUserFromStorage implements UserEvent {
  const factory GetUserFromStorage() = _$GetUserFromStorage;
}

/// @nodoc
abstract class $GetUserStreamFromStorageCopyWith<$Res> {
  factory $GetUserStreamFromStorageCopyWith(GetUserStreamFromStorage value,
          $Res Function(GetUserStreamFromStorage) then) =
      _$GetUserStreamFromStorageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserStreamFromStorageCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $GetUserStreamFromStorageCopyWith<$Res> {
  _$GetUserStreamFromStorageCopyWithImpl(GetUserStreamFromStorage _value,
      $Res Function(GetUserStreamFromStorage) _then)
      : super(_value, (v) => _then(v as GetUserStreamFromStorage));

  @override
  GetUserStreamFromStorage get _value =>
      super._value as GetUserStreamFromStorage;
}

/// @nodoc

class _$GetUserStreamFromStorage implements GetUserStreamFromStorage {
  const _$GetUserStreamFromStorage();

  @override
  String toString() {
    return 'UserEvent.getUserStreamFromStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserStreamFromStorage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromStorage,
    required TResult Function() getUserStreamFromStorage,
  }) {
    return getUserStreamFromStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
  }) {
    return getUserStreamFromStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromStorage,
    TResult Function()? getUserStreamFromStorage,
    required TResult orElse(),
  }) {
    if (getUserStreamFromStorage != null) {
      return getUserStreamFromStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserFromStorage value) getUserFromStorage,
    required TResult Function(GetUserStreamFromStorage value)
        getUserStreamFromStorage,
  }) {
    return getUserStreamFromStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
  }) {
    return getUserStreamFromStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromStorage value)? getUserFromStorage,
    TResult Function(GetUserStreamFromStorage value)? getUserStreamFromStorage,
    required TResult orElse(),
  }) {
    if (getUserStreamFromStorage != null) {
      return getUserStreamFromStorage(this);
    }
    return orElse();
  }
}

abstract class GetUserStreamFromStorage implements UserEvent {
  const factory GetUserStreamFromStorage() = _$GetUserStreamFromStorage;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserInitial initial() {
    return const UserInitial();
  }

  UserLoading loading() {
    return const UserLoading();
  }

  UserRetreived userRetreived(User user) {
    return UserRetreived(
      user,
    );
  }

  UserStreamRetreived userStreamRetreived(Stream<User> userStream) {
    return UserStreamRetreived(
      userStream,
    );
  }

  UserError error(Failure failure) {
    return UserError(
      failure,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $UserInitialCopyWith<$Res> {
  factory $UserInitialCopyWith(
          UserInitial value, $Res Function(UserInitial) then) =
      _$UserInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserInitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserInitialCopyWith<$Res> {
  _$UserInitialCopyWithImpl(
      UserInitial _value, $Res Function(UserInitial) _then)
      : super(_value, (v) => _then(v as UserInitial));

  @override
  UserInitial get _value => super._value as UserInitial;
}

/// @nodoc

class _$UserInitial implements UserInitial {
  const _$UserInitial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
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
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitial implements UserState {
  const factory UserInitial() = _$UserInitial;
}

/// @nodoc
abstract class $UserLoadingCopyWith<$Res> {
  factory $UserLoadingCopyWith(
          UserLoading value, $Res Function(UserLoading) then) =
      _$UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadingCopyWith<$Res> {
  _$UserLoadingCopyWithImpl(
      UserLoading _value, $Res Function(UserLoading) _then)
      : super(_value, (v) => _then(v as UserLoading));

  @override
  UserLoading get _value => super._value as UserLoading;
}

/// @nodoc

class _$UserLoading implements UserLoading {
  const _$UserLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
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
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoading;
}

/// @nodoc
abstract class $UserRetreivedCopyWith<$Res> {
  factory $UserRetreivedCopyWith(
          UserRetreived value, $Res Function(UserRetreived) then) =
      _$UserRetreivedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserRetreivedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserRetreivedCopyWith<$Res> {
  _$UserRetreivedCopyWithImpl(
      UserRetreived _value, $Res Function(UserRetreived) _then)
      : super(_value, (v) => _then(v as UserRetreived));

  @override
  UserRetreived get _value => super._value as UserRetreived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserRetreived(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserRetreived implements UserRetreived {
  const _$UserRetreived(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userRetreived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRetreived &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $UserRetreivedCopyWith<UserRetreived> get copyWith =>
      _$UserRetreivedCopyWithImpl<UserRetreived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) {
    return userRetreived(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) {
    return userRetreived?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (userRetreived != null) {
      return userRetreived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) {
    return userRetreived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) {
    return userRetreived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) {
    if (userRetreived != null) {
      return userRetreived(this);
    }
    return orElse();
  }
}

abstract class UserRetreived implements UserState {
  const factory UserRetreived(User user) = _$UserRetreived;

  User get user;
  @JsonKey(ignore: true)
  $UserRetreivedCopyWith<UserRetreived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStreamRetreivedCopyWith<$Res> {
  factory $UserStreamRetreivedCopyWith(
          UserStreamRetreived value, $Res Function(UserStreamRetreived) then) =
      _$UserStreamRetreivedCopyWithImpl<$Res>;
  $Res call({Stream<User> userStream});
}

/// @nodoc
class _$UserStreamRetreivedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserStreamRetreivedCopyWith<$Res> {
  _$UserStreamRetreivedCopyWithImpl(
      UserStreamRetreived _value, $Res Function(UserStreamRetreived) _then)
      : super(_value, (v) => _then(v as UserStreamRetreived));

  @override
  UserStreamRetreived get _value => super._value as UserStreamRetreived;

  @override
  $Res call({
    Object? userStream = freezed,
  }) {
    return _then(UserStreamRetreived(
      userStream == freezed
          ? _value.userStream
          : userStream // ignore: cast_nullable_to_non_nullable
              as Stream<User>,
    ));
  }
}

/// @nodoc

class _$UserStreamRetreived implements UserStreamRetreived {
  const _$UserStreamRetreived(this.userStream);

  @override
  final Stream<User> userStream;

  @override
  String toString() {
    return 'UserState.userStreamRetreived(userStream: $userStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserStreamRetreived &&
            (identical(other.userStream, userStream) ||
                other.userStream == userStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userStream);

  @JsonKey(ignore: true)
  @override
  $UserStreamRetreivedCopyWith<UserStreamRetreived> get copyWith =>
      _$UserStreamRetreivedCopyWithImpl<UserStreamRetreived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) {
    return userStreamRetreived(userStream);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) {
    return userStreamRetreived?.call(userStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (userStreamRetreived != null) {
      return userStreamRetreived(userStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) {
    return userStreamRetreived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) {
    return userStreamRetreived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) {
    if (userStreamRetreived != null) {
      return userStreamRetreived(this);
    }
    return orElse();
  }
}

abstract class UserStreamRetreived implements UserState {
  const factory UserStreamRetreived(Stream<User> userStream) =
      _$UserStreamRetreived;

  Stream<User> get userStream;
  @JsonKey(ignore: true)
  $UserStreamRetreivedCopyWith<UserStreamRetreived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserErrorCopyWith<$Res> {
  factory $UserErrorCopyWith(UserError value, $Res Function(UserError) then) =
      _$UserErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$UserErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserErrorCopyWith<$Res> {
  _$UserErrorCopyWithImpl(UserError _value, $Res Function(UserError) _then)
      : super(_value, (v) => _then(v as UserError));

  @override
  UserError get _value => super._value as UserError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(UserError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UserError implements UserError {
  const _$UserError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $UserErrorCopyWith<UserError> get copyWith =>
      _$UserErrorCopyWithImpl<UserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) userRetreived,
    required TResult Function(Stream<User> userStream) userStreamRetreived,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? userRetreived,
    TResult Function(Stream<User> userStream)? userStreamRetreived,
    TResult Function(Failure failure)? error,
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
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserRetreived value) userRetreived,
    required TResult Function(UserStreamRetreived value) userStreamRetreived,
    required TResult Function(UserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserRetreived value)? userRetreived,
    TResult Function(UserStreamRetreived value)? userStreamRetreived,
    TResult Function(UserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError(Failure failure) = _$UserError;

  Failure get failure;
  @JsonKey(ignore: true)
  $UserErrorCopyWith<UserError> get copyWith =>
      throw _privateConstructorUsedError;
}
