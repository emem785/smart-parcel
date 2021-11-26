// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

  EditUser editUser(User user) {
    return EditUser(
      user,
    );
  }

  OpenSupport openSupport(BuildContext context) {
    return OpenSupport(
      context,
    );
  }

  ResetPassword resetPassword(
      {required String oldPassword,
      required String newPassword,
      required String confirmPassword}) {
    return ResetPassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
  }
}

/// @nodoc
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) editUser,
    required TResult Function(BuildContext context) openSupport,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditUser value) editUser,
    required TResult Function(OpenSupport value) openSupport,
    required TResult Function(ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class $EditUserCopyWith<$Res> {
  factory $EditUserCopyWith(EditUser value, $Res Function(EditUser) then) =
      _$EditUserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$EditUserCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $EditUserCopyWith<$Res> {
  _$EditUserCopyWithImpl(EditUser _value, $Res Function(EditUser) _then)
      : super(_value, (v) => _then(v as EditUser));

  @override
  EditUser get _value => super._value as EditUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(EditUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$EditUser implements EditUser {
  const _$EditUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AccountEvent.editUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $EditUserCopyWith<EditUser> get copyWith =>
      _$EditUserCopyWithImpl<EditUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) editUser,
    required TResult Function(BuildContext context) openSupport,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        resetPassword,
  }) {
    return editUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
  }) {
    return editUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditUser value) editUser,
    required TResult Function(OpenSupport value) openSupport,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class EditUser implements AccountEvent {
  const factory EditUser(User user) = _$EditUser;

  User get user;
  @JsonKey(ignore: true)
  $EditUserCopyWith<EditUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSupportCopyWith<$Res> {
  factory $OpenSupportCopyWith(
          OpenSupport value, $Res Function(OpenSupport) then) =
      _$OpenSupportCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$OpenSupportCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $OpenSupportCopyWith<$Res> {
  _$OpenSupportCopyWithImpl(
      OpenSupport _value, $Res Function(OpenSupport) _then)
      : super(_value, (v) => _then(v as OpenSupport));

  @override
  OpenSupport get _value => super._value as OpenSupport;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(OpenSupport(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$OpenSupport implements OpenSupport {
  const _$OpenSupport(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AccountEvent.openSupport(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenSupport &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  $OpenSupportCopyWith<OpenSupport> get copyWith =>
      _$OpenSupportCopyWithImpl<OpenSupport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) editUser,
    required TResult Function(BuildContext context) openSupport,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        resetPassword,
  }) {
    return openSupport(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
  }) {
    return openSupport?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (openSupport != null) {
      return openSupport(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditUser value) editUser,
    required TResult Function(OpenSupport value) openSupport,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return openSupport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
  }) {
    return openSupport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (openSupport != null) {
      return openSupport(this);
    }
    return orElse();
  }
}

abstract class OpenSupport implements AccountEvent {
  const factory OpenSupport(BuildContext context) = _$OpenSupport;

  BuildContext get context;
  @JsonKey(ignore: true)
  $OpenSupportCopyWith<OpenSupport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
  $Res call({String oldPassword, String newPassword, String confirmPassword});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(
      ResetPassword _value, $Res Function(ResetPassword) _then)
      : super(_value, (v) => _then(v as ResetPassword));

  @override
  ResetPassword get _value => super._value as ResetPassword;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(ResetPassword(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'AccountEvent.resetPassword(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPassword &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, newPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      _$ResetPasswordCopyWithImpl<ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) editUser,
    required TResult Function(BuildContext context) openSupport,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        resetPassword,
  }) {
    return resetPassword(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
  }) {
    return resetPassword?.call(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? editUser,
    TResult Function(BuildContext context)? openSupport,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(oldPassword, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditUser value) editUser,
    required TResult Function(OpenSupport value) openSupport,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditUser value)? editUser,
    TResult Function(OpenSupport value)? openSupport,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements AccountEvent {
  const factory ResetPassword(
      {required String oldPassword,
      required String newPassword,
      required String confirmPassword}) = _$ResetPassword;

  String get oldPassword;
  String get newPassword;
  String get confirmPassword;
  @JsonKey(ignore: true)
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  AccountInitial initial() {
    return const AccountInitial();
  }

  AccountLoading loading() {
    return const AccountLoading();
  }

  AccountError error(Failure failure) {
    return AccountError(
      failure,
    );
  }

  UserModified userModified(User user) {
    return UserModified(
      user,
    );
  }

  PasswordChanged passwordChanged() {
    return const PasswordChanged();
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class $AccountInitialCopyWith<$Res> {
  factory $AccountInitialCopyWith(
          AccountInitial value, $Res Function(AccountInitial) then) =
      _$AccountInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountInitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountInitialCopyWith<$Res> {
  _$AccountInitialCopyWithImpl(
      AccountInitial _value, $Res Function(AccountInitial) _then)
      : super(_value, (v) => _then(v as AccountInitial));

  @override
  AccountInitial get _value => super._value as AccountInitial;
}

/// @nodoc

class _$AccountInitial implements AccountInitial {
  const _$AccountInitial();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccountInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountInitial implements AccountState {
  const factory AccountInitial() = _$AccountInitial;
}

/// @nodoc
abstract class $AccountLoadingCopyWith<$Res> {
  factory $AccountLoadingCopyWith(
          AccountLoading value, $Res Function(AccountLoading) then) =
      _$AccountLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountLoadingCopyWith<$Res> {
  _$AccountLoadingCopyWithImpl(
      AccountLoading _value, $Res Function(AccountLoading) _then)
      : super(_value, (v) => _then(v as AccountLoading));

  @override
  AccountLoading get _value => super._value as AccountLoading;
}

/// @nodoc

class _$AccountLoading implements AccountLoading {
  const _$AccountLoading();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccountLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountLoading implements AccountState {
  const factory AccountLoading() = _$AccountLoading;
}

/// @nodoc
abstract class $AccountErrorCopyWith<$Res> {
  factory $AccountErrorCopyWith(
          AccountError value, $Res Function(AccountError) then) =
      _$AccountErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$AccountErrorCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountErrorCopyWith<$Res> {
  _$AccountErrorCopyWithImpl(
      AccountError _value, $Res Function(AccountError) _then)
      : super(_value, (v) => _then(v as AccountError));

  @override
  AccountError get _value => super._value as AccountError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(AccountError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AccountError implements AccountError {
  const _$AccountError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AccountState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $AccountErrorCopyWith<AccountError> get copyWith =>
      _$AccountErrorCopyWithImpl<AccountError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountError implements AccountState {
  const factory AccountError(Failure failure) = _$AccountError;

  Failure get failure;
  @JsonKey(ignore: true)
  $AccountErrorCopyWith<AccountError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModifiedCopyWith<$Res> {
  factory $UserModifiedCopyWith(
          UserModified value, $Res Function(UserModified) then) =
      _$UserModifiedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserModifiedCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements $UserModifiedCopyWith<$Res> {
  _$UserModifiedCopyWithImpl(
      UserModified _value, $Res Function(UserModified) _then)
      : super(_value, (v) => _then(v as UserModified));

  @override
  UserModified get _value => super._value as UserModified;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserModified(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserModified implements UserModified {
  const _$UserModified(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AccountState.userModified(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModified &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $UserModifiedCopyWith<UserModified> get copyWith =>
      _$UserModifiedCopyWithImpl<UserModified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) {
    return userModified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) {
    return userModified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return userModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) {
    return userModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(this);
    }
    return orElse();
  }
}

abstract class UserModified implements AccountState {
  const factory UserModified(User user) = _$UserModified;

  User get user;
  @JsonKey(ignore: true)
  $UserModifiedCopyWith<UserModified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged();

  @override
  String toString() {
    return 'AccountState.passwordChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(User user) userModified,
    required TResult Function() passwordChanged,
  }) {
    return passwordChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
  }) {
    return passwordChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(User user)? userModified,
    TResult Function()? passwordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountError value) error,
    required TResult Function(UserModified value) userModified,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountError value)? error,
    TResult Function(UserModified value)? userModified,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AccountState {
  const factory PasswordChanged() = _$PasswordChanged;
}
