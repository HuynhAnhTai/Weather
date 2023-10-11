import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/screen/fill_info_screen/state/fill_info_event.dart';
import 'package:weather/screen/fill_info_screen/state/fill_info_state.dart';

export 'package:weather/screen/fill_info_screen/state/fill_info_event.dart';
export 'package:weather/screen/fill_info_screen/state/fill_info_state.dart';

class FillInfoBloc extends Bloc<FillInfoEvent, FillInfoState> {
  FillInfoBloc() : super(FillInfoInitState()) {
    on<FillInfoSearchEvent>(
        (event, emit) async => await _searchWeather(event, emit));
  }

  Future<void> _searchWeather(
      FillInfoSearchEvent event, Emitter<FillInfoState> emit) async {}
}
