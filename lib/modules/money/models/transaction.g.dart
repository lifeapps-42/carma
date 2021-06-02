// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Income _$_$IncomeFromJson(Map<String, dynamic> json) {
  return _$Income(
    (json['value'] as num).toDouble(),
    MoneyBox.fromJson(json['moneyBox'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$IncomeToJson(_$Income instance) => <String, dynamic>{
      'value': instance.value,
      'moneyBox': instance.moneyBox.toJson(),
    };

_$Expenses _$_$ExpensesFromJson(Map<String, dynamic> json) {
  return _$Expenses(
    (json['value'] as num).toDouble(),
    MoneyBox.fromJson(json['moneyBox'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ExpensesToJson(_$Expenses instance) =>
    <String, dynamic>{
      'value': instance.value,
      'moneyBox': instance.moneyBox.toJson(),
    };

_$Move _$_$MoveFromJson(Map<String, dynamic> json) {
  return _$Move(
    (json['value'] as num).toDouble(),
    MoneyBox.fromJson(json['from'] as Map<String, dynamic>),
    MoneyBox.fromJson(json['to'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$MoveToJson(_$Move instance) => <String, dynamic>{
      'value': instance.value,
      'from': instance.from.toJson(),
      'to': instance.to.toJson(),
    };
