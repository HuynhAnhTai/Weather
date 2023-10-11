// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainInfoModel _$MainInfoModelFromJson(Map<String, dynamic> json) {
  return $_MainInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MainInfoModel {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like")
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_min")
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_max")
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainInfoModelCopyWith<MainInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainInfoModelCopyWith<$Res> {
  factory $MainInfoModelCopyWith(
          MainInfoModel value, $Res Function(MainInfoModel) then) =
      _$MainInfoModelCopyWithImpl<$Res, MainInfoModel>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      int pressure,
      int humidity});
}

/// @nodoc
class _$MainInfoModelCopyWithImpl<$Res, $Val extends MainInfoModel>
    implements $MainInfoModelCopyWith<$Res> {
  _$MainInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_MainInfoModelImplCopyWith<$Res>
    implements $MainInfoModelCopyWith<$Res> {
  factory _$$$_MainInfoModelImplCopyWith(_$$_MainInfoModelImpl value,
          $Res Function(_$$_MainInfoModelImpl) then) =
      __$$$_MainInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      int pressure,
      int humidity});
}

/// @nodoc
class __$$$_MainInfoModelImplCopyWithImpl<$Res>
    extends _$MainInfoModelCopyWithImpl<$Res, _$$_MainInfoModelImpl>
    implements _$$$_MainInfoModelImplCopyWith<$Res> {
  __$$$_MainInfoModelImplCopyWithImpl(
      _$$_MainInfoModelImpl _value, $Res Function(_$$_MainInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$$_MainInfoModelImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_MainInfoModelImpl
    with DiagnosticableTreeMixin
    implements $_MainInfoModel {
  const _$$_MainInfoModelImpl(
      {required this.temp,
      @JsonKey(name: "feels_like") required this.feelsLike,
      @JsonKey(name: "temp_min") required this.tempMin,
      @JsonKey(name: "temp_max") required this.tempMax,
      required this.pressure,
      required this.humidity});

  factory _$$_MainInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_MainInfoModelImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: "feels_like")
  final double feelsLike;
  @override
  @JsonKey(name: "temp_min")
  final double tempMin;
  @override
  @JsonKey(name: "temp_max")
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainInfoModel(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainInfoModel'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('tempMin', tempMin))
      ..add(DiagnosticsProperty('tempMax', tempMax))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_MainInfoModelImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temp, feelsLike, tempMin, tempMax, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_MainInfoModelImplCopyWith<_$$_MainInfoModelImpl> get copyWith =>
      __$$$_MainInfoModelImplCopyWithImpl<_$$_MainInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_MainInfoModelImplToJson(
      this,
    );
  }
}

abstract class $_MainInfoModel implements MainInfoModel {
  const factory $_MainInfoModel(
      {required final double temp,
      @JsonKey(name: "feels_like") required final double feelsLike,
      @JsonKey(name: "temp_min") required final double tempMin,
      @JsonKey(name: "temp_max") required final double tempMax,
      required final int pressure,
      required final int humidity}) = _$$_MainInfoModelImpl;

  factory $_MainInfoModel.fromJson(Map<String, dynamic> json) =
      _$$_MainInfoModelImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: "feels_like")
  double get feelsLike;
  @override
  @JsonKey(name: "temp_min")
  double get tempMin;
  @override
  @JsonKey(name: "temp_max")
  double get tempMax;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$$_MainInfoModelImplCopyWith<_$$_MainInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
