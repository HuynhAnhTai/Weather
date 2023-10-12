import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_event.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(LoadingState(false)) {
    on<LoadingShowEvent>((event, emit) {
      emit(LoadingState(true));
    });

    on<LoadingHideEvent>((event, emit) {
      emit(LoadingState(false));
    });
  }

  void showLoading() {
    this.add(LoadingShowEvent());
  }

  void hideLoading() {
    this.add(LoadingHideEvent());
  }

  bool isShowLoading() {
    return this.state.isShow;
  }
}
