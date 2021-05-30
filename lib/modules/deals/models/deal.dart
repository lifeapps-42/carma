import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'work.dart';

part 'deal.freezed.dart';
part 'deal.g.dart';

@freezed
abstract class Deal with _$Deal{
  const factory Deal({
    String? id,
    @Default(0) double fullCost,
    @Default('noname') String? name,
    List<Work>? works,
    required String description,
    String? vehicle,
  }) = _Deal;
  factory Deal.fromJson(Map<String, dynamic> json,) => _$DealFromJson(json);
}


