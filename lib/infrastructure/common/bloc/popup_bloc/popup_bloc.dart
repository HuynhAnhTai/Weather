import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_event.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpBloc extends Bloc<PopUpEvent, PopUpState> {
  PopUpBloc() : super(PopUpState(false, "", "")) {
    on<PopUpShowEvent>((event, emit) {
      emit(PopUpState(true, event.title, event.content));
    });

    on<PopUpHideEvent>((event, emit) {
      emit(PopUpState(false, "", ""));
    });
  }

  void showPopUpWithTitle(String title, String content) {
    this.add(PopUpShowEvent(title, content));
  }
}
