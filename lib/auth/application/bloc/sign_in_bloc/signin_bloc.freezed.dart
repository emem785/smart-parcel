// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  Login login({required String email, required String password}) {
    return Login(
      email: email,
      password: password,
    );
  }

  ForgotPassword forgotPassword({required String email}) {
    return ForgotPassword(
      email: email,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LoginCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(Login(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements SignInEvent {
  const factory Login({required String email, required String password}) =
      _$Login;

  @override
  String get email;
  String get password;
  @override
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(
      ForgotPassword _value, $Res Function(ForgotPassword) _then)
      : super(_value, (v) => _then(v as ForgotPassword));

  @override
  ForgotPassword get _value => super._value as ForgotPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ForgotPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPassword implements ForgotPassword {
  const _$ForgotPassword({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordCopyWith<ForgotPassword> get copyWith =>
      _$ForgotPasswordCopyWithImpl<ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements SignInEvent {
  const factory ForgotPassword({required String email}) = _$ForgotPassword;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  $ForgotPasswordCopyWith<ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  SigInInitial initial() {
    return const SigInInitial();
  }

  SigInLoading loading() {
    return const SigInLoading();
  }

  LoggedIn loggedIn(LoginResponse loginResponse) {
    return LoggedIn(
      loginResponse,
    );
  }

  RequestSent requestSent() {
    return const RequestSent();
  }

  SigInError error(Failure failure) {
    return SigInError(
      failure,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class $SigInInitialCopyWith<$Res> {
  factory $SigInInitialCopyWith(
          SigInInitial value, $Res Function(SigInInitial) then) =
      _$SigInInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigInInitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $SigInInitialCopyWith<$Res> {
  _$SigInInitialCopyWithImpl(
      SigInInitial _value, $Res Function(SigInInitial) _then)
      : super(_value, (v) => _then(v as SigInInitial));

  @override
  SigInInitial get _value => super._value as SigInInitial;
}

/// @nodoc

class _$SigInInitial implements SigInInitial {
  const _$SigInInitial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SigInInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
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
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SigInInitial implements SignInState {
  const factory SigInInitial() = _$SigInInitial;
}

/// @nodoc
abstract class $SigInLoadingCopyWith<$Res> {
  factory $SigInLoadingCopyWith(
          SigInLoading value, $Res Function(SigInLoading) then) =
      _$SigInLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigInLoadingCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $SigInLoadingCopyWith<$Res> {
  _$SigInLoadingCopyWithImpl(
      SigInLoading _value, $Res Function(SigInLoading) _then)
      : super(_value, (v) => _then(v as SigInLoading));

  @override
  SigInLoading get _value => super._value as SigInLoading;
}

/// @nodoc

class _$SigInLoading implements SigInLoading {
  const _$SigInLoading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SigInLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
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
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SigInLoading implements SignInState {
  const factory SigInLoading() = _$SigInLoading;
}

/// @nodoc
abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
  $Res call({LoginResponse loginResponse});
}

/// @nodoc
class _$LoggedInCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;

  @override
  $Res call({
    Object? loginResponse = freezed,
  }) {
    return _then(LoggedIn(
      loginResponse == freezed
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$LoggedIn implements LoggedIn {
  const _$LoggedIn(this.loginResponse);

  @override
  final LoginResponse loginResponse;

  @override
  String toString() {
    return 'SignInState.loggedIn(loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoggedIn &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  @JsonKey(ignore: true)
  @override
  $LoggedInCopyWith<LoggedIn> get copyWith =>
      _$LoggedInCopyWithImpl<LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return loggedIn(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return loggedIn?.call(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(loginResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements SignInState {
  const factory LoggedIn(LoginResponse loginResponse) = _$LoggedIn;

  LoginResponse get loginResponse;
  @JsonKey(ignore: true)
  $LoggedInCopyWith<LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSentCopyWith<$Res> {
  factory $RequestSentCopyWith(
          RequestSent value, $Res Function(RequestSent) then) =
      _$RequestSentCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestSentCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $RequestSentCopyWith<$Res> {
  _$RequestSentCopyWithImpl(
      RequestSent _value, $Res Function(RequestSent) _then)
      : super(_value, (v) => _then(v as RequestSent));

  @override
  RequestSent get _value => super._value as RequestSent;
}

/// @nodoc

class _$RequestSent implements RequestSent {
  const _$RequestSent();

  @override
  String toString() {
    return 'SignInState.requestSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequestSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return requestSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return requestSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (requestSent != null) {
      return requestSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) {
    return requestSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) {
    return requestSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) {
    if (requestSent != null) {
      return requestSent(this);
    }
    return orElse();
  }
}

abstract class RequestSent implements SignInState {
  const factory RequestSent() = _$RequestSent;
}

/// @nodoc
abstract class $SigInErrorCopyWith<$Res> {
  factory $SigInErrorCopyWith(
          SigInError value, $Res Function(SigInError) then) =
      _$SigInErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$SigInErrorCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $SigInErrorCopyWith<$Res> {
  _$SigInErrorCopyWithImpl(SigInError _value, $Res Function(SigInError) _then)
      : super(_value, (v) => _then(v as SigInError));

  @override
  SigInError get _value => super._value as SigInError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SigInError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SigInError implements SigInError {
  const _$SigInError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignInState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SigInError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $SigInErrorCopyWith<SigInError> get copyWith =>
      _$SigInErrorCopyWithImpl<SigInError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) loggedIn,
    required TResult Function() requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? loggedIn,
    TResult Function()? requestSent,
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
    required TResult Function(SigInInitial value) initial,
    required TResult Function(SigInLoading value) loading,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(RequestSent value) requestSent,
    required TResult Function(SigInError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigInInitial value)? initial,
    TResult Function(SigInLoading value)? loading,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(RequestSent value)? requestSent,
    TResult Function(SigInError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SigInError implements SignInState {
  const factory SigInError(Failure failure) = _$SigInError;

  Failure get failure;
  @JsonKey(ignore: true)
  $SigInErrorCopyWith<SigInError> get copyWith =>
      throw _privateConstructorUsedError;
}
