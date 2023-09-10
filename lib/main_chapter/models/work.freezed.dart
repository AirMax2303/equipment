// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkModel _$WorkModelFromJson(Map<String, dynamic> json) {
  return _WorkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkModel {
  String? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name1 => throw _privateConstructorUsedError;
  String? get name2 => throw _privateConstructorUsedError;
  String? get work => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkModelCopyWith<WorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkModelCopyWith<$Res> {
  factory $WorkModelCopyWith(WorkModel value, $Res Function(WorkModel) then) =
      _$WorkModelCopyWithImpl<$Res, WorkModel>;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? type,
      String? name1,
      String? name2,
      String? work,
      String? status});
}

/// @nodoc
class _$WorkModelCopyWithImpl<$Res, $Val extends WorkModel>
    implements $WorkModelCopyWith<$Res> {
  _$WorkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? work = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      work: freezed == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkModelCopyWith<$Res> implements $WorkModelCopyWith<$Res> {
  factory _$$_WorkModelCopyWith(
          _$_WorkModel value, $Res Function(_$_WorkModel) then) =
      __$$_WorkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? type,
      String? name1,
      String? name2,
      String? work,
      String? status});
}

/// @nodoc
class __$$_WorkModelCopyWithImpl<$Res>
    extends _$WorkModelCopyWithImpl<$Res, _$_WorkModel>
    implements _$$_WorkModelCopyWith<$Res> {
  __$$_WorkModelCopyWithImpl(
      _$_WorkModel _value, $Res Function(_$_WorkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? work = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_WorkModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      work: freezed == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkModel implements _WorkModel {
  const _$_WorkModel(
      {this.id = '',
      this.date = '',
      this.type = '',
      this.name1 = '',
      this.name2 = '',
      this.work = '',
      this.status = ''});

  factory _$_WorkModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? date;
  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? name1;
  @override
  @JsonKey()
  final String? name2;
  @override
  @JsonKey()
  final String? work;
  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'WorkModel(id: $id, date: $date, type: $type, name1: $name1, name2: $name2, work: $work, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name1, name1) || other.name1 == name1) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, type, name1, name2, work, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkModelCopyWith<_$_WorkModel> get copyWith =>
      __$$_WorkModelCopyWithImpl<_$_WorkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkModelToJson(
      this,
    );
  }
}

abstract class _WorkModel implements WorkModel {
  const factory _WorkModel(
      {final String? id,
      final String? date,
      final String? type,
      final String? name1,
      final String? name2,
      final String? work,
      final String? status}) = _$_WorkModel;

  factory _WorkModel.fromJson(Map<String, dynamic> json) =
      _$_WorkModel.fromJson;

  @override
  String? get id;
  @override
  String? get date;
  @override
  String? get type;
  @override
  String? get name1;
  @override
  String? get name2;
  @override
  String? get work;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_WorkModelCopyWith<_$_WorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}
