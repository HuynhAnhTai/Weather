import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/infrastructure/data/weather_info_model/weather_info_model.dart';
import 'package:weather/infrastructure/manager/weather_manager/request/get_weather_by_city_name_request.dart';
import 'package:weather/infrastructure/manager/weather_manager/request/get_weather_by_zip_code.dart';
import 'package:weather/infrastructure/network/network.dart';
import 'package:weather/infrastructure/network/request.dart';

abstract class WeatherManagerInterface {
  Future<WeatherInfoModel> getWeather(String info);
}

@LazySingleton(as: WeatherManagerInterface)
class WeatherManager implements WeatherManagerInterface {
  final NetworkInterface network;

  WeatherManager(this.network);

  @override
  Future<WeatherInfoModel> getWeather(String info) async {
    //if we can't parse it to int, so meaning of info is city name, otherwise is zipcode
    Request request = int.tryParse(info) == null
        ? GetWeatherByCityNameRequest(info)
        : GetWeatherByZipCodeRequest(int.parse(info));
    final response = await this.network.request(request);
    return compute((message) => WeatherInfoModel.fromJson(response), "");
  }
}
