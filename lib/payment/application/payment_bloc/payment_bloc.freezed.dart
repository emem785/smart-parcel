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

  GetCards getCards() {
    return const GetCards();
  }

  DeleteCard deleteCard(int id) {
    return DeleteCard(
      id,
    );
  }

  ChargeAuthCode chargeAuthCode(
      {required String authCode, required int amount}) {
    return ChargeAuthCode(
      authCode: authCode,
      amount: amount,
    );
  }

  OpenMap openMap(String address) {
    return OpenMap(
      address,
    );
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class $MakePaymentCopyWith<$Res> {
  factory $MakePaymentCopyWith(
          MakePayment value, $Res Function(MakePayment) then) =
      _$MakePaymentCopyWithImpl<$Res>;
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
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) {
    return makePayment(context, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) {
    return makePayment?.call(context, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
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
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) {
    return makePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) {
    return makePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
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

  BuildContext get context;
  int get amount;
  @JsonKey(ignore: true)
  $MakePaymentCopyWith<MakePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardsCopyWith<$Res> {
  factory $GetCardsCopyWith(GetCards value, $Res Function(GetCards) then) =
      _$GetCardsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCardsCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $GetCardsCopyWith<$Res> {
  _$GetCardsCopyWithImpl(GetCards _value, $Res Function(GetCards) _then)
      : super(_value, (v) => _then(v as GetCards));

  @override
  GetCards get _value => super._value as GetCards;
}

/// @nodoc

class _$GetCards implements GetCards {
  const _$GetCards();

  @override
  String toString() {
    return 'PaymentEvent.getCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) {
    return getCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) {
    return getCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class GetCards implements PaymentEvent {
  const factory GetCards() = _$GetCards;
}

/// @nodoc
abstract class $DeleteCardCopyWith<$Res> {
  factory $DeleteCardCopyWith(
          DeleteCard value, $Res Function(DeleteCard) then) =
      _$DeleteCardCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DeleteCardCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $DeleteCardCopyWith<$Res> {
  _$DeleteCardCopyWithImpl(DeleteCard _value, $Res Function(DeleteCard) _then)
      : super(_value, (v) => _then(v as DeleteCard));

  @override
  DeleteCard get _value => super._value as DeleteCard;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DeleteCard(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCard implements DeleteCard {
  const _$DeleteCard(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PaymentEvent.deleteCard(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteCard &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  $DeleteCardCopyWith<DeleteCard> get copyWith =>
      _$DeleteCardCopyWithImpl<DeleteCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) {
    return deleteCard(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) {
    return deleteCard?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) {
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) {
    return deleteCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class DeleteCard implements PaymentEvent {
  const factory DeleteCard(int id) = _$DeleteCard;

  int get id;
  @JsonKey(ignore: true)
  $DeleteCardCopyWith<DeleteCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeAuthCodeCopyWith<$Res> {
  factory $ChargeAuthCodeCopyWith(
          ChargeAuthCode value, $Res Function(ChargeAuthCode) then) =
      _$ChargeAuthCodeCopyWithImpl<$Res>;
  $Res call({String authCode, int amount});
}

/// @nodoc
class _$ChargeAuthCodeCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $ChargeAuthCodeCopyWith<$Res> {
  _$ChargeAuthCodeCopyWithImpl(
      ChargeAuthCode _value, $Res Function(ChargeAuthCode) _then)
      : super(_value, (v) => _then(v as ChargeAuthCode));

  @override
  ChargeAuthCode get _value => super._value as ChargeAuthCode;

  @override
  $Res call({
    Object? authCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(ChargeAuthCode(
      authCode: authCode == freezed
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChargeAuthCode implements ChargeAuthCode {
  const _$ChargeAuthCode({required this.authCode, required this.amount});

  @override
  final String authCode;
  @override
  final int amount;

  @override
  String toString() {
    return 'PaymentEvent.chargeAuthCode(authCode: $authCode, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChargeAuthCode &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authCode, amount);

  @JsonKey(ignore: true)
  @override
  $ChargeAuthCodeCopyWith<ChargeAuthCode> get copyWith =>
      _$ChargeAuthCodeCopyWithImpl<ChargeAuthCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) {
    return chargeAuthCode(authCode, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) {
    return chargeAuthCode?.call(authCode, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
    required TResult orElse(),
  }) {
    if (chargeAuthCode != null) {
      return chargeAuthCode(authCode, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) {
    return chargeAuthCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) {
    return chargeAuthCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (chargeAuthCode != null) {
      return chargeAuthCode(this);
    }
    return orElse();
  }
}

abstract class ChargeAuthCode implements PaymentEvent {
  const factory ChargeAuthCode(
      {required String authCode, required int amount}) = _$ChargeAuthCode;

  String get authCode;
  int get amount;
  @JsonKey(ignore: true)
  $ChargeAuthCodeCopyWith<ChargeAuthCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMapCopyWith<$Res> {
  factory $OpenMapCopyWith(OpenMap value, $Res Function(OpenMap) then) =
      _$OpenMapCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$OpenMapCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $OpenMapCopyWith<$Res> {
  _$OpenMapCopyWithImpl(OpenMap _value, $Res Function(OpenMap) _then)
      : super(_value, (v) => _then(v as OpenMap));

  @override
  OpenMap get _value => super._value as OpenMap;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(OpenMap(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenMap implements OpenMap {
  const _$OpenMap(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'PaymentEvent.openMap(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenMap &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  $OpenMapCopyWith<OpenMap> get copyWith =>
      _$OpenMapCopyWithImpl<OpenMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int amount) makePayment,
    required TResult Function() getCards,
    required TResult Function(int id) deleteCard,
    required TResult Function(String authCode, int amount) chargeAuthCode,
    required TResult Function(String address) openMap,
  }) {
    return openMap(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
  }) {
    return openMap?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int amount)? makePayment,
    TResult Function()? getCards,
    TResult Function(int id)? deleteCard,
    TResult Function(String authCode, int amount)? chargeAuthCode,
    TResult Function(String address)? openMap,
    required TResult orElse(),
  }) {
    if (openMap != null) {
      return openMap(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakePayment value) makePayment,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(ChargeAuthCode value) chargeAuthCode,
    required TResult Function(OpenMap value) openMap,
  }) {
    return openMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
  }) {
    return openMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakePayment value)? makePayment,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(ChargeAuthCode value)? chargeAuthCode,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (openMap != null) {
      return openMap(this);
    }
    return orElse();
  }
}

abstract class OpenMap implements PaymentEvent {
  const factory OpenMap(String address) = _$OpenMap;

  String get address;
  @JsonKey(ignore: true)
  $OpenMapCopyWith<OpenMap> get copyWith => throw _privateConstructorUsedError;
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

  CardCharged cardCharged(String message, String reference) {
    return CardCharged(
      message,
      reference,
    );
  }

  CardsRetreived cardsRetreived(List<BankCard> cards) {
    return CardsRetreived(
      cards,
    );
  }

  CardRemoved cardRemoved() {
    return const CardRemoved();
  }

  PaymentSuccessful paymentSuccessful(String message, String reference) {
    return PaymentSuccessful(
      message,
      reference,
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
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
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
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
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
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
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
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
abstract class $CardChargedCopyWith<$Res> {
  factory $CardChargedCopyWith(
          CardCharged value, $Res Function(CardCharged) then) =
      _$CardChargedCopyWithImpl<$Res>;
  $Res call({String message, String reference});
}

/// @nodoc
class _$CardChargedCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $CardChargedCopyWith<$Res> {
  _$CardChargedCopyWithImpl(
      CardCharged _value, $Res Function(CardCharged) _then)
      : super(_value, (v) => _then(v as CardCharged));

  @override
  CardCharged get _value => super._value as CardCharged;

  @override
  $Res call({
    Object? message = freezed,
    Object? reference = freezed,
  }) {
    return _then(CardCharged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardCharged implements CardCharged {
  const _$CardCharged(this.message, this.reference);

  @override
  final String message;
  @override
  final String reference;

  @override
  String toString() {
    return 'PaymentState.cardCharged(message: $message, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardCharged &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reference);

  @JsonKey(ignore: true)
  @override
  $CardChargedCopyWith<CardCharged> get copyWith =>
      _$CardChargedCopyWithImpl<CardCharged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return cardCharged(message, reference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return cardCharged?.call(message, reference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardCharged != null) {
      return cardCharged(message, reference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return cardCharged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return cardCharged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardCharged != null) {
      return cardCharged(this);
    }
    return orElse();
  }
}

abstract class CardCharged implements PaymentState {
  const factory CardCharged(String message, String reference) = _$CardCharged;

  String get message;
  String get reference;
  @JsonKey(ignore: true)
  $CardChargedCopyWith<CardCharged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsRetreivedCopyWith<$Res> {
  factory $CardsRetreivedCopyWith(
          CardsRetreived value, $Res Function(CardsRetreived) then) =
      _$CardsRetreivedCopyWithImpl<$Res>;
  $Res call({List<BankCard> cards});
}

/// @nodoc
class _$CardsRetreivedCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $CardsRetreivedCopyWith<$Res> {
  _$CardsRetreivedCopyWithImpl(
      CardsRetreived _value, $Res Function(CardsRetreived) _then)
      : super(_value, (v) => _then(v as CardsRetreived));

  @override
  CardsRetreived get _value => super._value as CardsRetreived;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(CardsRetreived(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ));
  }
}

/// @nodoc

class _$CardsRetreived implements CardsRetreived {
  const _$CardsRetreived(this.cards);

  @override
  final List<BankCard> cards;

  @override
  String toString() {
    return 'PaymentState.cardsRetreived(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardsRetreived &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cards));

  @JsonKey(ignore: true)
  @override
  $CardsRetreivedCopyWith<CardsRetreived> get copyWith =>
      _$CardsRetreivedCopyWithImpl<CardsRetreived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return cardsRetreived(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return cardsRetreived?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardsRetreived != null) {
      return cardsRetreived(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return cardsRetreived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return cardsRetreived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardsRetreived != null) {
      return cardsRetreived(this);
    }
    return orElse();
  }
}

abstract class CardsRetreived implements PaymentState {
  const factory CardsRetreived(List<BankCard> cards) = _$CardsRetreived;

  List<BankCard> get cards;
  @JsonKey(ignore: true)
  $CardsRetreivedCopyWith<CardsRetreived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardRemovedCopyWith<$Res> {
  factory $CardRemovedCopyWith(
          CardRemoved value, $Res Function(CardRemoved) then) =
      _$CardRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardRemovedCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $CardRemovedCopyWith<$Res> {
  _$CardRemovedCopyWithImpl(
      CardRemoved _value, $Res Function(CardRemoved) _then)
      : super(_value, (v) => _then(v as CardRemoved));

  @override
  CardRemoved get _value => super._value as CardRemoved;
}

/// @nodoc

class _$CardRemoved implements CardRemoved {
  const _$CardRemoved();

  @override
  String toString() {
    return 'PaymentState.cardRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CardRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return cardRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return cardRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardRemoved != null) {
      return cardRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return cardRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return cardRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (cardRemoved != null) {
      return cardRemoved(this);
    }
    return orElse();
  }
}

abstract class CardRemoved implements PaymentState {
  const factory CardRemoved() = _$CardRemoved;
}

/// @nodoc
abstract class $PaymentSuccessfulCopyWith<$Res> {
  factory $PaymentSuccessfulCopyWith(
          PaymentSuccessful value, $Res Function(PaymentSuccessful) then) =
      _$PaymentSuccessfulCopyWithImpl<$Res>;
  $Res call({String message, String reference});
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
    Object? reference = freezed,
  }) {
    return _then(PaymentSuccessful(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessful implements PaymentSuccessful {
  const _$PaymentSuccessful(this.message, this.reference);

  @override
  final String message;
  @override
  final String reference;

  @override
  String toString() {
    return 'PaymentState.paymentSuccessful(message: $message, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentSuccessful &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reference);

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
    required TResult Function(String message, String reference) cardCharged,
    required TResult Function(List<BankCard> cards) cardsRetreived,
    required TResult Function() cardRemoved,
    required TResult Function(String message, String reference)
        paymentSuccessful,
  }) {
    return paymentSuccessful(message, reference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
  }) {
    return paymentSuccessful?.call(message, reference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String message, String reference)? cardCharged,
    TResult Function(List<BankCard> cards)? cardsRetreived,
    TResult Function()? cardRemoved,
    TResult Function(String message, String reference)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentSuccessful != null) {
      return paymentSuccessful(message, reference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(CardCharged value) cardCharged,
    required TResult Function(CardsRetreived value) cardsRetreived,
    required TResult Function(CardRemoved value) cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
    TResult Function(CardCharged value)? cardCharged,
    TResult Function(CardsRetreived value)? cardsRetreived,
    TResult Function(CardRemoved value)? cardRemoved,
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
  const factory PaymentSuccessful(String message, String reference) =
      _$PaymentSuccessful;

  String get message;
  String get reference;
  @JsonKey(ignore: true)
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
