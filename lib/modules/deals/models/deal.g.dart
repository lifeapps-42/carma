// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Deal _$_$_DealFromJson(Map<String, dynamic> json) {
  return _$_Deal(
    id: json['id'] as String?,
    name: json['name'] as String? ?? 'noname',
    works: (json['works'] as List<dynamic>?)
            ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    directCosts: (json['directCosts'] as List<dynamic>?)
            ?.map((e) => DirectCost.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    description: json['description'] as String,
    status: _$enumDecodeNullable(_$DealStatusEnumMap, json['status']) ??
        DealStatus.prospect,
    discount: json['discount'] as num?,
    clientsName: json['clientsName'] as String?,
    clintsPhone: json['clintsPhone'] as String?,
    vehicle: json['vehicle'] as String?,
  );
}

Map<String, dynamic> _$_$_DealToJson(_$_Deal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'works': instance.works.map((e) => e.toJson()).toList(),
      'directCosts': instance.directCosts.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'status': _$DealStatusEnumMap[instance.status],
      'discount': instance.discount,
      'clientsName': instance.clientsName,
      'clintsPhone': instance.clintsPhone,
      'vehicle': instance.vehicle,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DealStatusEnumMap = {
  DealStatus.inWork: 'inWork',
  DealStatus.done: 'done',
  DealStatus.prospect: 'prospect',
};
