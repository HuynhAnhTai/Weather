import 'package:flutter/material.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:weather/infrastructure/common/extension/string_extension.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorSearchWidget extends StatelessWidget {
  final String msg;
  final VoidCallback onClickTryAgain;

  const ErrorSearchWidget(
      {super.key, required this.msg, required this.onClickTryAgain});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(this.msg.toTitleCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 10),
          ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0))),
              onPressed: () => this.onClickTryAgain(),
              child: Text(localize.try_again,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColors.white)))
        ],
      ),
    );
  }
}
