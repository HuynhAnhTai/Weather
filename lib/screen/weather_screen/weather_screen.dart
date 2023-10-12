import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/infrastructure/common/asset_path/asset_path.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:weather/infrastructure/common/extension/string_extension.dart';
import 'package:weather/infrastructure/common/helper/util_helper.dart';
import 'package:weather/infrastructure/data/main_info_model/main_info_model.dart';
import 'package:weather/infrastructure/data/type_sun_enum/sun_type_enum.dart';
import 'package:weather/infrastructure/data/unit_weather_enum/unit_weather_enum.dart';
import 'package:weather/infrastructure/data/weather_info_model/weather_info_model.dart';
import 'package:weather/infrastructure/data/weather_model/weather_model.dart';
import 'package:weather/infrastructure/state/base_state.dart';
import 'package:weather/infrastructure/view/view.dart';
import 'package:weather/screen/weather_screen/state/temperature_state/temperature_cubit.dart';
import 'package:weather/screen/weather_screen/state/weather_state/weather_bloc.dart';
import 'package:weather/screen/weather_screen/weather_presenter.dart';

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
              _time(weatherInfo.dt),
              _weather(weatherInfo.weathers, weatherInfo.mainInfo),
              const SizedBox(height: 30),
              _titleAndValue(
                  this.localize.pressure,
                  weatherInfo.mainInfo.pressure.toDouble(),
                  UnitWeather.pressure),
              _titleAndValue(this.localize.wind_speed, weatherInfo.wind.speed,
                  UnitWeather.windSpeed),
              _titleAndValue(
                  this.localize.humidity,
                  weatherInfo.mainInfo.humidity.toDouble(),
                  UnitWeather.humidity),
              _titleAndValue(this.localize.visibility,
                  weatherInfo.visibility.toDouble(), UnitWeather.visibility),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _timeSun(SunType.sunrise, weatherInfo.sys.sunrise),
                  _timeSun(SunType.sunset, weatherInfo.sys.sunset)
                ],
              )
            ],
          ),
        ),
      );

  Widget _weather(List<WeatherModel> weathers, MainInfoModel mainInfo) =>
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                _imageWeather(weathers),
                const SizedBox(width: 10),
                _temperature(mainInfo),
              ]),
              const SizedBox(height: 20),
              Text(
                  weathers.isNotEmpty
                      ? weathers.first.description.toTitleCase()
                      : this.localize.unknown,
                  style: Theme.of(context).textTheme.headlineSmall),
            ],
          ));

  Widget _titleAndValue(String title, double value, UnitWeather unit) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$title:",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Text(
                "${value.toStringAsFixed(value % 1 == 0 ? 0 : 1)}${unit == UnitWeather.humidity ? "" : " "}${unit.unit}",
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      );

  Widget _temperature(MainInfoModel mainInfo) =>
      BlocBuilder<TemperatureCubit, TemperatureType>(
        builder: (context, temperatureType) {
          return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
                mainInfo.getValueTempByUnit(temperatureType).toStringAsFixed(0),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.displaySmall),
            _unitTemperature(TemperatureType.metric,
                temperatureType == TemperatureType.metric),
            SizedBox(
                height: 16,
                child: VerticalDivider(
                    width: 10, thickness: 2, color: AppColors.grey)),
            _unitTemperature(TemperatureType.imperial,
                temperatureType == TemperatureType.imperial),
          ]);
        },
      );

  Widget _unitTemperature(TemperatureType temperatureType, bool isChoose) =>
      GestureDetector(
        onTap: () => this.getPresenter().changeTypeTemperature(temperatureType),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(UtilHelper.getUnitTemperature(temperatureType),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isChoose ? AppColors.black : AppColors.grey,
                  fontSize: 16)),
        ),
      );

  Widget _imageWeather(List<WeatherModel> weathers) => CircleAvatar(
        radius: MediaQuery.sizeOf(context).width * 0.15,
        foregroundImage: weathers.isEmpty
            ? null
            : CachedNetworkImageProvider(
                UtilHelper.getUrlIcon(weathers.first.icon)),
        backgroundImage:
            weathers.isEmpty ? AssetImage(AssetPath.icCloudy) : null,
        backgroundColor: AppColors.blueLight,
      );

  Widget _nameLocation(String name) => Text(name,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
      maxLines: 2);

  Widget _time(int dt) {
    final DateTime time =
        DateTime.fromMillisecondsSinceEpoch(dt * 1000).toUtc();
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

  Widget _timeSun(SunType sunType, int timeValue) {
    final DateTime time =
        DateTime.fromMillisecondsSinceEpoch(timeValue * 1000).toUtc();
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
