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

  SelectLocation selectLocation(
      BuildContext context, PageRouteInfo<dynamic> routeInfo) {
    return SelectLocation(
      context,
      routeInfo,
    );
  }

  ProccedToPayment proceedToPayment(
      {required BuildContext context,
      required PageRouteInfo<dynamic> routeInfo,
      required PaystackResponse paystackResponse,
      required int locationId,
      required String? duration,
      required CustomerForm? customerForm}) {
    return ProccedToPayment(
      context: context,
      routeInfo: routeInfo,
      paystackResponse: paystackResponse,
      locationId: locationId,
      duration: duration,
      customerForm: customerForm,
    );
  }

  Search search(String query) {
    return Search(
      query,
    );
  }

  GetParcelCenters getParcelCenters() {
    return const GetParcelCenters();
  }

  OpenUrl openUrl(String url) {
    return OpenUrl(
      url,
    );
  }
}

/// @nodoc
const $DeliveryEvent = _$DeliveryEventTearOff();

/// @nodoc
mixin _$DeliveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
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
  $Res call({BuildContext context, PageRouteInfo<dynamic> routeInfo});
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
    Object? routeInfo = freezed,
  }) {
    return _then(SelectLocation(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      routeInfo == freezed
          ? _value.routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
    ));
  }
}

/// @nodoc

class _$SelectLocation implements SelectLocation {
  const _$SelectLocation(this.context, this.routeInfo);

  @override
  final BuildContext context;
  @override
  final PageRouteInfo<dynamic> routeInfo;

  @override
  String toString() {
    return 'DeliveryEvent.selectLocation(context: $context, routeInfo: $routeInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectLocation &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.routeInfo, routeInfo) ||
                other.routeInfo == routeInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, routeInfo);

  @JsonKey(ignore: true)
  @override
  $SelectLocationCopyWith<SelectLocation> get copyWith =>
      _$SelectLocationCopyWithImpl<SelectLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) {
    return selectLocation(context, routeInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) {
    return selectLocation?.call(context, routeInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(context, routeInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) {
    return selectLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) {
    return selectLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(this);
    }
    return orElse();
  }
}

abstract class SelectLocation implements DeliveryEvent {
  const factory SelectLocation(
          BuildContext context, PageRouteInfo<dynamic> routeInfo) =
      _$SelectLocation;

  BuildContext get context;
  PageRouteInfo<dynamic> get routeInfo;
  @JsonKey(ignore: true)
  $SelectLocationCopyWith<SelectLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProccedToPaymentCopyWith<$Res> {
  factory $ProccedToPaymentCopyWith(
          ProccedToPayment value, $Res Function(ProccedToPayment) then) =
      _$ProccedToPaymentCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      PageRouteInfo<dynamic> routeInfo,
      PaystackResponse paystackResponse,
      int locationId,
      String? duration,
      CustomerForm? customerForm});
}

/// @nodoc
class _$ProccedToPaymentCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res>
    implements $ProccedToPaymentCopyWith<$Res> {
  _$ProccedToPaymentCopyWithImpl(
      ProccedToPayment _value, $Res Function(ProccedToPayment) _then)
      : super(_value, (v) => _then(v as ProccedToPayment));

  @override
  ProccedToPayment get _value => super._value as ProccedToPayment;

  @override
  $Res call({
    Object? context = freezed,
    Object? routeInfo = freezed,
    Object? paystackResponse = freezed,
    Object? locationId = freezed,
    Object? duration = freezed,
    Object? customerForm = freezed,
  }) {
    return _then(ProccedToPayment(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      routeInfo: routeInfo == freezed
          ? _value.routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      paystackResponse: paystackResponse == freezed
          ? _value.paystackResponse
          : paystackResponse // ignore: cast_nullable_to_non_nullable
              as PaystackResponse,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      customerForm: customerForm == freezed
          ? _value.customerForm
          : customerForm // ignore: cast_nullable_to_non_nullable
              as CustomerForm?,
    ));
  }
}

/// @nodoc

class _$ProccedToPayment implements ProccedToPayment {
  const _$ProccedToPayment(
      {required this.context,
      required this.routeInfo,
      required this.paystackResponse,
      required this.locationId,
      required this.duration,
      required this.customerForm});

  @override
  final BuildContext context;
  @override
  final PageRouteInfo<dynamic> routeInfo;
  @override
  final PaystackResponse paystackResponse;
  @override
  final int locationId;
  @override
  final String? duration;
  @override
  final CustomerForm? customerForm;

