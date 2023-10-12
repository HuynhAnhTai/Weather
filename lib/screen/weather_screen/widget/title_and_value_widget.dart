import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/infrastructure/data/unit_weather_enum/unit_weather_enum.dart';

class TitleAndValueWidget extends StatelessWidget {
  final String title;
  final double value;
  final UnitWeather unit;

  const TitleAndValueWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat.decimalPattern("en_us");
    final valueString = numberFormat.format(this.value);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(this.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
          Text(
              "$valueString${this.unit == UnitWeather.humidity ? "" : " "}${this.unit.unit}",
              style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
    );
  }
}
