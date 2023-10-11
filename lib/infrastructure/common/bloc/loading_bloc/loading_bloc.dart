import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_event.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(LoadingState(false)) {
    on<LoadingEvent>((event, emit) {
      if (event is LoadingShowEvent) {
        emit(LoadingState(true));
      } else if (event is LoadingHideEvent) {
        emit(LoadingState(false));
      }
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
