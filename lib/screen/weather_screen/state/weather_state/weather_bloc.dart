import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_bloc.dart';
import 'package:weather/infrastructure/injection_dependencies/injection_dependencies.dart';
import 'package:weather/infrastructure/manager/weather_manager/weather_manager.dart';
import 'package:weather/screen/weather_screen/state/weather_state/weather_event.dart';
import 'package:weather/screen/weather_screen/state/weather_state/weather_state.dart';

export 'package:weather/screen/weather_screen/state/weather_state/weather_event.dart';
export 'package:weather/screen/weather_screen/state/weather_state/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final LoadingBloc _loadingBloc;
  late WeatherManagerInterface _weatherManager =
      getIt.get<WeatherManagerInterface>();

  WeatherBloc(this._loadingBloc) : super(WeatherInitState()) {
    on<WeatherLoadDataEvent>((event, emit) async {
      await _loadDataWeather(event, emit);
    });
  }

  Future<void> _loadDataWeather(
      WeatherLoadDataEvent event, Emitter<WeatherState> emit) async {
    try {
      this._loadingBloc.showLoading();
      final weatherInfo = await this._weatherManager.getWeather(event.info);
      this._loadingBloc.hideLoading();
      emit(WeatherLoadState(weatherInfo));
    } catch (e) {
      this._loadingBloc.hideLoading();
      if (e is DioException) {
        final response = e.response;
      }
    }
  }
}
