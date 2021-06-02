import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'money_box.freezed.dart';
part 'money_box.g.dart';

@freezed
abstract class MoneyBox with _$MoneyBox{

  const MoneyBox._();
  
  const factory MoneyBox({
    @Default(0) double balance,
  }) = _MoneyBox;

  factory MoneyBox.fromJson(Map<String, dynamic> json) => _$MoneyBoxFromJson(json);
}