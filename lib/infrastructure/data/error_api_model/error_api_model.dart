import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'error_api_model.freezed.dart';

part 'error_api_model.g.dart';

@freezed
class ErrorApiModel with _$ErrorApiModel {
  const factory ErrorApiModel({required String cod, required String message}) =
      $_ErrorApiModel;

  factory ErrorApiModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorApiModelFromJson(json);
}
