// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryEventTearOff {
  const _$DeliveryEventTearOff();

  SelectLocation selectLocation(BuildContext context,
      dynamic Function(PageRouteInfo<dynamic>) onRetreived) {
    return SelectLocation(
      context,
      onRetreived,
    );
  }

  GetParcelCenters getParcelCenters() {
    return const GetParcelCenters();
  }
}

/// @nodoc
const $DeliveryEvent = _$DeliveryEventTearOff();

/// @nodoc
mixin _$DeliveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)
        selectLocation,
    required TResult Function() getParcelCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(GetParcelCenters value) getParcelCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryEventCopyWith<$Res> {
  factory $DeliveryEventCopyWith(
          DeliveryEvent value, $Res Function(DeliveryEvent) then) =
      _$DeliveryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveryEventCopyWithImpl<$Res>
    implements $DeliveryEventCopyWith<$Res> {
  _$DeliveryEventCopyWithImpl(this._value, this._then);

  final DeliveryEvent _value;
  // ignore: unused_field
  final $Res Function(DeliveryEvent) _then;
}

/// @nodoc
abstract class $SelectLocationCopyWith<$Res> {
  factory $SelectLocationCopyWith(
          SelectLocation value, $Res Function(SelectLocation) then) =
      _$SelectLocationCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      dynamic Function(PageRouteInfo<dynamic>) onRetreived});
}

/// @nodoc
class _$SelectLocationCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res>
    implements $SelectLocationCopyWith<$Res> {
  _$SelectLocationCopyWithImpl(
      SelectLocation _value, $Res Function(SelectLocation) _then)
      : super(_value, (v) => _then(v as SelectLocation));

  @override
  SelectLocation get _value => super._value as SelectLocation;

  @override
  $Res call({
    Object? context = freezed,
    Object? onRetreived = freezed,
  }) {
    return _then(SelectLocation(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      onRetreived == freezed
          ? _value.onRetreived
          : onRetreived // ignore: cast_nullable_to_non_nullable
              as dynamic Function(PageRouteInfo<dynamic>),
    ));
  }
}

/// @nodoc

class _$SelectLocation implements SelectLocation {
  const _$SelectLocation(this.context, this.onRetreived);

  @override
  final BuildContext context;
  @override
  final dynamic Function(PageRouteInfo<dynamic>) onRetreived;

  @override
  String toString() {
    return 'DeliveryEvent.selectLocation(context: $context, onRetreived: $onRetreived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectLocation &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.onRetreived, onRetreived) ||
                other.onRetreived == onRetreived));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, onRetreived);

  @JsonKey(ignore: true)
  @override
  $SelectLocationCopyWith<SelectLocation> get copyWith =>
      _$SelectLocationCopyWithImpl<SelectLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)
        selectLocation,
    required TResult Function() getParcelCenters,
  }) {
    return selectLocation(context, onRetreived);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
  }) {
    return selectLocation?.call(context, onRetreived);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(context, onRetreived);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(GetParcelCenters value) getParcelCenters,
  }) {
    return selectLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
  }) {
    return selectLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(this);
    }
    return orElse();
  }
}

abstract class SelectLocation implements DeliveryEvent {
  const factory SelectLocation(BuildContext context,
      dynamic Function(PageRouteInfo<dynamic>) onRetreived) = _$SelectLocation;

  BuildContext get context;
  dynamic Function(PageRouteInfo<dynamic>) get onRetreived;
  @JsonKey(ignore: true)
  $SelectLocationCopyWith<SelectLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetParcelCentersCopyWith<$Res> {
  factory $GetParcelCentersCopyWith(
          GetParcelCenters value, $Res Function(GetParcelCenters) then) =
      _$GetParcelCentersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetParcelCentersCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res>
    implements $GetParcelCentersCopyWith<$Res> {
  _$GetParcelCentersCopyWithImpl(
      GetParcelCenters _value, $Res Function(GetParcelCenters) _then)
      : super(_value, (v) => _then(v as GetParcelCenters));

  @override
  GetParcelCenters get _value => super._value as GetParcelCenters;
}

/// @nodoc

class _$GetParcelCenters implements GetParcelCenters {
  const _$GetParcelCenters();

  @override
  String toString() {
    return 'DeliveryEvent.getParcelCenters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetParcelCenters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)
        selectLocation,
    required TResult Function() getParcelCenters,
  }) {
    return getParcelCenters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
  }) {
    return getParcelCenters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context,
            dynamic Function(PageRouteInfo<dynamic>) onRetreived)?
        selectLocation,
    TResult Function()? getParcelCenters,
    required TResult orElse(),
  }) {
    if (getParcelCenters != null) {
      return getParcelCenters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(GetParcelCenters value) getParcelCenters,
  }) {
    return getParcelCenters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
  }) {
    return getParcelCenters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    required TResult orElse(),
  }) {
    if (getParcelCenters != null) {
      return getParcelCenters(this);
    }
    return orElse();
  }
}

