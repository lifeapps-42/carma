// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'deal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Deal _$DealFromJson(Map<String, dynamic> json) {
  return _Deal.fromJson(json);
}

/// @nodoc
class _$DealTearOff {
  const _$DealTearOff();

  _Deal call({double fullCost = 0, required String description}) {
    return _Deal(
      fullCost: fullCost,
      description: description,
    );
  }

  Deal fromJson(Map<String, Object> json) {
    return Deal.fromJson(json);
  }
}

/// @nodoc
const $Deal = _$DealTearOff();

/// @nodoc
mixin _$Deal {
  double get fullCost => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res>;
  $Res call({double fullCost, String description});
}

/// @nodoc
class _$DealCopyWithImpl<$Res> implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  final Deal _value;
  // ignore: unused_field
  final $Res Function(Deal) _then;

  @override
  $Res call({
    Object? fullCost = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      fullCost: fullCost == freezed
          ? _value.fullCost
          : fullCost // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) then) =
      __$DealCopyWithImpl<$Res>;
  @override
  $Res call({double fullCost, String description});
}

/// @nodoc
class __$DealCopyWithImpl<$Res> extends _$DealCopyWithImpl<$Res>
    implements _$DealCopyWith<$Res> {
  __$DealCopyWithImpl(_Deal _value, $Res Function(_Deal) _then)
      : super(_value, (v) => _then(v as _Deal));

  @override
  _Deal get _value => super._value as _Deal;

  @override
  $Res call({
    Object? fullCost = freezed,
    Object? description = freezed,
  }) {
    return _then(_Deal(
      fullCost: fullCost == freezed
          ? _value.fullCost
          : fullCost // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Deal implements _Deal {
  const _$_Deal({this.fullCost = 0, required this.description});

  factory _$_Deal.fromJson(Map<String, dynamic> json) =>
      _$_$_DealFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final double fullCost;
  @override
  final String description;

  @override
  String toString() {
    return 'Deal(fullCost: $fullCost, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deal &&
            (identical(other.fullCost, fullCost) ||
                const DeepCollectionEquality()
                    .equals(other.fullCost, fullCost)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullCost) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DealCopyWith<_Deal> get copyWith =>
      __$DealCopyWithImpl<_Deal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DealToJson(this);
  }
}

abstract class _Deal implements Deal {
  const factory _Deal({double fullCost, required String description}) = _$_Deal;

  factory _Deal.fromJson(Map<String, dynamic> json) = _$_Deal.fromJson;

  @override
  double get fullCost => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DealCopyWith<_Deal> get copyWith => throw _privateConstructorUsedError;
}
