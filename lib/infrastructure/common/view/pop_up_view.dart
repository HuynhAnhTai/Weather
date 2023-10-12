import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_bloc.dart';
import 'package:weather/infrastructure/common/bloc/popup_bloc/popup_event.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopUpView extends StatelessWidget {
  final String content;
  final String title;

  const PopUpView({super.key, required this.content, required this.title});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    return CupertinoAlertDialog(
      title: Text(this.title, style: TextStyle(color: AppColors.black)),
      content: Text(this.content, style: TextStyle(color: AppColors.blackBit)),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            BlocProvider.of<PopUpBloc>(context).add(PopUpHideEvent());
          },
          child: Text(localize.close),
        )
      ],
    );
  }
}
