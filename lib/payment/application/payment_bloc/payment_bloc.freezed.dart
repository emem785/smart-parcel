// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

  MakePayment makePayment(
      {required BuildContext context, required int amount}) {
    return MakePayment(
      context: context,
      amount: amount,
    );
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
  $Res call({BuildContext context, int amount});
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $MakePaymentCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory $MakePaymentCopyWith(
          MakePayment value, $Res Function(MakePayment) then) =
      _$MakePaymentCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, int amount});
}

/// @nodoc
class _$MakePaymentCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $MakePaymentCopyWith<$Res> {
  _$MakePaymentCopyWithImpl(
      MakePayment _value, $Res Function(MakePayment) _then)
      : super(_value, (v) => _then(v as MakePayment));

  @override
  MakePayment get _value => super._value as MakePayment;

  @override
  $Res call({
    Object? context = freezed,
    Object? amount = freezed,
  }) {
    return _then(MakePayment(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MakePayment implements MakePayment {
  const _$MakePayment({required this.context, required this.amount});

  @override
  final BuildContext context;
  @override
  final int amount;

  @override
  String toString() {
    return 'PaymentEvent.makePayment(context: $context, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakePayment &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, amount);

  @JsonKey(ignore: true)
  @override
  $MakePaymentCopyWith<MakePayment> get copyWith =>
      _$MakePaymentCopyWithImpl<MakePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
  }) {
    return makePayment(context, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
  }) {
    return makePayment?.call(context, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    required TResult orElse(),
  }) {
    if (makePayment != null) {
      return makePayment(context, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
  }) {
    return makePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
  }) {
    return makePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    required TResult orElse(),
  }) {
    if (makePayment != null) {
      return makePayment(this);
    }
    return orElse();
  }
}

abstract class MakePayment implements PaymentEvent {
  const factory MakePayment(
      {required BuildContext context, required int amount}) = _$MakePayment;

  @override
  BuildContext get context;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  $MakePaymentCopyWith<MakePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  PaymentInitial initial() {
    return const PaymentInitial();
  }

  PaymentLoading loading() {
    return const PaymentLoading();
  }

  PaymentError error(Failure failure) {
    return PaymentError(
      failure,
    );
  }

  PaymentSuccessful paymentSuccessful(String message) {
    return PaymentSuccessful(
      message,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message) paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class $PaymentInitialCopyWith<$Res> {
  factory $PaymentInitialCopyWith(
          PaymentInitial value, $Res Function(PaymentInitial) then) =
      _$PaymentInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentInitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentInitialCopyWith<$Res> {
  _$PaymentInitialCopyWithImpl(
      PaymentInitial _value, $Res Function(PaymentInitial) _then)
      : super(_value, (v) => _then(v as PaymentInitial));

  @override
  PaymentInitial get _value => super._value as PaymentInitial;
}

/// @nodoc

class _$PaymentInitial implements PaymentInitial {
  const _$PaymentInitial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message) paymentSuccessful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentInitial implements PaymentState {
  const factory PaymentInitial() = _$PaymentInitial;
}

/// @nodoc
abstract class $PaymentLoadingCopyWith<$Res> {
  factory $PaymentLoadingCopyWith(
          PaymentLoading value, $Res Function(PaymentLoading) then) =
      _$PaymentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentLoadingCopyWith<$Res> {
  _$PaymentLoadingCopyWithImpl(
      PaymentLoading _value, $Res Function(PaymentLoading) _then)
      : super(_value, (v) => _then(v as PaymentLoading));

  @override
  PaymentLoading get _value => super._value as PaymentLoading;
}

/// @nodoc

class _$PaymentLoading implements PaymentLoading {
  const _$PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message) paymentSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements PaymentState {
  const factory PaymentLoading() = _$PaymentLoading;
}

/// @nodoc
abstract class $PaymentErrorCopyWith<$Res> {
  factory $PaymentErrorCopyWith(
          PaymentError value, $Res Function(PaymentError) then) =
      _$PaymentErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$PaymentErrorCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentErrorCopyWith<$Res> {
  _$PaymentErrorCopyWithImpl(
      PaymentError _value, $Res Function(PaymentError) _then)
      : super(_value, (v) => _then(v as PaymentError));

  @override
  PaymentError get _value => super._value as PaymentError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(PaymentError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PaymentError implements PaymentError {
  const _$PaymentError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PaymentState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message) paymentSuccessful,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentState {
  const factory PaymentError(Failure failure) = _$PaymentError;

  Failure get failure;
  @JsonKey(ignore: true)
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSuccessfulCopyWith<$Res> {
  factory $PaymentSuccessfulCopyWith(
          PaymentSuccessful value, $Res Function(PaymentSuccessful) then) =
      _$PaymentSuccessfulCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PaymentSuccessfulCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentSuccessfulCopyWith<$Res> {
  _$PaymentSuccessfulCopyWithImpl(
      PaymentSuccessful _value, $Res Function(PaymentSuccessful) _then)
      : super(_value, (v) => _then(v as PaymentSuccessful));

  @override
  PaymentSuccessful get _value => super._value as PaymentSuccessful;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PaymentSuccessful(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessful implements PaymentSuccessful {
  const _$PaymentSuccessful(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PaymentState.paymentSuccessful(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentSuccessful &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      _$PaymentSuccessfulCopyWithImpl<PaymentSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message) paymentSuccessful,
  }) {
    return paymentSuccessful(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
  }) {
    return paymentSuccessful?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentSuccessful != null) {
      return paymentSuccessful(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return paymentSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return paymentSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentSuccessful != null) {
      return paymentSuccessful(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessful implements PaymentState {
  const factory PaymentSuccessful(String message) = _$PaymentSuccessful;

  String get message;
  @JsonKey(ignore: true)
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
