import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/screen/weather_screen/state/temperature_state/temperature_cubit.dart';

part 'main_info_model.freezed.dart';

part 'main_info_model.g.dart';

@freezed
class MainInfoModel with _$MainInfoModel {
  const MainInfoModel._();

  const factory MainInfoModel(
      {required double temp,
      @JsonKey(name: "feels_like") required double feelsLike,
      @JsonKey(name: "temp_min") required double tempMin,
      @JsonKey(name: "temp_max") required double tempMax,
      required int pressure,
      required int humidity}) = $_MainInfoModel;

  factory MainInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MainInfoModelFromJson(json);

  double getValueTempByUnit(TemperatureType temperatureType) {
    switch (temperatureType) {
      case TemperatureType.metric:
        return this.temp;
      case TemperatureType.imperial:
        return 1.8 * this.temp + 32;
    }
  }
}
