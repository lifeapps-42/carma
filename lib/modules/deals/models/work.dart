import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work.freezed.dart';
part 'work.g.dart';

@freezed
abstract class Work with _$Work{
  const factory Work({
    required String name,
    @Default(0) double price,
  }) = _Work;
  factory Work.fromJson(Map<String, dynamic> json,) => _$WorkFromJson(json);
}