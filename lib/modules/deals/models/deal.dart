import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal.freezed.dart';
part 'deal.g.dart';

@freezed
abstract class Deal with _$Deal{
  const factory Deal({
    @Default(0) double fullCost,
    required String description,
  }) = _Deal;
  factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);
}


