import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cloud_model.freezed.dart';

part 'cloud_model.g.dart';

@freezed
class CloudModel with _$CloudModel {
  const factory CloudModel({required int all}) = $_CloudModel;

  factory CloudModel.fromJson(Map<String, dynamic> json) =>
      _$CloudModelFromJson(json);
}
