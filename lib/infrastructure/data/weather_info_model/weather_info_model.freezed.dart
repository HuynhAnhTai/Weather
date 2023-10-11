// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherInfoModel _$WeatherInfoModelFromJson(Map<String, dynamic> json) {
  return $_WeatherInfoModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfoModel {
  @JsonKey(name: "coord")
  CoordinateModel get coordinate => throw _privateConstructorUsedError;
  @JsonKey(name: "weather")
  List<WeatherModel> get weathers => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  @JsonKey(name: "main")
  MainInfoModel get mainInfo => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  WindModel get wind => throw _privateConstructorUsedError;
  CloudModel get clouds => throw _privateConstructorUsedError;
  SysModel get sys => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoModelCopyWith<WeatherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoModelCopyWith<$Res> {
  factory $WeatherInfoModelCopyWith(
          WeatherInfoModel value, $Res Function(WeatherInfoModel) then) =
      _$WeatherInfoModelCopyWithImpl<$Res, WeatherInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "coord") CoordinateModel coordinate,
      @JsonKey(name: "weather") List<WeatherModel> weathers,
      String base,
      @JsonKey(name: "main") MainInfoModel mainInfo,
      int visibility,
      WindModel wind,
      CloudModel clouds,
      SysModel sys,
      String name});

  $CoordinateModelCopyWith<$Res> get coordinate;
  $MainInfoModelCopyWith<$Res> get mainInfo;
  $WindModelCopyWith<$Res> get wind;
  $CloudModelCopyWith<$Res> get clouds;
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherInfoModelCopyWithImpl<$Res, $Val extends WeatherInfoModel>
    implements $WeatherInfoModelCopyWith<$Res> {
  _$WeatherInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = null,
    Object? weathers = null,
    Object? base = null,
    Object? mainInfo = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateModel,
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as MainInfoModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudModel,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateModelCopyWith<$Res> get coordinate {
    return $CoordinateModelCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainInfoModelCopyWith<$Res> get mainInfo {
    return $MainInfoModelCopyWith<$Res>(_value.mainInfo, (value) {
      return _then(_value.copyWith(mainInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindModelCopyWith<$Res> get wind {
    return $WindModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudModelCopyWith<$Res> get clouds {
    return $CloudModelCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysModelCopyWith<$Res> get sys {
    return $SysModelCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$_WeatherInfoModelImplCopyWith<$Res>
    implements $WeatherInfoModelCopyWith<$Res> {
  factory _$$$_WeatherInfoModelImplCopyWith(_$$_WeatherInfoModelImpl value,
          $Res Function(_$$_WeatherInfoModelImpl) then) =
      __$$$_WeatherInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "coord") CoordinateModel coordinate,
      @JsonKey(name: "weather") List<WeatherModel> weathers,
      String base,
      @JsonKey(name: "main") MainInfoModel mainInfo,
      int visibility,
      WindModel wind,
      CloudModel clouds,
      SysModel sys,
      String name});

  @override
  $CoordinateModelCopyWith<$Res> get coordinate;
  @override
  $MainInfoModelCopyWith<$Res> get mainInfo;
  @override
  $WindModelCopyWith<$Res> get wind;
  @override
  $CloudModelCopyWith<$Res> get clouds;
  @override
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class __$$$_WeatherInfoModelImplCopyWithImpl<$Res>
    extends _$WeatherInfoModelCopyWithImpl<$Res, _$$_WeatherInfoModelImpl>
    implements _$$$_WeatherInfoModelImplCopyWith<$Res> {
  __$$$_WeatherInfoModelImplCopyWithImpl(_$$_WeatherInfoModelImpl _value,
      $Res Function(_$$_WeatherInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = null,
    Object? weathers = null,
    Object? base = null,
    Object? mainInfo = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? sys = null,
    Object? name = null,
  }) {
    return _then(_$$_WeatherInfoModelImpl(
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateModel,
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as MainInfoModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudModel,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_WeatherInfoModelImpl
    with DiagnosticableTreeMixin
    implements $_WeatherInfoModel {
  const _$$_WeatherInfoModelImpl(
      {@JsonKey(name: "coord") required this.coordinate,
      @JsonKey(name: "weather") required final List<WeatherModel> weathers,
      required this.base,
      @JsonKey(name: "main") required this.mainInfo,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.sys,
      required this.name})
      : _weathers = weathers;

  factory _$$_WeatherInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_WeatherInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "coord")
  final CoordinateModel coordinate;
  final List<WeatherModel> _weathers;
  @override
  @JsonKey(name: "weather")
  List<WeatherModel> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  final String base;
  @override
  @JsonKey(name: "main")
  final MainInfoModel mainInfo;
  @override
  final int visibility;
  @override
  final WindModel wind;
  @override
  final CloudModel clouds;
  @override
  final SysModel sys;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherInfoModel(coordinate: $coordinate, weathers: $weathers, base: $base, mainInfo: $mainInfo, visibility: $visibility, wind: $wind, clouds: $clouds, sys: $sys, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherInfoModel'))
      ..add(DiagnosticsProperty('coordinate', coordinate))
      ..add(DiagnosticsProperty('weathers', weathers))
      ..add(DiagnosticsProperty('base', base))
      ..add(DiagnosticsProperty('mainInfo', mainInfo))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('wind', wind))
      ..add(DiagnosticsProperty('clouds', clouds))
      ..add(DiagnosticsProperty('sys', sys))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_WeatherInfoModelImpl &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            const DeepCollectionEquality().equals(other._weathers, _weathers) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.mainInfo, mainInfo) ||
                other.mainInfo == mainInfo) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coordinate,
      const DeepCollectionEquality().hash(_weathers),
      base,
      mainInfo,
      visibility,
      wind,
      clouds,
      sys,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_WeatherInfoModelImplCopyWith<_$$_WeatherInfoModelImpl> get copyWith =>
      __$$$_WeatherInfoModelImplCopyWithImpl<_$$_WeatherInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_WeatherInfoModelImplToJson(
      this,
    );
  }
}

abstract class $_WeatherInfoModel implements WeatherInfoModel {
  const factory $_WeatherInfoModel(
      {@JsonKey(name: "coord") required final CoordinateModel coordinate,
      @JsonKey(name: "weather") required final List<WeatherModel> weathers,
      required final String base,
      @JsonKey(name: "main") required final MainInfoModel mainInfo,
      required final int visibility,
      required final WindModel wind,
      required final CloudModel clouds,
      required final SysModel sys,
      required final String name}) = _$$_WeatherInfoModelImpl;

  factory $_WeatherInfoModel.fromJson(Map<String, dynamic> json) =
      _$$_WeatherInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "coord")
  CoordinateModel get coordinate;
  @override
  @JsonKey(name: "weather")
  List<WeatherModel> get weathers;
  @override
  String get base;
  @override
  @JsonKey(name: "main")
  MainInfoModel get mainInfo;
  @override
  int get visibility;
  @override
  WindModel get wind;
  @override
  CloudModel get clouds;
  @override
  SysModel get sys;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$$_WeatherInfoModelImplCopyWith<_$$_WeatherInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
