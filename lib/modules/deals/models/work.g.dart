// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Work _$_$_WorkFromJson(Map<String, dynamic> json) {
  return _$_Work(
    name: json['name'] as String,
    price: (json['price'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
