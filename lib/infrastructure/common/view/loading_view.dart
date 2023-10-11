import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: AppColors.black.withOpacity(0.6),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.scale(
                scale: 2,
                child: CupertinoActivityIndicator(
                  color: AppColors.white,
                )),
            const SizedBox(height: 20),
            Text(AppLocalizations.of(context)!.loading_wait,
                style: TextStyle(fontSize: 16, color: AppColors.white)),
          ],
        ),
      ),
    );
  }
}
