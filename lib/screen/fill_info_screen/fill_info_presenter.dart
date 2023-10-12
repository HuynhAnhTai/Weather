import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_bloc.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';

abstract class FillInfoView {}

class FillInfoPresenter extends BasePresenter<FillInfoView> {
  late PopUpBloc _popUpBloc = BlocProvider.of<PopUpBloc>(context);

  @override
  List<BlocProvider> get useCases => [];

  void showPopUp(String title, String content) {
    this._popUpBloc.showPopUpWithTitle(title, content);
  }
}
