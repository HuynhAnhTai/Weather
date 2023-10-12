enum UnitWeather {
  pressure("hPa"),
  windSpeed("m/s"),
  humidity("%"),
  visibility("m");

  const UnitWeather(this.unit);

  final String unit;
}