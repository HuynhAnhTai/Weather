import 'package:weather/infrastructure/network/request.dart';

class GetWeatherByZipCodeRequest extends Request {
  final int zipCode;

  GetWeatherByZipCodeRequest(this.zipCode) : super(path: '', method: 'POST');

  @override
  Map<String, dynamic> createParamQuery() {
    return {"zip": this.zipCode, "units": "metric"};
  }
}
