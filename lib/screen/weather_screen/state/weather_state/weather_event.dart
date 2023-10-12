abstract class WeatherEvent {}

class WeatherLoadDataEvent extends WeatherEvent {
  final String info;

  WeatherLoadDataEvent(this.info);
}
