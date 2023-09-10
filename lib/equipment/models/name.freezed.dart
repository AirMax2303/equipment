// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return _NameModel.fromJson(json);
}

/// @nodoc
mixin _$NameModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameModelCopyWith<NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameModelCopyWith<$Res> {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) then) =
      _$NameModelCopyWithImpl<$Res, NameModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$NameModelCopyWithImpl<$Res, $Val extends NameModel>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameModelCopyWith<$Res> implements $NameModelCopyWith<$Res> {
  factory _$$_NameModelCopyWith(
          _$_NameModel value, $Res Function(_$_NameModel) then) =
      __$$_NameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_NameModelCopyWithImpl<$Res>
    extends _$NameModelCopyWithImpl<$Res, _$_NameModel>
    implements _$$_NameModelCopyWith<$Res> {
  __$$_NameModelCopyWithImpl(
      _$_NameModel _value, $Res Function(_$_NameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_NameModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameModel implements _NameModel {
  const _$_NameModel({this.name = ''});

  factory _$_NameModel.fromJson(Map<String, dynamic> json) =>
      _$$_NameModelFromJson(json);

  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'NameModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameModelCopyWith<_$_NameModel> get copyWith =>
      __$$_NameModelCopyWithImpl<_$_NameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameModelToJson(
      this,
    );
  }
}

abstract class _NameModel implements NameModel {
  const factory _NameModel({final String? name}) = _$_NameModel;

  factory _NameModel.fromJson(Map<String, dynamic> json) =
      _$_NameModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_NameModelCopyWith<_$_NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
