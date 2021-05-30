// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Deal _$_$_DealFromJson(Map<String, dynamic> json) {
  return _$_Deal(
    id: json['id'] as String?,
    fullCost: (json['fullCost'] as num?)?.toDouble() ?? 0,
    name: json['name'] as String? ?? 'noname',
    works: (json['works'] as List<dynamic>?)
        ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
        .toList(),
    description: json['description'] as String,
    vehicle: json['vehicle'] as String?,
  );
}

Map<String, dynamic> _$_$_DealToJson(_$_Deal instance) => <String, dynamic>{
      'id': instance.id,
      'fullCost': instance.fullCost,
      'name': instance.name,
      'works': instance.works,
      'description': instance.description,
      'vehicle': instance.vehicle,
    };
