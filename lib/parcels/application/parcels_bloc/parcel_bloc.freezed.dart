// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parcel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParcelEventTearOff {
  const _$ParcelEventTearOff();

  GetParcelHistory getHistory() {
    return const GetParcelHistory();
  }
}

/// @nodoc
const $ParcelEvent = _$ParcelEventTearOff();

/// @nodoc
mixin _$ParcelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetParcelHistory value) getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetParcelHistory value)? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetParcelHistory value)? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelEventCopyWith<$Res> {
  factory $ParcelEventCopyWith(
          ParcelEvent value, $Res Function(ParcelEvent) then) =
      _$ParcelEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelEventCopyWithImpl<$Res> implements $ParcelEventCopyWith<$Res> {
  _$ParcelEventCopyWithImpl(this._value, this._then);

  final ParcelEvent _value;
  // ignore: unused_field
  final $Res Function(ParcelEvent) _then;
}

/// @nodoc
abstract class $GetParcelHistoryCopyWith<$Res> {
  factory $GetParcelHistoryCopyWith(
          GetParcelHistory value, $Res Function(GetParcelHistory) then) =
      _$GetParcelHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetParcelHistoryCopyWithImpl<$Res>
    extends _$ParcelEventCopyWithImpl<$Res>
    implements $GetParcelHistoryCopyWith<$Res> {
  _$GetParcelHistoryCopyWithImpl(
      GetParcelHistory _value, $Res Function(GetParcelHistory) _then)
      : super(_value, (v) => _then(v as GetParcelHistory));

  @override
  GetParcelHistory get _value => super._value as GetParcelHistory;
}

/// @nodoc

class _$GetParcelHistory implements GetParcelHistory {
  const _$GetParcelHistory();

  @override
  String toString() {
    return 'ParcelEvent.getHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetParcelHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
  }) {
    return getHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHistory,
  }) {
    return getHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetParcelHistory value) getHistory,
  }) {
    return getHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetParcelHistory value)? getHistory,
  }) {
    return getHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetParcelHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory(this);
    }
    return orElse();
  }
}

abstract class GetParcelHistory implements ParcelEvent {
  const factory GetParcelHistory() = _$GetParcelHistory;
}

/// @nodoc
class _$ParcelStateTearOff {
  const _$ParcelStateTearOff();

  ParcelInitial initial() {
    return const ParcelInitial();
  }

  ParcelLoading loading() {
    return const ParcelLoading();
  }

  ParcelError error(Failure failure) {
    return ParcelError(
      failure,
    );
  }

  HistoryRetreived historyRetreived(ParcelResponse parcelResponse) {
    return HistoryRetreived(
      parcelResponse,
    );
  }
}

/// @nodoc
const $ParcelState = _$ParcelStateTearOff();

