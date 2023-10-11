import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/infrastructure/common/asset_path/asset_path.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:weather/infrastructure/state/base_state.dart';
import 'package:weather/infrastructure/view/view.dart';
import 'package:weather/screen/fill_info_screen/fill_info_presenter.dart';

class FillInfoScreen extends StatefulWidget {
  static final String NAME_SCREEN = "IndividualLoginScreen";

  const FillInfoScreen({super.key});

  static Widget create() {
    return ViewApp(
        child: const FillInfoScreen(), presenter: FillInfoPresenter());
  }

  @override
  BaseState<FillInfoPresenter, FillInfoScreen> createState() =>
      _FillInfoScreenState();
}

class _FillInfoScreenState extends BaseState<FillInfoPresenter, FillInfoScreen>
    implements FillInfoView {
  @override
  void widgetDidBuild() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
          Image.asset(
            AssetPath.icCloudy,
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).height * 0.2,
          ),
          const SizedBox(height: 20),
          Text(this.localize.search_weather,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 20),
          _textField(),
        ],
      ),
    );
  }

  Widget _textField() => Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.05),
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColors.white,
              width: 1.5,
            )),
        height: kBottomNavigationBarHeight,
        child: _textFieldInfo(),
      );

  Widget _textFieldInfo() => TextField(
        keyboardType: TextInputType.text,
        cursorColor: AppColors.greyLight,
        autofocus: true,
        maxLines: 1,
        maxLength: 50,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]'))
        ],
        decoration: InputDecoration(
            counterText: "",
            hintText: this.localize.hint_text_info,
            prefixIcon: Icon(Icons.search, color: AppColors.orange),
            suffixIcon: _buttonSearch(),
            border: InputBorder.none),
      );

  Widget _buttonSearch() => ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0))),
      onPressed: () {},
      child: Text(this.localize.search));
}
