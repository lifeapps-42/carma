// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
class _$WorkTearOff {
  const _$WorkTearOff();

  _Work call({required String name, double price = 0}) {
    return _Work(
      name: name,
      price: price,
    );
  }

  Work fromJson(Map<String, Object> json) {
    return Work.fromJson(json);
  }
}

/// @nodoc
const $Work = _$WorkTearOff();

/// @nodoc
mixin _$Work {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call({String name, double price});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  final Work _value;
  // ignore: unused_field
  final $Res Function(Work) _then;

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
abstract class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
  @override
  $Res call({String name, double price});
}

/// @nodoc
class __$WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(_Work _value, $Res Function(_Work) _then)
      : super(_value, (v) => _then(v as _Work));

  @override
  _Work get _value => super._value as _Work;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_Work(
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
class _$_Work implements _Work {
  const _$_Work({required this.name, this.price = 0});

  factory _$_Work.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkFromJson(json);

  @override
  final String name;
  @JsonKey(defaultValue: 0)
  @override
  final double price;

  @override
  String toString() {
    return 'Work(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Work &&
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
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkToJson(this);
  }
}

abstract class _Work implements Work {
  const factory _Work({required String name, double price}) = _$_Work;

  factory _Work.fromJson(Map<String, dynamic> json) = _$_Work.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkCopyWith<_Work> get copyWith => throw _privateConstructorUsedError;
}
