import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_event.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpBloc extends Bloc<PopUpEvent, PopUpState> {
  PopUpBloc() : super(PopUpState(false, "", "")) {
    on<PopUpEvent>((event, emit) {
      if (event is PopUpShowEvent) {
        emit(PopUpState(true, event.title, event.content));
      } else if (event is PopUpHideEvent) {
        emit(PopUpState(false, "", ""));
      }
    });
  }

  void showPopUpWithTitle(String title, String content) {
    this.add(PopUpShowEvent(title, content));
  }
}
