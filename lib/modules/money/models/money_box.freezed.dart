// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'money_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoneyBox _$MoneyBoxFromJson(Map<String, dynamic> json) {
  return _MoneyBox.fromJson(json);
}

/// @nodoc
class _$MoneyBoxTearOff {
  const _$MoneyBoxTearOff();

  _MoneyBox call({double balance = 0}) {
    return _MoneyBox(
      balance: balance,
    );
  }

  MoneyBox fromJson(Map<String, Object> json) {
    return MoneyBox.fromJson(json);
  }
}

/// @nodoc
const $MoneyBox = _$MoneyBoxTearOff();

/// @nodoc
mixin _$MoneyBox {
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyBoxCopyWith<MoneyBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyBoxCopyWith<$Res> {
  factory $MoneyBoxCopyWith(MoneyBox value, $Res Function(MoneyBox) then) =
      _$MoneyBoxCopyWithImpl<$Res>;
  $Res call({double balance});
}

/// @nodoc
class _$MoneyBoxCopyWithImpl<$Res> implements $MoneyBoxCopyWith<$Res> {
  _$MoneyBoxCopyWithImpl(this._value, this._then);

  final MoneyBox _value;
  // ignore: unused_field
  final $Res Function(MoneyBox) _then;

  @override
  $Res call({
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MoneyBoxCopyWith<$Res> implements $MoneyBoxCopyWith<$Res> {
  factory _$MoneyBoxCopyWith(_MoneyBox value, $Res Function(_MoneyBox) then) =
      __$MoneyBoxCopyWithImpl<$Res>;
  @override
  $Res call({double balance});
}

/// @nodoc
class __$MoneyBoxCopyWithImpl<$Res> extends _$MoneyBoxCopyWithImpl<$Res>
    implements _$MoneyBoxCopyWith<$Res> {
  __$MoneyBoxCopyWithImpl(_MoneyBox _value, $Res Function(_MoneyBox) _then)
      : super(_value, (v) => _then(v as _MoneyBox));

  @override
  _MoneyBox get _value => super._value as _MoneyBox;

  @override
  $Res call({
    Object? balance = freezed,
  }) {
    return _then(_MoneyBox(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoneyBox extends _MoneyBox {
  const _$_MoneyBox({this.balance = 0}) : super._();

  factory _$_MoneyBox.fromJson(Map<String, dynamic> json) =>
      _$_$_MoneyBoxFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final double balance;

  @override
  String toString() {
    return 'MoneyBox(balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoneyBox &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(balance);

  @JsonKey(ignore: true)
  @override
  _$MoneyBoxCopyWith<_MoneyBox> get copyWith =>
      __$MoneyBoxCopyWithImpl<_MoneyBox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MoneyBoxToJson(this);
  }
}

abstract class _MoneyBox extends MoneyBox {
  const factory _MoneyBox({double balance}) = _$_MoneyBox;
  const _MoneyBox._() : super._();

  factory _MoneyBox.fromJson(Map<String, dynamic> json) = _$_MoneyBox.fromJson;

  @override
  double get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoneyBoxCopyWith<_MoneyBox> get copyWith =>
      throw _privateConstructorUsedError;
}
