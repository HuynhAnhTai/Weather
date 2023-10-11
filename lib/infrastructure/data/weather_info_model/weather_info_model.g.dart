// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_WeatherInfoModelImpl _$$$_WeatherInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$$_WeatherInfoModelImpl(
      coordinate:
          CoordinateModel.fromJson(json['coord'] as Map<String, dynamic>),
      weathers: (json['weather'] as List<dynamic>)
          .map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String,
      mainInfo: MainInfoModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      wind: WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: CloudModel.fromJson(json['clouds'] as Map<String, dynamic>),
      sys: SysModel.fromJson(json['sys'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$$_WeatherInfoModelImplToJson(
        _$$_WeatherInfoModelImpl instance) =>
    <String, dynamic>{
      'coord': instance.coordinate,
      'weather': instance.weathers,
      'base': instance.base,
      'main': instance.mainInfo,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'sys': instance.sys,
      'name': instance.name,
    };
