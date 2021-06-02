import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'direct_cost.freezed.dart';
part 'direct_cost.g.dart';

@freezed
abstract class DirectCost with _$DirectCost{
  const factory DirectCost({
    required String name,
    @Default(0) double price,
  }) = _DirectCost;
  factory DirectCost.fromJson(Map<String, dynamic> json,) => _$DirectCostFromJson(json);
}