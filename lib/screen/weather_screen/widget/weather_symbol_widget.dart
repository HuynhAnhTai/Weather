import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/infrastructure/common/asset_path/asset_path.dart';
import 'package:weather/infrastructure/common/color/colors.dart';
import 'package:weather/infrastructure/common/extension/string_extension.dart';
import 'package:weather/infrastructure/common/helper/util_helper.dart';
import 'package:weather/infrastructure/data/main_info_model/main_info_model.dart';
import 'package:weather/infrastructure/data/weather_model/weather_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/screen/weather_screen/state/temperature_state/temperature_cubit.dart';

class WeatherSymbolWidget extends StatelessWidget {
  final List<WeatherModel> weathers;
  final MainInfoModel mainInfo;
  final Function(TemperatureType) onChangeUnit;

  const WeatherSymbolWidget(
      {super.key,
      required this.weathers,
      required this.mainInfo,
      required this.onChangeUnit});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              _imageWeather(context),
              const SizedBox(width: 10),
              _temperature(),
            ]),
            const SizedBox(height: 20),
            Text(
                this.weathers.isNotEmpty
                    ? this.weathers.first.description.toTitleCase()
                    : localize.unknown,
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ));
  }

  Widget _imageWeather(BuildContext context) => CircleAvatar(
        radius: MediaQuery.sizeOf(context).width * 0.15,
        foregroundImage: weathers.isEmpty
            ? null
            : CachedNetworkImageProvider(
                UtilHelper.getUrlIcon(weathers.first.icon)),
        backgroundImage:
            weathers.isEmpty ? AssetImage(AssetPath.icCloudy) : null,
        backgroundColor: AppColors.blueLight,
      );

  Widget _temperature() => BlocBuilder<TemperatureCubit, TemperatureType>(
        builder: (context, temperatureType) {
          return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
                mainInfo.getValueTempByUnit(temperatureType).toStringAsFixed(0),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.displaySmall),
            _unitTemperature(TemperatureType.metric,
                temperatureType == TemperatureType.metric, context),
            SizedBox(
                height: 16,
                child: VerticalDivider(
                    width: 10, thickness: 2, color: AppColors.grey)),
            _unitTemperature(TemperatureType.imperial,
                temperatureType == TemperatureType.imperial, context),
          ]);
        },
      );

  Widget _unitTemperature(TemperatureType temperatureType, bool isChoose, BuildContext context) =>
      GestureDetector(
        onTap: () => this.onChangeUnit(temperatureType),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(UtilHelper.getUnitTemperature(temperatureType),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isChoose ? AppColors.black : AppColors.grey,
                  fontSize: 16)),
        ),
      );
}
