// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_MainInfoModelImpl _$$$_MainInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$$_MainInfoModelImpl(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$$$_MainInfoModelImplToJson(
        _$$_MainInfoModelImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
