import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/infrastructure/common/asset_path/asset_path.dart';
import 'package:weather/infrastructure/common/helper/util_helper.dart';
import 'package:weather/infrastructure/data/type_sun_enum/sun_type_enum.dart';
import 'package:weather/infrastructure/data/unit_weather_enum/unit_weather_enum.dart';
import 'package:weather/infrastructure/data/weather_info_model/weather_info_model.dart';
import 'package:weather/infrastructure/state/base_state.dart';
import 'package:weather/infrastructure/view/view.dart';
import 'package:weather/screen/weather_screen/state/weather_state/weather_bloc.dart';
import 'package:weather/screen/weather_screen/weather_presenter.dart';
import 'package:weather/screen/weather_screen/widget/error_search_widget.dart';
import 'package:weather/screen/weather_screen/widget/title_and_value_widget.dart';
import 'package:weather/screen/weather_screen/widget/weather_symbol_widget.dart';

class WeatherScreen extends StatefulWidget {
  final String info;

  const WeatherScreen(this.info, {super.key});

  static Widget create(String info) {
    return ViewApp(child: WeatherScreen(info), presenter: WeatherPresenter());
  }

  @override
  BaseState<WeatherPresenter, WeatherScreen> createState() =>
      _WeatherScreenState();
}

class _WeatherScreenState extends BaseState<WeatherPresenter, WeatherScreen>
    implements WeatherView {
  @override
  void widgetDidBuild() {
    this.getPresenter().loadDataWeather(this.widget.info);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return state is WeatherLoadState
              ? _weatherInfo(state.weatherInfo)
              : state is WeatherFailApiState
                  ? ErrorSearchWidget(
                      msg: state.errorMsg,
                      onClickTryAgain: () =>
                          this.getPresenter().loadDataWeather(this.widget.info))
                  : const SizedBox();
        },
      ),
    );
  }

  Widget _weatherInfo(WeatherInfoModel weatherInfo) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _nameLocation(weatherInfo.name),
              _time(weatherInfo.dt, weatherInfo.timezone),
              WeatherSymbolWidget(
                  weathers: weatherInfo.weathers,
                  mainInfo: weatherInfo.mainInfo,
                  onChangeUnit: (temperatureType) => this
                      .getPresenter()
                      .changeTypeTemperature(temperatureType)),
              const SizedBox(height: 30),
              TitleAndValueWidget(
                  title: this.localize.pressure,
                  value: weatherInfo.mainInfo.pressure.toDouble(),
                  unit: UnitWeather.pressure),
              TitleAndValueWidget(
                  title: this.localize.wind_speed,
                  value: weatherInfo.wind.speed,
                  unit: UnitWeather.windSpeed),
              TitleAndValueWidget(
                  title: this.localize.humidity,
                  value: weatherInfo.mainInfo.humidity.toDouble(),
                  unit: UnitWeather.humidity),
              TitleAndValueWidget(
                  title: this.localize.visibility,
                  value: weatherInfo.visibility.toDouble(),
                  unit: UnitWeather.visibility),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _timeSun(SunType.sunrise, weatherInfo.sys.sunrise,
                      weatherInfo.timezone),
                  _timeSun(SunType.sunset, weatherInfo.sys.sunset,
                      weatherInfo.timezone)
                ],
              )
            ],
          ),
        ),
      );

  Widget _nameLocation(String name) => Text(name,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
      maxLines: 2);

  Widget _time(int dt, int timezone) {
    final DateTime time = UtilHelper.getTimeOfTimeZone(dt, timezone);
    final formatTime = DateFormat('HH:mm').format(time);
    final formatDate = DateFormat('dd.MM.yyyy').format(time);
    return Row(
      children: [
        Text(formatTime, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: 20),
        Text(formatDate, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }

  Widget _timeSun(SunType sunType, int timeValue, int timezone) {
    final DateTime time = UtilHelper.getTimeOfTimeZone(timeValue, timezone);
    final formatTime = DateFormat('HH:mm').format(time);
    return Column(
      children: [
        Image.asset(_getImageSun(sunType),
            height: MediaQuery.sizeOf(context).width * 0.2,
            width: MediaQuery.sizeOf(context).width * 0.2),
        const SizedBox(height: 10),
        Text(formatTime, style: Theme.of(context).textTheme.displaySmall),
      ],
    );
  }

  String _getImageSun(SunType sunType) {
    switch (sunType) {
      case SunType.sunrise:
        return AssetPath.icSunrise;
      case SunType.sunset:
        return AssetPath.icSunset;
    }
  }
}
