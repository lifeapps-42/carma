// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoneyBox _$_$_MoneyBoxFromJson(Map<String, dynamic> json) {
  return _$_MoneyBox(
    name: json['name'] as String,
    balance: (json['balance'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_MoneyBoxToJson(_$_MoneyBox instance) =>
    <String, dynamic>{
      'name': instance.name,
      'balance': instance.balance,
    };
