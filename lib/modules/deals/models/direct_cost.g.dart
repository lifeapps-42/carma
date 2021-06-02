// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_cost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DirectCost _$_$_DirectCostFromJson(Map<String, dynamic> json) {
  return _$_DirectCost(
    name: json['name'] as String,
    price: (json['price'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_DirectCostToJson(_$_DirectCost instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
