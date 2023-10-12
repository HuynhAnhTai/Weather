import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_bloc.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_bloc.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppPresenter extends BasePresenter {
  late LoadingBloc _loadingBloc = LoadingBloc();
  late PopUpBloc _popUpBloc = PopUpBloc();

  @override
  List<BlocProvider> get useCases => [
        BlocProvider<LoadingBloc>(
          create: (context) => this._loadingBloc,
        ),
        BlocProvider<PopUpBloc>(
          create: (context) => this._popUpBloc,
        ),
      ];
}
