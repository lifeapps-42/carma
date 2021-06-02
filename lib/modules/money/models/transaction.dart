import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'money_box.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';



@freezed
abstract class Transaction with _$Transaction{
  const factory Transaction.income(double value, MoneyBox moneyBox) = Income;
  const factory Transaction.expenses(double value, MoneyBox moneyBox) = Expenses;
  const factory Transaction.move(double value, MoneyBox from, MoneyBox to) = Move;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}