abstract class GetParcelCenters implements DeliveryEvent {
  const factory GetParcelCenters() = _$GetParcelCenters;
}

/// @nodoc
class _$DeliveryStateTearOff {
  const _$DeliveryStateTearOff();

  DeliveryInitial initial() {
    return const DeliveryInitial();
  }

  DeliveryLoading loading() {
    return const DeliveryLoading();
  }

  DeliveryError error(Failure failure) {
    return DeliveryError(
      failure,
    );
  }

  LocationRetrieved locationRetrieved(ParcelCenter parcelCenter) {
    return LocationRetrieved(
      parcelCenter,
    );
  }

  CentersRetreived centersRetreived(List<CenterDistrict> districts) {
    return CentersRetreived(
      districts,
    );
  }
}

/// @nodoc
const $DeliveryState = _$DeliveryStateTearOff();

/// @nodoc
mixin _$DeliveryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) then) =
      _$DeliveryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._value, this._then);

  final DeliveryState _value;
  // ignore: unused_field
  final $Res Function(DeliveryState) _then;
}

/// @nodoc
abstract class $DeliveryInitialCopyWith<$Res> {
  factory $DeliveryInitialCopyWith(
          DeliveryInitial value, $Res Function(DeliveryInitial) then) =
      _$DeliveryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveryInitialCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryInitialCopyWith<$Res> {
  _$DeliveryInitialCopyWithImpl(
      DeliveryInitial _value, $Res Function(DeliveryInitial) _then)
      : super(_value, (v) => _then(v as DeliveryInitial));

  @override
  DeliveryInitial get _value => super._value as DeliveryInitial;
}

/// @nodoc

class _$DeliveryInitial implements DeliveryInitial {
  const _$DeliveryInitial();