  @override
  String toString() {
    return 'DeliveryEvent.proceedToPayment(context: $context, routeInfo: $routeInfo, paystackResponse: $paystackResponse, locationId: $locationId, duration: $duration, customerForm: $customerForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProccedToPayment &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.routeInfo, routeInfo) ||
                other.routeInfo == routeInfo) &&
            (identical(other.paystackResponse, paystackResponse) ||
                other.paystackResponse == paystackResponse) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.customerForm, customerForm) ||
                other.customerForm == customerForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, routeInfo,
      paystackResponse, locationId, duration, customerForm);

  @JsonKey(ignore: true)
  @override
  $ProccedToPaymentCopyWith<ProccedToPayment> get copyWith =>
      _$ProccedToPaymentCopyWithImpl<ProccedToPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) {
    return proceedToPayment(context, routeInfo, paystackResponse, locationId,
        duration, customerForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) {
    return proceedToPayment?.call(context, routeInfo, paystackResponse,
        locationId, duration, customerForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
    required TResult orElse(),
  }) {
    if (proceedToPayment != null) {
      return proceedToPayment(context, routeInfo, paystackResponse, locationId,
          duration, customerForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) {
    return proceedToPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) {
    return proceedToPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
    required TResult orElse(),
  }) {
    if (proceedToPayment != null) {
      return proceedToPayment(this);
    }
    return orElse();
  }
}

abstract class ProccedToPayment implements DeliveryEvent {
  const factory ProccedToPayment(
      {required BuildContext context,
      required PageRouteInfo<dynamic> routeInfo,
      required PaystackResponse paystackResponse,
      required int locationId,
      required String? duration,
      required CustomerForm? customerForm}) = _$ProccedToPayment;

  BuildContext get context;
  PageRouteInfo<dynamic> get routeInfo;
  PaystackResponse get paystackResponse;
  int get locationId;
  String? get duration;
  CustomerForm? get customerForm;
  @JsonKey(ignore: true)
  $ProccedToPaymentCopyWith<ProccedToPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> extends _$DeliveryEventCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(Search(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'DeliveryEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements DeliveryEvent {
  const factory Search(String query) = _$Search;

  String get query;
  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) {
    return getParcelCenters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) {
    return getParcelCenters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
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
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) {
    return getParcelCenters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) {
    return getParcelCenters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
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
abstract class $OpenUrlCopyWith<$Res> {
  factory $OpenUrlCopyWith(OpenUrl value, $Res Function(OpenUrl) then) =
      _$OpenUrlCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$OpenUrlCopyWithImpl<$Res> extends _$DeliveryEventCopyWithImpl<$Res>
    implements $OpenUrlCopyWith<$Res> {
  _$OpenUrlCopyWithImpl(OpenUrl _value, $Res Function(OpenUrl) _then)
      : super(_value, (v) => _then(v as OpenUrl));

  @override
  OpenUrl get _value => super._value as OpenUrl;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(OpenUrl(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenUrl implements OpenUrl {
  const _$OpenUrl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'DeliveryEvent.openUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenUrl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  $OpenUrlCopyWith<OpenUrl> get copyWith =>
      _$OpenUrlCopyWithImpl<OpenUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, PageRouteInfo<dynamic> routeInfo)
        selectLocation,
    required TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)
        proceedToPayment,
    required TResult Function(String query) search,
    required TResult Function() getParcelCenters,
    required TResult Function(String url) openUrl,
  }) {
    return openUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
  }) {
    return openUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, PageRouteInfo<dynamic> routeInfo)?
        selectLocation,
    TResult Function(
            BuildContext context,
            PageRouteInfo<dynamic> routeInfo,
            PaystackResponse paystackResponse,
            int locationId,
            String? duration,
            CustomerForm? customerForm)?
        proceedToPayment,
    TResult Function(String query)? search,
    TResult Function()? getParcelCenters,
    TResult Function(String url)? openUrl,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectLocation value) selectLocation,
    required TResult Function(ProccedToPayment value) proceedToPayment,
    required TResult Function(Search value) search,
    required TResult Function(GetParcelCenters value) getParcelCenters,
    required TResult Function(OpenUrl value) openUrl,
  }) {
    return openUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
  }) {
    return openUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectLocation value)? selectLocation,
    TResult Function(ProccedToPayment value)? proceedToPayment,
    TResult Function(Search value)? search,
    TResult Function(GetParcelCenters value)? getParcelCenters,
    TResult Function(OpenUrl value)? openUrl,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(this);
    }
    return orElse();
  }
}

abstract class OpenUrl implements DeliveryEvent {
  const factory OpenUrl(String url) = _$OpenUrl;

  String get url;
  @JsonKey(ignore: true)
  $OpenUrlCopyWith<OpenUrl> get copyWith => throw _privateConstructorUsedError;
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

  PlaceRetrieved placeRetrieved(LocationResultResponse locationResultResponse) {
    return PlaceRetrieved(
      locationResultResponse,
    );
  }

