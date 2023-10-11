// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CloudModel _$CloudModelFromJson(Map<String, dynamic> json) {
  return $_CloudModel.fromJson(json);
}

/// @nodoc
mixin _$CloudModel {
  int get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudModelCopyWith<CloudModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudModelCopyWith<$Res> {
  factory $CloudModelCopyWith(
          CloudModel value, $Res Function(CloudModel) then) =
      _$CloudModelCopyWithImpl<$Res, CloudModel>;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudModelCopyWithImpl<$Res, $Val extends CloudModel>
    implements $CloudModelCopyWith<$Res> {
  _$CloudModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_CloudModelImplCopyWith<$Res>
    implements $CloudModelCopyWith<$Res> {
  factory _$$$_CloudModelImplCopyWith(
          _$$_CloudModelImpl value, $Res Function(_$$_CloudModelImpl) then) =
      __$$$_CloudModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$$$_CloudModelImplCopyWithImpl<$Res>
    extends _$CloudModelCopyWithImpl<$Res, _$$_CloudModelImpl>
    implements _$$$_CloudModelImplCopyWith<$Res> {
  __$$$_CloudModelImplCopyWithImpl(
      _$$_CloudModelImpl _value, $Res Function(_$$_CloudModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$$_CloudModelImpl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_CloudModelImpl with DiagnosticableTreeMixin implements $_CloudModel {
  const _$$_CloudModelImpl({required this.all});

  factory _$$_CloudModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_CloudModelImplFromJson(json);

  @override
  final int all;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CloudModel(all: $all)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CloudModel'))
      ..add(DiagnosticsProperty('all', all));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_CloudModelImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$_CloudModelImplCopyWith<_$$_CloudModelImpl> get copyWith =>
      __$$$_CloudModelImplCopyWithImpl<_$$_CloudModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_CloudModelImplToJson(
      this,
    );
  }
}

abstract class $_CloudModel implements CloudModel {
  const factory $_CloudModel({required final int all}) = _$$_CloudModelImpl;

  factory $_CloudModel.fromJson(Map<String, dynamic> json) =
      _$$_CloudModelImpl.fromJson;

  @override
  int get all;
  @override
  @JsonKey(ignore: true)
  _$$$_CloudModelImplCopyWith<_$$_CloudModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