/// @nodoc
mixin _$ParcelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelResponse parcelResponse) historyRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelInitial value) initial,
    required TResult Function(ParcelLoading value) loading,
    required TResult Function(ParcelError value) error,
    required TResult Function(HistoryRetreived value) historyRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelStateCopyWith<$Res> {
  factory $ParcelStateCopyWith(
          ParcelState value, $Res Function(ParcelState) then) =
      _$ParcelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelStateCopyWithImpl<$Res> implements $ParcelStateCopyWith<$Res> {
  _$ParcelStateCopyWithImpl(this._value, this._then);

  final ParcelState _value;
  // ignore: unused_field
  final $Res Function(ParcelState) _then;
}

/// @nodoc
abstract class $ParcelInitialCopyWith<$Res> {
  factory $ParcelInitialCopyWith(
          ParcelInitial value, $Res Function(ParcelInitial) then) =
      _$ParcelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelInitialCopyWithImpl<$Res> extends _$ParcelStateCopyWithImpl<$Res>
    implements $ParcelInitialCopyWith<$Res> {
  _$ParcelInitialCopyWithImpl(
      ParcelInitial _value, $Res Function(ParcelInitial) _then)
      : super(_value, (v) => _then(v as ParcelInitial));

  @override
  ParcelInitial get _value => super._value as ParcelInitial;
}

/// @nodoc

class _$ParcelInitial implements ParcelInitial {
  const _$ParcelInitial();

  @override
  String toString() {
    return 'ParcelState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ParcelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelResponse parcelResponse) historyRetreived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
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
    required TResult Function(ParcelInitial value) initial,
    required TResult Function(ParcelLoading value) loading,
    required TResult Function(ParcelError value) error,
    required TResult Function(HistoryRetreived value) historyRetreived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ParcelInitial implements ParcelState {
  const factory ParcelInitial() = _$ParcelInitial;
}

/// @nodoc
abstract class $ParcelLoadingCopyWith<$Res> {
  factory $ParcelLoadingCopyWith(
          ParcelLoading value, $Res Function(ParcelLoading) then) =
      _$ParcelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelLoadingCopyWithImpl<$Res> extends _$ParcelStateCopyWithImpl<$Res>
    implements $ParcelLoadingCopyWith<$Res> {
  _$ParcelLoadingCopyWithImpl(
      ParcelLoading _value, $Res Function(ParcelLoading) _then)
      : super(_value, (v) => _then(v as ParcelLoading));

  @override
  ParcelLoading get _value => super._value as ParcelLoading;
}

/// @nodoc

class _$ParcelLoading implements ParcelLoading {
  const _$ParcelLoading();

  @override
  String toString() {
    return 'ParcelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ParcelLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelResponse parcelResponse) historyRetreived,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
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
    required TResult Function(ParcelInitial value) initial,
    required TResult Function(ParcelLoading value) loading,
    required TResult Function(ParcelError value) error,
    required TResult Function(HistoryRetreived value) historyRetreived,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ParcelLoading implements ParcelState {
  const factory ParcelLoading() = _$ParcelLoading;
}

/// @nodoc
abstract class $ParcelErrorCopyWith<$Res> {
  factory $ParcelErrorCopyWith(
          ParcelError value, $Res Function(ParcelError) then) =
      _$ParcelErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$ParcelErrorCopyWithImpl<$Res> extends _$ParcelStateCopyWithImpl<$Res>
    implements $ParcelErrorCopyWith<$Res> {
  _$ParcelErrorCopyWithImpl(
      ParcelError _value, $Res Function(ParcelError) _then)
      : super(_value, (v) => _then(v as ParcelError));

  @override
  ParcelError get _value => super._value as ParcelError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(ParcelError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ParcelError implements ParcelError {
  const _$ParcelError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ParcelState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParcelError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $ParcelErrorCopyWith<ParcelError> get copyWith =>
      _$ParcelErrorCopyWithImpl<ParcelError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelResponse parcelResponse) historyRetreived,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
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
    required TResult Function(ParcelInitial value) initial,
    required TResult Function(ParcelLoading value) loading,
    required TResult Function(ParcelError value) error,
    required TResult Function(HistoryRetreived value) historyRetreived,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ParcelError implements ParcelState {
  const factory ParcelError(Failure failure) = _$ParcelError;

  Failure get failure;
  @JsonKey(ignore: true)
  $ParcelErrorCopyWith<ParcelError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryRetreivedCopyWith<$Res> {
  factory $HistoryRetreivedCopyWith(
          HistoryRetreived value, $Res Function(HistoryRetreived) then) =
      _$HistoryRetreivedCopyWithImpl<$Res>;
  $Res call({ParcelResponse parcelResponse});
}

/// @nodoc
class _$HistoryRetreivedCopyWithImpl<$Res>
    extends _$ParcelStateCopyWithImpl<$Res>
    implements $HistoryRetreivedCopyWith<$Res> {
  _$HistoryRetreivedCopyWithImpl(
      HistoryRetreived _value, $Res Function(HistoryRetreived) _then)
      : super(_value, (v) => _then(v as HistoryRetreived));

  @override
  HistoryRetreived get _value => super._value as HistoryRetreived;

  @override
  $Res call({
    Object? parcelResponse = freezed,
  }) {
    return _then(HistoryRetreived(
      parcelResponse == freezed
          ? _value.parcelResponse
          : parcelResponse // ignore: cast_nullable_to_non_nullable
              as ParcelResponse,
    ));
  }
}

/// @nodoc

class _$HistoryRetreived implements HistoryRetreived {
  const _$HistoryRetreived(this.parcelResponse);

  @override
  final ParcelResponse parcelResponse;

  @override
  String toString() {
    return 'ParcelState.historyRetreived(parcelResponse: $parcelResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistoryRetreived &&
            (identical(other.parcelResponse, parcelResponse) ||
                other.parcelResponse == parcelResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parcelResponse);

  @JsonKey(ignore: true)
  @override
  $HistoryRetreivedCopyWith<HistoryRetreived> get copyWith =>
      _$HistoryRetreivedCopyWithImpl<HistoryRetreived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelResponse parcelResponse) historyRetreived,
  }) {
    return historyRetreived(parcelResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
  }) {
    return historyRetreived?.call(parcelResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelResponse parcelResponse)? historyRetreived,
    required TResult orElse(),
  }) {
    if (historyRetreived != null) {
      return historyRetreived(parcelResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelInitial value) initial,
    required TResult Function(ParcelLoading value) loading,
    required TResult Function(ParcelError value) error,
    required TResult Function(HistoryRetreived value) historyRetreived,
  }) {
    return historyRetreived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
  }) {
    return historyRetreived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelInitial value)? initial,
    TResult Function(ParcelLoading value)? loading,
    TResult Function(ParcelError value)? error,
    TResult Function(HistoryRetreived value)? historyRetreived,
    required TResult orElse(),
  }) {
    if (historyRetreived != null) {
      return historyRetreived(this);
    }
    return orElse();
  }
}

abstract class HistoryRetreived implements ParcelState {
  const factory HistoryRetreived(ParcelResponse parcelResponse) =
      _$HistoryRetreived;

  ParcelResponse get parcelResponse;
  @JsonKey(ignore: true)
  $HistoryRetreivedCopyWith<HistoryRetreived> get copyWith =>
      throw _privateConstructorUsedError;
}
