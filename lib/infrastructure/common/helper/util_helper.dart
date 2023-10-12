import 'package:weather/screen/weather_screen/state/temperature_state/temperature_cubit.dart';

class UtilHelper {
  static String getUrlIcon(String nameIcon) {
    return "https://openweathermap.org/img/wn/$nameIcon@2x.png";
  }

  static String getUnitTemperature(TemperatureType temperatureType) {
    switch (temperatureType) {
      case TemperatureType.metric:
        return "°C";
      case TemperatureType.imperial:
        return "°F";
    }
  }
}