  BookingFinished bookingFinished(PaymentData paymentData) {
    return BookingFinished(
      paymentData,
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
abstract class $PlaceRetrievedCopyWith<$Res> {
  factory $PlaceRetrievedCopyWith(
          PlaceRetrieved value, $Res Function(PlaceRetrieved) then) =
      _$PlaceRetrievedCopyWithImpl<$Res>;
  $Res call({LocationResultResponse locationResultResponse});
}

/// @nodoc
class _$PlaceRetrievedCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $PlaceRetrievedCopyWith<$Res> {
  _$PlaceRetrievedCopyWithImpl(
      PlaceRetrieved _value, $Res Function(PlaceRetrieved) _then)
      : super(_value, (v) => _then(v as PlaceRetrieved));

  @override
  PlaceRetrieved get _value => super._value as PlaceRetrieved;

  @override
  $Res call({
    Object? locationResultResponse = freezed,
  }) {
    return _then(PlaceRetrieved(
      locationResultResponse == freezed
          ? _value.locationResultResponse
          : locationResultResponse // ignore: cast_nullable_to_non_nullable
              as LocationResultResponse,
    ));
  }
}

/// @nodoc

class _$PlaceRetrieved implements PlaceRetrieved {
  const _$PlaceRetrieved(this.locationResultResponse);

  @override
  final LocationResultResponse locationResultResponse;

  @override
  String toString() {
    return 'DeliveryState.placeRetrieved(locationResultResponse: $locationResultResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceRetrieved &&
            (identical(other.locationResultResponse, locationResultResponse) ||
                other.locationResultResponse == locationResultResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationResultResponse);

  @JsonKey(ignore: true)
  @override
  $PlaceRetrievedCopyWith<PlaceRetrieved> get copyWith =>
      _$PlaceRetrievedCopyWithImpl<PlaceRetrieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return placeRetrieved(locationResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return placeRetrieved?.call(locationResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
    required TResult orElse(),
  }) {
    if (placeRetrieved != null) {
      return placeRetrieved(locationResultResponse);
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return placeRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return placeRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (placeRetrieved != null) {
      return placeRetrieved(this);
    }
    return orElse();
  }
}

abstract class PlaceRetrieved implements DeliveryState {
  const factory PlaceRetrieved(LocationResultResponse locationResultResponse) =
      _$PlaceRetrieved;

  LocationResultResponse get locationResultResponse;
  @JsonKey(ignore: true)
  $PlaceRetrievedCopyWith<PlaceRetrieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFinishedCopyWith<$Res> {
  factory $BookingFinishedCopyWith(
          BookingFinished value, $Res Function(BookingFinished) then) =
      _$BookingFinishedCopyWithImpl<$Res>;
  $Res call({PaymentData paymentData});
}

/// @nodoc
class _$BookingFinishedCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res>
    implements $BookingFinishedCopyWith<$Res> {
  _$BookingFinishedCopyWithImpl(
      BookingFinished _value, $Res Function(BookingFinished) _then)
      : super(_value, (v) => _then(v as BookingFinished));

  @override
  BookingFinished get _value => super._value as BookingFinished;

  @override
  $Res call({
    Object? paymentData = freezed,
  }) {
    return _then(BookingFinished(
      paymentData == freezed
          ? _value.paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as PaymentData,
    ));
  }
}

/// @nodoc

class _$BookingFinished implements BookingFinished {
  const _$BookingFinished(this.paymentData);

  @override
  final PaymentData paymentData;

  @override
  String toString() {
    return 'DeliveryState.bookingFinished(paymentData: $paymentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookingFinished &&
            (identical(other.paymentData, paymentData) ||
                other.paymentData == paymentData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentData);

  @JsonKey(ignore: true)
  @override
  $BookingFinishedCopyWith<BookingFinished> get copyWith =>
      _$BookingFinishedCopyWithImpl<BookingFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(ParcelCenter parcelCenter) locationRetrieved,
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
    required TResult Function(List<CenterDistrict> districts) centersRetreived,
  }) {
    return bookingFinished(paymentData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
  }) {
    return bookingFinished?.call(paymentData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(ParcelCenter parcelCenter)? locationRetrieved,
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
    TResult Function(List<CenterDistrict> districts)? centersRetreived,
    required TResult orElse(),
  }) {
    if (bookingFinished != null) {
      return bookingFinished(paymentData);
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
    required TResult Function(CentersRetreived value) centersRetreived,
  }) {
    return bookingFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
    TResult Function(CentersRetreived value)? centersRetreived,
  }) {
    return bookingFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryInitial value)? initial,
    TResult Function(DeliveryLoading value)? loading,
    TResult Function(DeliveryError value)? error,
    TResult Function(LocationRetrieved value)? locationRetrieved,
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
    TResult Function(CentersRetreived value)? centersRetreived,
    required TResult orElse(),
  }) {
    if (bookingFinished != null) {
      return bookingFinished(this);
    }
    return orElse();
  }
}

abstract class BookingFinished implements DeliveryState {
  const factory BookingFinished(PaymentData paymentData) = _$BookingFinished;

  PaymentData get paymentData;
  @JsonKey(ignore: true)
  $BookingFinishedCopyWith<BookingFinished> get copyWith =>
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
    required TResult Function(LocationResultResponse locationResultResponse)
        placeRetrieved,
    required TResult Function(PaymentData paymentData) bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    TResult Function(LocationResultResponse locationResultResponse)?
        placeRetrieved,
    TResult Function(PaymentData paymentData)? bookingFinished,
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
    required TResult Function(PlaceRetrieved value) placeRetrieved,
    required TResult Function(BookingFinished value) bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
    TResult Function(PlaceRetrieved value)? placeRetrieved,
    TResult Function(BookingFinished value)? bookingFinished,
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
