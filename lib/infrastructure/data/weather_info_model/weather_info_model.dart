import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/infrastructure/data/cloud_model/cloud_model.dart';
import 'package:weather/infrastructure/data/coordinate_model/coordinate_model.dart';
import 'package:weather/infrastructure/data/main_info_model/main_info_model.dart';
import 'package:weather/infrastructure/data/sys_model/sys_model.dart';
import 'package:weather/infrastructure/data/weather_model/weather_model.dart';
import 'package:weather/infrastructure/data/wind_model/wind_model.dart';

part 'weather_info_model.freezed.dart';

part 'weather_info_model.g.dart';

@freezed
class WeatherInfoModel with _$WeatherInfoModel {
  const factory WeatherInfoModel(
      {@JsonKey(name: "coord") required CoordinateModel coordinate,
      @JsonKey(name: "weather") required List<WeatherModel> weathers,
      required String base,
      @JsonKey(name: "main") required MainInfoModel mainInfo,
      required int visibility,
      required WindModel wind,
      required CloudModel clouds,
      required SysModel sys,
      required String name}) = $_WeatherInfoModel;

  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoModelFromJson(json);
}
