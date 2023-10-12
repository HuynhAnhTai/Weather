import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sys_model.freezed.dart';

part 'sys_model.g.dart';

@freezed
class SysModel with _$SysModel {
  const factory SysModel({required int sunrise, required int sunset, required String country}) =
      $_SysModel;

  factory SysModel.fromJson(Map<String, dynamic> json) =>
      _$SysModelFromJson(json);
}
