import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'work.dart';
import 'direct_cost.dart';

part 'deal.freezed.dart';
part 'deal.g.dart';

enum DealStatus {
  inWork,
  done,
  prospect,
}

@freezed
abstract class Deal with _$Deal {
  
  const Deal._();
  
  const factory Deal(
      {String? id,
      @Default('noname') String? name,
      @Default([]) @JsonSerializable() List<Work> works,
      @Default([]) @JsonSerializable() List<DirectCost> directCosts,
      required String description,
      //enum
      @Default(DealStatus.prospect) DealStatus status,
      num? discount,
      String? clientsName,
      String? clintsPhone,
      String? vehicle}) = _Deal;
  
  factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);

  double get fullCost =>
      works.fold<double>(0, (previousValue, work) => previousValue + work.price)/100.0*(100.0 - (discount?? 0));

}
