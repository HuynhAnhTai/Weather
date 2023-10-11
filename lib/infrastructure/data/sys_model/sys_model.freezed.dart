// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SysModel _$SysModelFromJson(Map<String, dynamic> json) {
  return $_SysModel.fromJson(json);
}

/// @nodoc
mixin _$SysModel {
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysModelCopyWith<SysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysModelCopyWith<$Res> {
  factory $SysModelCopyWith(SysModel value, $Res Function(SysModel) then) =
      _$SysModelCopyWithImpl<$Res, SysModel>;
  @useResult
  $Res call({int sunrise, int sunset});
}

/// @nodoc
class _$SysModelCopyWithImpl<$Res, $Val extends SysModel>
    implements $SysModelCopyWith<$Res> {
  _$SysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_SysModelImplCopyWith<$Res>
    implements $SysModelCopyWith<$Res> {
  factory _$$$_SysModelImplCopyWith(
          _$$_SysModelImpl value, $Res Function(_$$_SysModelImpl) then) =
      __$$$_SysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sunrise, int sunset});
}

/// @nodoc
class __$$$_SysModelImplCopyWithImpl<$Res>
    extends _$SysModelCopyWithImpl<$Res, _$$_SysModelImpl>
    implements _$$$_SysModelImplCopyWith<$Res> {
  __$$$_SysModelImplCopyWithImpl(
      _$$_SysModelImpl _value, $Res Function(_$$_SysModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$$_SysModelImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_SysModelImpl with DiagnosticableTreeMixin implements $_SysModel {
  const _$$_SysModelImpl({required this.sunrise, required this.sunset});

  factory _$$_SysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_SysModelImplFromJson(json);

  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SysModel(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SysModel'))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_SysModelImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_SysModelImplCopyWith<_$$_SysModelImpl> get copyWith =>
      __$$$_SysModelImplCopyWithImpl<_$$_SysModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_SysModelImplToJson(
      this,
    );
  }
}

abstract class $_SysModel implements SysModel {
  const factory $_SysModel(
      {required final int sunrise,
      required final int sunset}) = _$$_SysModelImpl;

  factory $_SysModel.fromJson(Map<String, dynamic> json) =
      _$$_SysModelImpl.fromJson;

  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$$$_SysModelImplCopyWith<_$$_SysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