  @override
  String toString() {
    return 'DeliveryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeliveryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
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
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeliveryInitial implements DeliveryState {
  const factory DeliveryInitial() = _$DeliveryInitial;
}

/// @nodoc
abstract class $DeliveryLoadingCopyWith<$Res> {
  factory $DeliveryLoadingCopyWith(
          DeliveryLoading value, $Res Function(DeliveryLoading) then) =
      _$DeliveryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveryLoadingCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryLoadingCopyWith<$Res> {
  _$DeliveryLoadingCopyWithImpl(
      DeliveryLoading _value, $Res Function(DeliveryLoading) _then)
      : super(_value, (v) => _then(v as DeliveryLoading));

  @override
  DeliveryLoading get _value => super._value as DeliveryLoading;
}

/// @nodoc

class _$DeliveryLoading implements DeliveryLoading {
  const _$DeliveryLoading();

  @override
  String toString() {
    return 'DeliveryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeliveryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
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
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeliveryLoading implements DeliveryState {
  const factory DeliveryLoading() = _$DeliveryLoading;
}

/// @nodoc
abstract class $DeliveryErrorCopyWith<$Res> {
  factory $DeliveryErrorCopyWith(
          DeliveryError value, $Res Function(DeliveryError) then) =
      _$DeliveryErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$DeliveryErrorCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryErrorCopyWith<$Res> {
  _$DeliveryErrorCopyWithImpl(
      DeliveryError _value, $Res Function(DeliveryError) _then)
      : super(_value, (v) => _then(v as DeliveryError));

  @override
  DeliveryError get _value => super._value as DeliveryError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(DeliveryError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DeliveryError implements DeliveryError {
  const _$DeliveryError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DeliveryState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliveryError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $DeliveryErrorCopyWith<DeliveryError> get copyWith =>
      _$DeliveryErrorCopyWithImpl<DeliveryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
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
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeliveryError implements DeliveryState {
  const factory DeliveryError(Failure failure) = _$DeliveryError;

  Failure get failure;
  @JsonKey(ignore: true)
  $DeliveryErrorCopyWith<DeliveryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRetrievedCopyWith<$Res> {
  factory $LocationRetrievedCopyWith(
          LocationRetrieved value, $Res Function(LocationRetrieved) then) =
      _$LocationRetrievedCopyWithImpl<$Res>;
  $Res call({ParcelCenter parcelCenter});
}

/// @nodoc
class _$LocationRetrievedCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $LocationRetrievedCopyWith<$Res> {
  _$LocationRetrievedCopyWithImpl(
      LocationRetrieved _value, $Res Function(LocationRetrieved) _then)
      : super(_value, (v) => _then(v as LocationRetrieved));

  @override
  LocationRetrieved get _value => super._value as LocationRetrieved;

  @override
  $Res call({
    Object? parcelCenter = freezed,
  }) {
    return _then(LocationRetrieved(
      parcelCenter == freezed
          ? _value.parcelCenter
          : parcelCenter // ignore: cast_nullable_to_non_nullable
              as ParcelCenter,
    ));
  }
}

/// @nodoc

class _$LocationRetrieved implements LocationRetrieved {
  const _$LocationRetrieved(this.parcelCenter);

  @override
  final ParcelCenter parcelCenter;

  @override
  String toString() {
    return 'DeliveryState.locationRetrieved(parcelCenter: $parcelCenter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationRetrieved &&
            (identical(other.parcelCenter, parcelCenter) ||
                other.parcelCenter == parcelCenter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parcelCenter);

  @JsonKey(ignore: true)
  @override
  $LocationRetrievedCopyWith<LocationRetrieved> get copyWith =>
      _$LocationRetrievedCopyWithImpl<LocationRetrieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return locationRetrieved(parcelCenter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return locationRetrieved?.call(parcelCenter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
    required TResult orElse(),
  }) {
    if (locationRetrieved != null) {
      return locationRetrieved(parcelCenter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return locationRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return locationRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (locationRetrieved != null) {
      return locationRetrieved(this);
    }
    return orElse();
  }
}

abstract class LocationRetrieved implements DeliveryState {
  const factory LocationRetrieved(ParcelCenter parcelCenter) =
      _$LocationRetrieved;

  ParcelCenter get parcelCenter;
  @JsonKey(ignore: true)
  $LocationRetrievedCopyWith<LocationRetrieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentersRetreivedCopyWith<$Res> {
  factory $CentersRetreivedCopyWith(
          CentersRetreived value, $Res Function(CentersRetreived) then) =
      _$CentersRetreivedCopyWithImpl<$Res>;
  $Res call({List<CenterDistrict> districts});
}

/// @nodoc
class _$CentersRetreivedCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $CentersRetreivedCopyWith<$Res> {
  _$CentersRetreivedCopyWithImpl(
      CentersRetreived _value, $Res Function(CentersRetreived) _then)
      : super(_value, (v) => _then(v as CentersRetreived));

  @override
  CentersRetreived get _value => super._value as CentersRetreived;

  @override
  $Res call({
    Object? districts = freezed,
  }) {
    return _then(CentersRetreived(
      districts == freezed
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<CenterDistrict>,
    ));
  }
}

/// @nodoc

class _$CentersRetreived implements CentersRetreived {
  const _$CentersRetreived(this.districts);

  @override
  final List<CenterDistrict> districts;

  @override
  String toString() {
    return 'DeliveryState.centersRetreived(districts: $districts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CentersRetreived &&
            const DeepCollectionEquality().equals(other.districts, districts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(districts));

  @JsonKey(ignore: true)
  @override
  $CentersRetreivedCopyWith<CentersRetreived> get copyWith =>
      _$CentersRetreivedCopyWithImpl<CentersRetreived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return centersRetreived(districts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return centersRetreived?.call(districts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
    required TResult orElse(),
  }) {
    if (centersRetreived != null) {
      return centersRetreived(districts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliveryInitial value) initial,
    required TResult Function(DeliveryLoading value) loading,
    required TResult Function(DeliveryError value) error,
    required TResult Function(LocationRetrieved value) locationRetrieved,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return centersRetreived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return centersRetreived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (centersRetreived != null) {
      return centersRetreived(this);
    }
    return orElse();
  }
}

abstract class CentersRetreived implements DeliveryState {
  const factory CentersRetreived(List<CenterDistrict> districts) =
      _$CentersRetreived;

  List<CenterDistrict> get districts;
  @JsonKey(ignore: true)
  $CentersRetreivedCopyWith<CentersRetreived> get copyWith =>
      throw _privateConstructorUsedError;
}
