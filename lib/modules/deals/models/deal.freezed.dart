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

  _Deal call(
      {String? id,
      String? name = 'noname',
      @JsonSerializable() List<Work> works = const [],
      @JsonSerializable() List<DirectCost> directCosts = const [],
      required String description,
      DealStatus status = DealStatus.prospect,
      num? discount,
      String? clientsName,
      String? clintsPhone,
      String? vehicle}) {
    return _Deal(
      id: id,
      name: name,
      works: works,
      directCosts: directCosts,
      description: description,
      status: status,
      discount: discount,
      clientsName: clientsName,
      clintsPhone: clintsPhone,
      vehicle: vehicle,
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
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonSerializable()
  List<Work> get works => throw _privateConstructorUsedError;
  @JsonSerializable()
  List<DirectCost> get directCosts => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError; //enum
  DealStatus get status => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  String? get clientsName => throw _privateConstructorUsedError;
  String? get clintsPhone => throw _privateConstructorUsedError;
  String? get vehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      @JsonSerializable() List<Work> works,
      @JsonSerializable() List<DirectCost> directCosts,
      String description,
      DealStatus status,
      num? discount,
      String? clientsName,
      String? clintsPhone,
      String? vehicle});
}

/// @nodoc
class _$DealCopyWithImpl<$Res> implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  final Deal _value;
  // ignore: unused_field
  final $Res Function(Deal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? works = freezed,
    Object? directCosts = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? clientsName = freezed,
    Object? clintsPhone = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      directCosts: directCosts == freezed
          ? _value.directCosts
          : directCosts // ignore: cast_nullable_to_non_nullable
              as List<DirectCost>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      clientsName: clientsName == freezed
          ? _value.clientsName
          : clientsName // ignore: cast_nullable_to_non_nullable
              as String?,
      clintsPhone: clintsPhone == freezed
          ? _value.clintsPhone
          : clintsPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) then) =
      __$DealCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      @JsonSerializable() List<Work> works,
      @JsonSerializable() List<DirectCost> directCosts,
      String description,
      DealStatus status,
      num? discount,
      String? clientsName,
      String? clintsPhone,
      String? vehicle});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? works = freezed,
    Object? directCosts = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? clientsName = freezed,
    Object? clintsPhone = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_Deal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      directCosts: directCosts == freezed
          ? _value.directCosts
          : directCosts // ignore: cast_nullable_to_non_nullable
              as List<DirectCost>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      clientsName: clientsName == freezed
          ? _value.clientsName
          : clientsName // ignore: cast_nullable_to_non_nullable
              as String?,
      clintsPhone: clintsPhone == freezed
          ? _value.clintsPhone
          : clintsPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Deal extends _Deal {
  const _$_Deal(
      {this.id,
      this.name = 'noname',
      @JsonSerializable() this.works = const [],
      @JsonSerializable() this.directCosts = const [],
      required this.description,
      this.status = DealStatus.prospect,
      this.discount,
      this.clientsName,
      this.clintsPhone,
      this.vehicle})
      : super._();

  factory _$_Deal.fromJson(Map<String, dynamic> json) =>
      _$_$_DealFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: 'noname')
  @override
  final String? name;
  @JsonKey(defaultValue: const [])
  @override
  @JsonSerializable()
  final List<Work> works;
  @JsonKey(defaultValue: const [])
  @override
  @JsonSerializable()
  final List<DirectCost> directCosts;
  @override
  final String description;
  @JsonKey(defaultValue: DealStatus.prospect)
  @override //enum
  final DealStatus status;
  @override
  final num? discount;
  @override
  final String? clientsName;
  @override
  final String? clintsPhone;
  @override
  final String? vehicle;

  @override
  String toString() {
    return 'Deal(id: $id, name: $name, works: $works, directCosts: $directCosts, description: $description, status: $status, discount: $discount, clientsName: $clientsName, clintsPhone: $clintsPhone, vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deal &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.works, works) ||
                const DeepCollectionEquality().equals(other.works, works)) &&
            (identical(other.directCosts, directCosts) ||
                const DeepCollectionEquality()
                    .equals(other.directCosts, directCosts)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.clientsName, clientsName) ||
                const DeepCollectionEquality()
                    .equals(other.clientsName, clientsName)) &&
            (identical(other.clintsPhone, clintsPhone) ||
                const DeepCollectionEquality()
                    .equals(other.clintsPhone, clintsPhone)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(works) ^
      const DeepCollectionEquality().hash(directCosts) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(clientsName) ^
      const DeepCollectionEquality().hash(clintsPhone) ^
      const DeepCollectionEquality().hash(vehicle);

  @JsonKey(ignore: true)
  @override
  _$DealCopyWith<_Deal> get copyWith =>
      __$DealCopyWithImpl<_Deal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DealToJson(this);
  }
}

abstract class _Deal extends Deal {
  const factory _Deal(
      {String? id,
      String? name,
      @JsonSerializable() List<Work> works,
      @JsonSerializable() List<DirectCost> directCosts,
      required String description,
      DealStatus status,
      num? discount,
      String? clientsName,
      String? clintsPhone,
      String? vehicle}) = _$_Deal;
  const _Deal._() : super._();

  factory _Deal.fromJson(Map<String, dynamic> json) = _$_Deal.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonSerializable()
  List<Work> get works => throw _privateConstructorUsedError;
  @override
  @JsonSerializable()
  List<DirectCost> get directCosts => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override //enum
  DealStatus get status => throw _privateConstructorUsedError;
  @override
  num? get discount => throw _privateConstructorUsedError;
  @override
  String? get clientsName => throw _privateConstructorUsedError;
  @override
  String? get clintsPhone => throw _privateConstructorUsedError;
  @override
  String? get vehicle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DealCopyWith<_Deal> get copyWith => throw _privateConstructorUsedError;
}
