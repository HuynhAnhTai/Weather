// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WindModel _$WindModelFromJson(Map<String, dynamic> json) {
  return $_WindModel.fromJson(json);
}

/// @nodoc
mixin _$WindModel {
  double get speed => throw _privateConstructorUsedError;
  double get deg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindModelCopyWith<WindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindModelCopyWith<$Res> {
  factory $WindModelCopyWith(WindModel value, $Res Function(WindModel) then) =
      _$WindModelCopyWithImpl<$Res, WindModel>;
  @useResult
  $Res call({double speed, double deg});
}

/// @nodoc
class _$WindModelCopyWithImpl<$Res, $Val extends WindModel>
    implements $WindModelCopyWith<$Res> {
  _$WindModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_WindModelImplCopyWith<$Res>
    implements $WindModelCopyWith<$Res> {
  factory _$$$_WindModelImplCopyWith(
          _$$_WindModelImpl value, $Res Function(_$$_WindModelImpl) then) =
      __$$$_WindModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, double deg});
}

/// @nodoc
class __$$$_WindModelImplCopyWithImpl<$Res>
    extends _$WindModelCopyWithImpl<$Res, _$$_WindModelImpl>
    implements _$$$_WindModelImplCopyWith<$Res> {
  __$$$_WindModelImplCopyWithImpl(
      _$$_WindModelImpl _value, $Res Function(_$$_WindModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
  }) {
    return _then(_$$_WindModelImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_WindModelImpl with DiagnosticableTreeMixin implements $_WindModel {
  const _$$_WindModelImpl({required this.speed, required this.deg});

  factory _$$_WindModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_WindModelImplFromJson(json);

  @override
  final double speed;
  @override
  final double deg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WindModel(speed: $speed, deg: $deg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WindModel'))
      ..add(DiagnosticsProperty('speed', speed))
      ..add(DiagnosticsProperty('deg', deg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_WindModelImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_WindModelImplCopyWith<_$$_WindModelImpl> get copyWith =>
      __$$$_WindModelImplCopyWithImpl<_$$_WindModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_WindModelImplToJson(
      this,
    );
  }
}

abstract class $_WindModel implements WindModel {
  const factory $_WindModel(
      {required final double speed,
      required final double deg}) = _$$_WindModelImpl;

  factory $_WindModel.fromJson(Map<String, dynamic> json) =
      _$$_WindModelImpl.fromJson;

  @override
  double get speed;
  @override
  double get deg;
  @override
  @JsonKey(ignore: true)
  _$$$_WindModelImplCopyWith<_$$_WindModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
