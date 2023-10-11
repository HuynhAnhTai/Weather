import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';

abstract class FillInfoView {}

class FillInfoPresenter extends BasePresenter<FillInfoView> {
  @override
  List<BlocProvider> get useCases => [];
}
