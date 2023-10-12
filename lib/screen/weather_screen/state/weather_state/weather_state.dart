import 'package:equatable/equatable.dart';
import 'package:weather/infrastructure/data/weather_info_model/weather_info_model.dart';

abstract class WeatherState extends Equatable {
  @override
  List<Object?> get props => [];
}

class WeatherInitState extends WeatherState {}

class WeatherLoadState extends WeatherState {
  final WeatherInfoModel weatherInfo;

  WeatherLoadState(this.weatherInfo);

  @override
  List<Object?> get props => [this.weatherInfo];
}

class WeatherFailApiState extends WeatherState {
  final String errorMsg;

  WeatherFailApiState(this.errorMsg);

  @override
  List<Object?> get props => [this.errorMsg];
}
