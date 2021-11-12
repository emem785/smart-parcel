// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  SignUp signUp(
      {required User user,
      required String password,
      required String confirmPassword}) {
    return SignUp(
      user: user,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  RequestOtp requestOtp({required String email}) {
    return RequestOtp(
      email: email,
    );
  }

  SubmitOtp submitOtp(
      {required String otp, required String email, required String password}) {
    return SubmitOtp(
      otp: otp,
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user, String password, String confirmPassword)
        signUp,
    required TResult Function(String email) requestOtp,
    required TResult Function(String otp, String email, String password)
        submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(RequestOtp value) requestOtp,
    required TResult Function(SubmitOtp value) submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  $Res call({User user, String password, String confirmPassword});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;

  @override
  $Res call({
    Object? user = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(SignUp(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp(
      {required this.user,
      required this.password,
      required this.confirmPassword});

  @override
  final User user;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.signUp(user: $user, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUp &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  $SignUpCopyWith<SignUp> get copyWith =>
      _$SignUpCopyWithImpl<SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user, String password, String confirmPassword)
        signUp,
    required TResult Function(String email) requestOtp,
    required TResult Function(String otp, String email, String password)
        submitOtp,
  }) {
    return signUp(user, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
  }) {
    return signUp?.call(user, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(user, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(RequestOtp value) requestOtp,
    required TResult Function(SubmitOtp value) submitOtp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SignUpEvent {
  const factory SignUp(
      {required User user,
      required String password,
      required String confirmPassword}) = _$SignUp;

  User get user;
  String get password;
  String get confirmPassword;
  @JsonKey(ignore: true)
  $SignUpCopyWith<SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOtpCopyWith<$Res> {
  factory $RequestOtpCopyWith(
          RequestOtp value, $Res Function(RequestOtp) then) =
      _$RequestOtpCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$RequestOtpCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $RequestOtpCopyWith<$Res> {
  _$RequestOtpCopyWithImpl(RequestOtp _value, $Res Function(RequestOtp) _then)
      : super(_value, (v) => _then(v as RequestOtp));

  @override
  RequestOtp get _value => super._value as RequestOtp;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(RequestOtp(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestOtp implements RequestOtp {
  const _$RequestOtp({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.requestOtp(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestOtp &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  $RequestOtpCopyWith<RequestOtp> get copyWith =>
      _$RequestOtpCopyWithImpl<RequestOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user, String password, String confirmPassword)
        signUp,
    required TResult Function(String email) requestOtp,
    required TResult Function(String otp, String email, String password)
        submitOtp,
  }) {
    return requestOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
  }) {
    return requestOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
    required TResult orElse(),
  }) {
    if (requestOtp != null) {
      return requestOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(RequestOtp value) requestOtp,
    required TResult Function(SubmitOtp value) submitOtp,
  }) {
    return requestOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
  }) {
    return requestOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (requestOtp != null) {
      return requestOtp(this);
    }
    return orElse();
  }
}

abstract class RequestOtp implements SignUpEvent {
  const factory RequestOtp({required String email}) = _$RequestOtp;

  String get email;
  @JsonKey(ignore: true)
  $RequestOtpCopyWith<RequestOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitOtpCopyWith<$Res> {
  factory $SubmitOtpCopyWith(SubmitOtp value, $Res Function(SubmitOtp) then) =
      _$SubmitOtpCopyWithImpl<$Res>;
  $Res call({String otp, String email, String password});
}

/// @nodoc
class _$SubmitOtpCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SubmitOtpCopyWith<$Res> {
  _$SubmitOtpCopyWithImpl(SubmitOtp _value, $Res Function(SubmitOtp) _then)
      : super(_value, (v) => _then(v as SubmitOtp));

  @override
  SubmitOtp get _value => super._value as SubmitOtp;

  @override
  $Res call({
    Object? otp = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SubmitOtp(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SubmitOtp implements SubmitOtp {
  const _$SubmitOtp(
      {required this.otp, required this.email, required this.password});

  @override
  final String otp;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.submitOtp(otp: $otp, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitOtp &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, email, password);

  @JsonKey(ignore: true)
  @override
  $SubmitOtpCopyWith<SubmitOtp> get copyWith =>
      _$SubmitOtpCopyWithImpl<SubmitOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User user, String password, String confirmPassword)
        signUp,
    required TResult Function(String email) requestOtp,
    required TResult Function(String otp, String email, String password)
        submitOtp,
  }) {
    return submitOtp(otp, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
  }) {
    return submitOtp?.call(otp, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String password, String confirmPassword)?
        signUp,
    TResult Function(String email)? requestOtp,
    TResult Function(String otp, String email, String password)? submitOtp,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(otp, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(RequestOtp value) requestOtp,
    required TResult Function(SubmitOtp value) submitOtp,
  }) {
    return submitOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
  }) {
    return submitOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(RequestOtp value)? requestOtp,
    TResult Function(SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(this);
    }
    return orElse();
  }
}

abstract class SubmitOtp implements SignUpEvent {
  const factory SubmitOtp(
      {required String otp,
      required String email,
      required String password}) = _$SubmitOtp;

  String get otp;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  $SubmitOtpCopyWith<SubmitOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  SignUpInitial initial() {
    return const SignUpInitial();
  }

  SignUpLoading loading() {
    return const SignUpLoading();
  }

  SignUpRegistered registered(User user) {
    return SignUpRegistered(
      user,
    );
  }

  OtpSubmitted otpSubmitted(LoginResponse loginResponse) {
    return OtpSubmitted(
      loginResponse,
    );
  }

  OtpRequestSent requestSent(SimpleAuthResponse response) {
    return OtpRequestSent(
      response,
    );
  }

  SignUpError error(Failure failure) {
    return SignUpError(
      failure,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $SignUpInitialCopyWith<$Res> {
  factory $SignUpInitialCopyWith(
          SignUpInitial value, $Res Function(SignUpInitial) then) =
      _$SignUpInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpInitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpInitialCopyWith<$Res> {
  _$SignUpInitialCopyWithImpl(
      SignUpInitial _value, $Res Function(SignUpInitial) _then)
      : super(_value, (v) => _then(v as SignUpInitial));

  @override
  SignUpInitial get _value => super._value as SignUpInitial;
}

/// @nodoc

class _$SignUpInitial implements SignUpInitial {
  const _$SignUpInitial();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpInitial implements SignUpState {
  const factory SignUpInitial() = _$SignUpInitial;
}

/// @nodoc
abstract class $SignUpLoadingCopyWith<$Res> {
  factory $SignUpLoadingCopyWith(
          SignUpLoading value, $Res Function(SignUpLoading) then) =
      _$SignUpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpLoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpLoadingCopyWith<$Res> {
  _$SignUpLoadingCopyWithImpl(
      SignUpLoading _value, $Res Function(SignUpLoading) _then)
      : super(_value, (v) => _then(v as SignUpLoading));

  @override
  SignUpLoading get _value => super._value as SignUpLoading;
}

/// @nodoc

class _$SignUpLoading implements SignUpLoading {
  const _$SignUpLoading();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading implements SignUpState {
  const factory SignUpLoading() = _$SignUpLoading;
}

/// @nodoc
abstract class $SignUpRegisteredCopyWith<$Res> {
  factory $SignUpRegisteredCopyWith(
          SignUpRegistered value, $Res Function(SignUpRegistered) then) =
      _$SignUpRegisteredCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$SignUpRegisteredCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpRegisteredCopyWith<$Res> {
  _$SignUpRegisteredCopyWithImpl(
      SignUpRegistered _value, $Res Function(SignUpRegistered) _then)
      : super(_value, (v) => _then(v as SignUpRegistered));

  @override
  SignUpRegistered get _value => super._value as SignUpRegistered;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SignUpRegistered(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SignUpRegistered implements SignUpRegistered {
  const _$SignUpRegistered(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'SignUpState.registered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRegistered &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $SignUpRegisteredCopyWith<SignUpRegistered> get copyWith =>
      _$SignUpRegisteredCopyWithImpl<SignUpRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return registered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return registered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class SignUpRegistered implements SignUpState {
  const factory SignUpRegistered(User user) = _$SignUpRegistered;

  User get user;
  @JsonKey(ignore: true)
  $SignUpRegisteredCopyWith<SignUpRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpSubmittedCopyWith<$Res> {
  factory $OtpSubmittedCopyWith(
          OtpSubmitted value, $Res Function(OtpSubmitted) then) =
      _$OtpSubmittedCopyWithImpl<$Res>;
  $Res call({LoginResponse loginResponse});
}

/// @nodoc
class _$OtpSubmittedCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $OtpSubmittedCopyWith<$Res> {
  _$OtpSubmittedCopyWithImpl(
      OtpSubmitted _value, $Res Function(OtpSubmitted) _then)
      : super(_value, (v) => _then(v as OtpSubmitted));

  @override
  OtpSubmitted get _value => super._value as OtpSubmitted;

  @override
  $Res call({
    Object? loginResponse = freezed,
  }) {
    return _then(OtpSubmitted(
      loginResponse == freezed
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$OtpSubmitted implements OtpSubmitted {
  const _$OtpSubmitted(this.loginResponse);

  @override
  final LoginResponse loginResponse;

  @override
  String toString() {
    return 'SignUpState.otpSubmitted(loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpSubmitted &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  @JsonKey(ignore: true)
  @override
  $OtpSubmittedCopyWith<OtpSubmitted> get copyWith =>
      _$OtpSubmittedCopyWithImpl<OtpSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return otpSubmitted(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return otpSubmitted?.call(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(loginResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class OtpSubmitted implements SignUpState {
  const factory OtpSubmitted(LoginResponse loginResponse) = _$OtpSubmitted;

  LoginResponse get loginResponse;
  @JsonKey(ignore: true)
  $OtpSubmittedCopyWith<OtpSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpRequestSentCopyWith<$Res> {
  factory $OtpRequestSentCopyWith(
          OtpRequestSent value, $Res Function(OtpRequestSent) then) =
      _$OtpRequestSentCopyWithImpl<$Res>;
  $Res call({SimpleAuthResponse response});
}

/// @nodoc
class _$OtpRequestSentCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $OtpRequestSentCopyWith<$Res> {
  _$OtpRequestSentCopyWithImpl(
      OtpRequestSent _value, $Res Function(OtpRequestSent) _then)
      : super(_value, (v) => _then(v as OtpRequestSent));

  @override
  OtpRequestSent get _value => super._value as OtpRequestSent;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(OtpRequestSent(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SimpleAuthResponse,
    ));
  }
}

/// @nodoc

class _$OtpRequestSent implements OtpRequestSent {
  const _$OtpRequestSent(this.response);

  @override
  final SimpleAuthResponse response;

  @override
  String toString() {
    return 'SignUpState.requestSent(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpRequestSent &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  $OtpRequestSentCopyWith<OtpRequestSent> get copyWith =>
      _$OtpRequestSentCopyWithImpl<OtpRequestSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return requestSent(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return requestSent?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (requestSent != null) {
      return requestSent(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return requestSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return requestSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (requestSent != null) {
      return requestSent(this);
    }
    return orElse();
  }
}

abstract class OtpRequestSent implements SignUpState {
  const factory OtpRequestSent(SimpleAuthResponse response) = _$OtpRequestSent;

  SimpleAuthResponse get response;
  @JsonKey(ignore: true)
  $OtpRequestSentCopyWith<OtpRequestSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SignUpError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SignUpError implements SignUpError {
  const _$SignUpError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignUpState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) registered,
    required TResult Function(LoginResponse loginResponse) otpSubmitted,
    required TResult Function(SimpleAuthResponse response) requestSent,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? registered,
    TResult Function(LoginResponse loginResponse)? otpSubmitted,
    TResult Function(SimpleAuthResponse response)? requestSent,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpRegistered value) registered,
    required TResult Function(OtpSubmitted value) otpSubmitted,
    required TResult Function(OtpRequestSent value) requestSent,
    required TResult Function(SignUpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpRegistered value)? registered,
    TResult Function(OtpSubmitted value)? otpSubmitted,
    TResult Function(OtpRequestSent value)? requestSent,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUpState {
  const factory SignUpError(Failure failure) = _$SignUpError;

  Failure get failure;
  @JsonKey(ignore: true)
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      throw _privateConstructorUsedError;
}
