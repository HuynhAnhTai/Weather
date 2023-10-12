import 'package:flutter_bloc/flutter_bloc.dart';

enum TemperatureType { metric, imperial }

class TemperatureCubit extends Cubit<TemperatureType> {
  TemperatureCubit() : super(TemperatureType.metric);

  void changeType(TemperatureType temperatureType) {
    this.emit(temperatureType);
  }
}
