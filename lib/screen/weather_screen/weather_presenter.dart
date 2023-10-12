import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_bloc.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';
import 'package:weather/screen/weather_screen/state/temperature_state/temperature_cubit.dart';
import 'package:weather/screen/weather_screen/state/weather_state/weather_bloc.dart';

abstract class WeatherView {}

class WeatherPresenter extends BasePresenter<WeatherView> {
  late WeatherBloc _weatherBloc =
      WeatherBloc(BlocProvider.of<LoadingBloc>(context));
  late TemperatureCubit _temperatureCubit = TemperatureCubit();

  @override
  List<BlocProvider> get useCases => [
        BlocProvider<WeatherBloc>(
          create: (context) => this._weatherBloc,
        ),
        BlocProvider<TemperatureCubit>(
          create: (context) => this._temperatureCubit,
        )
      ];

  void loadDataWeather(String info) =>
      this._weatherBloc.add(WeatherLoadDataEvent(info));

  void changeTypeTemperature(TemperatureType temperatureType) => this._temperatureCubit.changeType(temperatureType);
}
