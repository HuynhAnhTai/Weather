import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class BaseState<P extends BasePresenter, T extends StatefulWidget>
    extends State<T> {
  AppLocalizations get localize => AppLocalizations.of(context)!;

  @override
  void initState() {
    super.initState();
    context.read<P>().view = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => widgetDidBuild());
    debugPrint("Screen ${this.widget.runtimeType} start");
  }

  P getPresenter() => context.read<P>();

  void widgetDidBuild();

  @override
  void dispose() {
    print("Screen ${this.widget.runtimeType} end");
    super.dispose();
  }
}
