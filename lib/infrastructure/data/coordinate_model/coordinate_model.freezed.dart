// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoordinateModel _$CoordinateModelFromJson(Map<String, dynamic> json) {
  return $_CoordinateModel.fromJson(json);
}

/// @nodoc
mixin _$CoordinateModel {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateModelCopyWith<CoordinateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateModelCopyWith<$Res> {
  factory $CoordinateModelCopyWith(
          CoordinateModel value, $Res Function(CoordinateModel) then) =
      _$CoordinateModelCopyWithImpl<$Res, CoordinateModel>;
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class _$CoordinateModelCopyWithImpl<$Res, $Val extends CoordinateModel>
    implements $CoordinateModelCopyWith<$Res> {
  _$CoordinateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_CoordinateModelImplCopyWith<$Res>
    implements $CoordinateModelCopyWith<$Res> {
  factory _$$$_CoordinateModelImplCopyWith(_$$_CoordinateModelImpl value,
          $Res Function(_$$_CoordinateModelImpl) then) =
      __$$$_CoordinateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$$_CoordinateModelImplCopyWithImpl<$Res>
    extends _$CoordinateModelCopyWithImpl<$Res, _$$_CoordinateModelImpl>
    implements _$$$_CoordinateModelImplCopyWith<$Res> {
  __$$$_CoordinateModelImplCopyWithImpl(_$$_CoordinateModelImpl _value,
      $Res Function(_$$_CoordinateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$$_CoordinateModelImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_CoordinateModelImpl
    with DiagnosticableTreeMixin
    implements $_CoordinateModel {
  const _$$_CoordinateModelImpl({required this.lon, required this.lat});

  factory _$$_CoordinateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_CoordinateModelImplFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoordinateModel(lon: $lon, lat: $lat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoordinateModel'))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('lat', lat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_CoordinateModelImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_CoordinateModelImplCopyWith<_$$_CoordinateModelImpl> get copyWith =>
      __$$$_CoordinateModelImplCopyWithImpl<_$$_CoordinateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_CoordinateModelImplToJson(
      this,
    );
  }
}

abstract class $_CoordinateModel implements CoordinateModel {
  const factory $_CoordinateModel(
      {required final double lon,
      required final double lat}) = _$$_CoordinateModelImpl;

  factory $_CoordinateModel.fromJson(Map<String, dynamic> json) =
      _$$_CoordinateModelImpl.fromJson;

  @override
  double get lon;
  @override
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$$_CoordinateModelImplCopyWith<_$$_CoordinateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
