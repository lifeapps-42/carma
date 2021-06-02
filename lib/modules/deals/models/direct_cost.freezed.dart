// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'direct_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectCost _$DirectCostFromJson(Map<String, dynamic> json) {
  return _DirectCost.fromJson(json);
}

/// @nodoc
class _$DirectCostTearOff {
  const _$DirectCostTearOff();

  _DirectCost call({required String name, double price = 0}) {
    return _DirectCost(
      name: name,
      price: price,
    );
  }

  DirectCost fromJson(Map<String, Object> json) {
    return DirectCost.fromJson(json);
  }
}

/// @nodoc
const $DirectCost = _$DirectCostTearOff();

/// @nodoc
mixin _$DirectCost {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectCostCopyWith<DirectCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectCostCopyWith<$Res> {
  factory $DirectCostCopyWith(
          DirectCost value, $Res Function(DirectCost) then) =
      _$DirectCostCopyWithImpl<$Res>;
  $Res call({String name, double price});
}

/// @nodoc
class _$DirectCostCopyWithImpl<$Res> implements $DirectCostCopyWith<$Res> {
  _$DirectCostCopyWithImpl(this._value, this._then);

  final DirectCost _value;
  // ignore: unused_field
  final $Res Function(DirectCost) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DirectCostCopyWith<$Res> implements $DirectCostCopyWith<$Res> {
  factory _$DirectCostCopyWith(
          _DirectCost value, $Res Function(_DirectCost) then) =
      __$DirectCostCopyWithImpl<$Res>;
  @override
  $Res call({String name, double price});
}

/// @nodoc
class __$DirectCostCopyWithImpl<$Res> extends _$DirectCostCopyWithImpl<$Res>
    implements _$DirectCostCopyWith<$Res> {
  __$DirectCostCopyWithImpl(
      _DirectCost _value, $Res Function(_DirectCost) _then)
      : super(_value, (v) => _then(v as _DirectCost));

  @override
  _DirectCost get _value => super._value as _DirectCost;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_DirectCost(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectCost implements _DirectCost {
  const _$_DirectCost({required this.name, this.price = 0});

  factory _$_DirectCost.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectCostFromJson(json);

  @override
  final String name;
  @JsonKey(defaultValue: 0)
  @override
  final double price;

  @override
  String toString() {
    return 'DirectCost(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DirectCost &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$DirectCostCopyWith<_DirectCost> get copyWith =>
      __$DirectCostCopyWithImpl<_DirectCost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectCostToJson(this);
  }
}

abstract class _DirectCost implements DirectCost {
  const factory _DirectCost({required String name, double price}) =
      _$_DirectCost;

  factory _DirectCost.fromJson(Map<String, dynamic> json) =
      _$_DirectCost.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DirectCostCopyWith<_DirectCost> get copyWith =>
      throw _privateConstructorUsedError;
}
