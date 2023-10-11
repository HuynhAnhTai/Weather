import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_bloc.dart';
import 'package:weather/infrastructure/common/bloc/loading_bloc/loading_state.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_bloc.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_state.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:weather/infrastructure/common/view/loading_view.dart';
import 'package:weather/infrastructure/common/view/pop_up_view.dart';
import 'package:weather/infrastructure/view/view.dart';
import 'package:weather/screen/fill_info_screen/fill_info_screen.dart';
import 'package:weather/screen/my_app_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  static GlobalKey<NavigatorState> keyMyApp =
      GlobalKey<NavigatorState>(debugLabel: "keyMyApp");

  const MyApp._();

  static Widget create() {
    return ViewApp(child: const MyApp._(), presenter: MyAppPresenter());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.greyLight,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppColors.black,
                displayColor: AppColors.black,
              ),
          appBarTheme: AppBarTheme(
              color: AppColors.white,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              iconTheme:
                  Theme.of(context).iconTheme.copyWith(color: Colors.black))),
      navigatorKey: MyApp.keyMyApp,
      supportedLocales: AppLocalizations.supportedLocales,
      home: _appScreen(),
    );
  }

  Widget _appScreen() => BlocListener<PopUpBloc, PopUpState>(
      listener: (context, state) {
        state.isShow
            ? _showDialogPopUp(context, state.title, state.mess)
            : Navigator.of(context, rootNavigator: true).pop();
      },
      child: BlocListener<LoadingBloc, LoadingState>(
        listener: (BuildContext context, state) {
          state.isShow
              ? _showDialogLoading(context)
              : Navigator.of(context, rootNavigator: true).pop();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.greyLight,
          body: SafeArea(top: true, child: FillInfoScreen.create()),
        ),
      ));

  void _showDialogLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (BuildContext context) {
        return const LoadingView();
      },
    );
  }

  void _showDialogPopUp(BuildContext context, String title, String mess) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopUpView(content: mess, title: title);
      },
    );
  }
}
