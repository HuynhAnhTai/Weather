import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'coordinate_model.freezed.dart';

part 'coordinate_model.g.dart';

@freezed
class CoordinateModel with _$CoordinateModel {
  const factory CoordinateModel({required double lon, required double lat}) =
      $_CoordinateModel;

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);
}
