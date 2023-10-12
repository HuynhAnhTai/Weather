import 'package:weather/infrastructure/network/request.dart';

class GetWeatherByCityNameRequest extends Request {
  final String cityName;

  GetWeatherByCityNameRequest(this.cityName) : super(path: '', method: 'POST');

  @override
  Map<String, dynamic> createParamQuery() {
    return {"q": this.cityName, "units": "metric"};
  }
}
