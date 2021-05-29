// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Deal _$_$_DealFromJson(Map<String, dynamic> json) {
  return _$_Deal(
    fullCost: (json['fullCost'] as num?)?.toDouble() ?? 0,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_DealToJson(_$_Deal instance) => <String, dynamic>{
      'fullCost': instance.fullCost,
      'description': instance.description,
    };
