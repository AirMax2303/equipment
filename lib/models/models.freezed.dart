// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SqlResult _$SqlResultFromJson(Map<String, dynamic> json) {
  return _SqlResult.fromJson(json);
}

/// @nodoc
mixin _$SqlResult {
  int? get fieldCount => throw _privateConstructorUsedError;
  int? get affectedRows => throw _privateConstructorUsedError;
  int? get insertId => throw _privateConstructorUsedError;
  int? get serverStatus => throw _privateConstructorUsedError;
  int? get warningCount => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; //    @JsonKey(fromJson: boolFromString)
  bool? get protocol41 => throw _privateConstructorUsedError;
  int? get changedRows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SqlResultCopyWith<SqlResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqlResultCopyWith<$Res> {
  factory $SqlResultCopyWith(SqlResult value, $Res Function(SqlResult) then) =
      _$SqlResultCopyWithImpl<$Res, SqlResult>;
  @useResult
  $Res call(
      {int? fieldCount,
      int? affectedRows,
      int? insertId,
      int? serverStatus,
      int? warningCount,
      String? message,
      bool? protocol41,
      int? changedRows});
}

/// @nodoc
class _$SqlResultCopyWithImpl<$Res, $Val extends SqlResult>
    implements $SqlResultCopyWith<$Res> {
  _$SqlResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCount = freezed,
    Object? affectedRows = freezed,
    Object? insertId = freezed,
    Object? serverStatus = freezed,
    Object? warningCount = freezed,
    Object? message = freezed,
    Object? protocol41 = freezed,
    Object? changedRows = freezed,
  }) {
    return _then(_value.copyWith(
      fieldCount: freezed == fieldCount
          ? _value.fieldCount
          : fieldCount // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedRows: freezed == affectedRows
          ? _value.affectedRows
          : affectedRows // ignore: cast_nullable_to_non_nullable
              as int?,
      insertId: freezed == insertId
          ? _value.insertId
          : insertId // ignore: cast_nullable_to_non_nullable
              as int?,
      serverStatus: freezed == serverStatus
          ? _value.serverStatus
          : serverStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      warningCount: freezed == warningCount
          ? _value.warningCount
          : warningCount // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol41: freezed == protocol41
          ? _value.protocol41
          : protocol41 // ignore: cast_nullable_to_non_nullable
              as bool?,
      changedRows: freezed == changedRows
          ? _value.changedRows
          : changedRows // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SqlResultImplCopyWith<$Res>
    implements $SqlResultCopyWith<$Res> {
  factory _$$SqlResultImplCopyWith(
          _$SqlResultImpl value, $Res Function(_$SqlResultImpl) then) =
      __$$SqlResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? fieldCount,
      int? affectedRows,
      int? insertId,
      int? serverStatus,
      int? warningCount,
      String? message,
      bool? protocol41,
      int? changedRows});
}

/// @nodoc
class __$$SqlResultImplCopyWithImpl<$Res>
    extends _$SqlResultCopyWithImpl<$Res, _$SqlResultImpl>
    implements _$$SqlResultImplCopyWith<$Res> {
  __$$SqlResultImplCopyWithImpl(
      _$SqlResultImpl _value, $Res Function(_$SqlResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCount = freezed,
    Object? affectedRows = freezed,
    Object? insertId = freezed,
    Object? serverStatus = freezed,
    Object? warningCount = freezed,
    Object? message = freezed,
    Object? protocol41 = freezed,
    Object? changedRows = freezed,
  }) {
    return _then(_$SqlResultImpl(
      fieldCount: freezed == fieldCount
          ? _value.fieldCount
          : fieldCount // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedRows: freezed == affectedRows
          ? _value.affectedRows
          : affectedRows // ignore: cast_nullable_to_non_nullable
              as int?,
      insertId: freezed == insertId
          ? _value.insertId
          : insertId // ignore: cast_nullable_to_non_nullable
              as int?,
      serverStatus: freezed == serverStatus
          ? _value.serverStatus
          : serverStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      warningCount: freezed == warningCount
          ? _value.warningCount
          : warningCount // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol41: freezed == protocol41
          ? _value.protocol41
          : protocol41 // ignore: cast_nullable_to_non_nullable
              as bool?,
      changedRows: freezed == changedRows
          ? _value.changedRows
          : changedRows // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SqlResultImpl implements _SqlResult {
  const _$SqlResultImpl(
      {this.fieldCount,
      this.affectedRows,
      this.insertId,
      this.serverStatus,
      this.warningCount,
      this.message,
      this.protocol41,
      this.changedRows});

  factory _$SqlResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SqlResultImplFromJson(json);

  @override
  final int? fieldCount;
  @override
  final int? affectedRows;
  @override
  final int? insertId;
  @override
  final int? serverStatus;
  @override
  final int? warningCount;
  @override
  final String? message;
//    @JsonKey(fromJson: boolFromString)
  @override
  final bool? protocol41;
  @override
  final int? changedRows;

  @override
  String toString() {
    return 'SqlResult(fieldCount: $fieldCount, affectedRows: $affectedRows, insertId: $insertId, serverStatus: $serverStatus, warningCount: $warningCount, message: $message, protocol41: $protocol41, changedRows: $changedRows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SqlResultImpl &&
            (identical(other.fieldCount, fieldCount) ||
                other.fieldCount == fieldCount) &&
            (identical(other.affectedRows, affectedRows) ||
                other.affectedRows == affectedRows) &&
            (identical(other.insertId, insertId) ||
                other.insertId == insertId) &&
            (identical(other.serverStatus, serverStatus) ||
                other.serverStatus == serverStatus) &&
            (identical(other.warningCount, warningCount) ||
                other.warningCount == warningCount) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.protocol41, protocol41) ||
                other.protocol41 == protocol41) &&
            (identical(other.changedRows, changedRows) ||
                other.changedRows == changedRows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fieldCount, affectedRows,
      insertId, serverStatus, warningCount, message, protocol41, changedRows);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SqlResultImplCopyWith<_$SqlResultImpl> get copyWith =>
      __$$SqlResultImplCopyWithImpl<_$SqlResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SqlResultImplToJson(
      this,
    );
  }
}

abstract class _SqlResult implements SqlResult {
  const factory _SqlResult(
      {final int? fieldCount,
      final int? affectedRows,
      final int? insertId,
      final int? serverStatus,
      final int? warningCount,
      final String? message,
      final bool? protocol41,
      final int? changedRows}) = _$SqlResultImpl;

  factory _SqlResult.fromJson(Map<String, dynamic> json) =
      _$SqlResultImpl.fromJson;

  @override
  int? get fieldCount;
  @override
  int? get affectedRows;
  @override
  int? get insertId;
  @override
  int? get serverStatus;
  @override
  int? get warningCount;
  @override
  String? get message;
  @override //    @JsonKey(fromJson: boolFromString)
  bool? get protocol41;
  @override
  int? get changedRows;
  @override
  @JsonKey(ignore: true)
  _$$SqlResultImplCopyWith<_$SqlResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdModel _$IdModelFromJson(Map<String, dynamic> json) {
  return _IdModel.fromJson(json);
}

/// @nodoc
mixin _$IdModel {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdModelCopyWith<IdModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdModelCopyWith<$Res> {
  factory $IdModelCopyWith(IdModel value, $Res Function(IdModel) then) =
      _$IdModelCopyWithImpl<$Res, IdModel>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$IdModelCopyWithImpl<$Res, $Val extends IdModel>
    implements $IdModelCopyWith<$Res> {
  _$IdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdModelImplCopyWith<$Res> implements $IdModelCopyWith<$Res> {
  factory _$$IdModelImplCopyWith(
          _$IdModelImpl value, $Res Function(_$IdModelImpl) then) =
      __$$IdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$IdModelImplCopyWithImpl<$Res>
    extends _$IdModelCopyWithImpl<$Res, _$IdModelImpl>
    implements _$$IdModelImplCopyWith<$Res> {
  __$$IdModelImplCopyWithImpl(
      _$IdModelImpl _value, $Res Function(_$IdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$IdModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdModelImpl implements _IdModel {
  _$IdModelImpl({this.id = ''});

  factory _$IdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdModelImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'IdModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdModelImplCopyWith<_$IdModelImpl> get copyWith =>
      __$$IdModelImplCopyWithImpl<_$IdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdModelImplToJson(
      this,
    );
  }
}

abstract class _IdModel implements IdModel {
  factory _IdModel({final String? id}) = _$IdModelImpl;

  factory _IdModel.fromJson(Map<String, dynamic> json) = _$IdModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$IdModelImplCopyWith<_$IdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
  String? get id => throw _privateConstructorUsedError;
  String? get clientid => throw _privateConstructorUsedError;
  String? get name1 => throw _privateConstructorUsedError;
  String? get name2 => throw _privateConstructorUsedError;
  String? get viewid => throw _privateConstructorUsedError;
  String? get view => throw _privateConstructorUsedError;
  String? get plotid => throw _privateConstructorUsedError;
  String? get plot => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get proftype => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get valuex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res, EquipmentModel>;
  @useResult
  $Res call(
      {String? id,
      String? clientid,
      String? name1,
      String? name2,
      String? viewid,
      String? view,
      String? plotid,
      String? plot,
      String? image,
      @JsonKey(toJson: stringFromInt) int? status,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? proftype,
      @JsonKey(toJson: stringFromInt) int? valuex});
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res, $Val extends EquipmentModel>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? viewid = freezed,
    Object? view = freezed,
    Object? plotid = freezed,
    Object? plot = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? proftype = freezed,
    Object? valuex = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientid: freezed == clientid
          ? _value.clientid
          : clientid // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      viewid: freezed == viewid
          ? _value.viewid
          : viewid // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      plotid: freezed == plotid
          ? _value.plotid
          : plotid // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: freezed == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      proftype: freezed == proftype
          ? _value.proftype
          : proftype // ignore: cast_nullable_to_non_nullable
              as bool?,
      valuex: freezed == valuex
          ? _value.valuex
          : valuex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentModelImplCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$EquipmentModelImplCopyWith(_$EquipmentModelImpl value,
          $Res Function(_$EquipmentModelImpl) then) =
      __$$EquipmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? clientid,
      String? name1,
      String? name2,
      String? viewid,
      String? view,
      String? plotid,
      String? plot,
      String? image,
      @JsonKey(toJson: stringFromInt) int? status,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? proftype,
      @JsonKey(toJson: stringFromInt) int? valuex});
}

/// @nodoc
class __$$EquipmentModelImplCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res, _$EquipmentModelImpl>
    implements _$$EquipmentModelImplCopyWith<$Res> {
  __$$EquipmentModelImplCopyWithImpl(
      _$EquipmentModelImpl _value, $Res Function(_$EquipmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? viewid = freezed,
    Object? view = freezed,
    Object? plotid = freezed,
    Object? plot = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? proftype = freezed,
    Object? valuex = freezed,
  }) {
    return _then(_$EquipmentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientid: freezed == clientid
          ? _value.clientid
          : clientid // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      viewid: freezed == viewid
          ? _value.viewid
          : viewid // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      plotid: freezed == plotid
          ? _value.plotid
          : plotid // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: freezed == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      proftype: freezed == proftype
          ? _value.proftype
          : proftype // ignore: cast_nullable_to_non_nullable
              as bool?,
      valuex: freezed == valuex
          ? _value.valuex
          : valuex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentModelImpl implements _EquipmentModel {
  const _$EquipmentModelImpl(
      {this.id = '',
      this.clientid = '',
      this.name1 = '',
      this.name2 = '',
      this.viewid = '',
      this.view = '',
      this.plotid = '',
      this.plot = '',
      this.image = '',
      @JsonKey(toJson: stringFromInt) this.status = 1,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      this.proftype = false,
      @JsonKey(toJson: stringFromInt) this.valuex = 0});

  factory _$EquipmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentModelImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? clientid;
  @override
  @JsonKey()
  final String? name1;
  @override
  @JsonKey()
  final String? name2;
  @override
  @JsonKey()
  final String? viewid;
  @override
  @JsonKey()
  final String? view;
  @override
  @JsonKey()
  final String? plotid;
  @override
  @JsonKey()
  final String? plot;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? status;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  final bool? proftype;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? valuex;

  @override
  String toString() {
    return 'EquipmentModel(id: $id, clientid: $clientid, name1: $name1, name2: $name2, viewid: $viewid, view: $view, plotid: $plotid, plot: $plot, image: $image, status: $status, proftype: $proftype, valuex: $valuex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientid, clientid) ||
                other.clientid == clientid) &&
            (identical(other.name1, name1) || other.name1 == name1) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.viewid, viewid) || other.viewid == viewid) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.plotid, plotid) || other.plotid == plotid) &&
            (identical(other.plot, plot) || other.plot == plot) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.proftype, proftype) ||
                other.proftype == proftype) &&
            (identical(other.valuex, valuex) || other.valuex == valuex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientid, name1, name2,
      viewid, view, plotid, plot, image, status, proftype, valuex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      __$$EquipmentModelImplCopyWithImpl<_$EquipmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentModelImplToJson(
      this,
    );
  }
}

abstract class _EquipmentModel implements EquipmentModel {
  const factory _EquipmentModel(
          {final String? id,
          final String? clientid,
          final String? name1,
          final String? name2,
          final String? viewid,
          final String? view,
          final String? plotid,
          final String? plot,
          final String? image,
          @JsonKey(toJson: stringFromInt) final int? status,
          @JsonKey(fromJson: boolFromInt, toJson: boolToString)
          final bool? proftype,
          @JsonKey(toJson: stringFromInt) final int? valuex}) =
      _$EquipmentModelImpl;

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$EquipmentModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get clientid;
  @override
  String? get name1;
  @override
  String? get name2;
  @override
  String? get viewid;
  @override
  String? get view;
  @override
  String? get plotid;
  @override
  String? get plot;
  @override
  String? get image;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get status;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get proftype;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get valuex;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PprModel _$PprModelFromJson(Map<String, dynamic> json) {
  return _PprModel.fromJson(json);
}

/// @nodoc
mixin _$PprModel {
  String? get id => throw _privateConstructorUsedError;
  String? get equipmentid => throw _privateConstructorUsedError;
  String? get partsid => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get pprtype => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get priority => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get proftype => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get repeatcount => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get intervalcount => throw _privateConstructorUsedError;
  DateTime? get begindate => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get beginint => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PprModelCopyWith<PprModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PprModelCopyWith<$Res> {
  factory $PprModelCopyWith(PprModel value, $Res Function(PprModel) then) =
      _$PprModelCopyWithImpl<$Res, PprModel>;
  @useResult
  $Res call(
      {String? id,
      String? equipmentid,
      String? partsid,
      @JsonKey(toJson: stringFromInt) int? pprtype,
      String? name,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? priority,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? proftype,
      @JsonKey(toJson: stringFromInt) int? repeatcount,
      @JsonKey(toJson: stringFromInt) int? intervalcount,
      DateTime? begindate,
      @JsonKey(toJson: stringFromInt) int? beginint,
      String? image});
}

/// @nodoc
class _$PprModelCopyWithImpl<$Res, $Val extends PprModel>
    implements $PprModelCopyWith<$Res> {
  _$PprModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? equipmentid = freezed,
    Object? partsid = freezed,
    Object? pprtype = freezed,
    Object? name = freezed,
    Object? priority = freezed,
    Object? proftype = freezed,
    Object? repeatcount = freezed,
    Object? intervalcount = freezed,
    Object? begindate = freezed,
    Object? beginint = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      pprtype: freezed == pprtype
          ? _value.pprtype
          : pprtype // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool?,
      proftype: freezed == proftype
          ? _value.proftype
          : proftype // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatcount: freezed == repeatcount
          ? _value.repeatcount
          : repeatcount // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalcount: freezed == intervalcount
          ? _value.intervalcount
          : intervalcount // ignore: cast_nullable_to_non_nullable
              as int?,
      begindate: freezed == begindate
          ? _value.begindate
          : begindate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      beginint: freezed == beginint
          ? _value.beginint
          : beginint // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PprModelImplCopyWith<$Res>
    implements $PprModelCopyWith<$Res> {
  factory _$$PprModelImplCopyWith(
          _$PprModelImpl value, $Res Function(_$PprModelImpl) then) =
      __$$PprModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? equipmentid,
      String? partsid,
      @JsonKey(toJson: stringFromInt) int? pprtype,
      String? name,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? priority,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? proftype,
      @JsonKey(toJson: stringFromInt) int? repeatcount,
      @JsonKey(toJson: stringFromInt) int? intervalcount,
      DateTime? begindate,
      @JsonKey(toJson: stringFromInt) int? beginint,
      String? image});
}

/// @nodoc
class __$$PprModelImplCopyWithImpl<$Res>
    extends _$PprModelCopyWithImpl<$Res, _$PprModelImpl>
    implements _$$PprModelImplCopyWith<$Res> {
  __$$PprModelImplCopyWithImpl(
      _$PprModelImpl _value, $Res Function(_$PprModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? equipmentid = freezed,
    Object? partsid = freezed,
    Object? pprtype = freezed,
    Object? name = freezed,
    Object? priority = freezed,
    Object? proftype = freezed,
    Object? repeatcount = freezed,
    Object? intervalcount = freezed,
    Object? begindate = freezed,
    Object? beginint = freezed,
    Object? image = freezed,
  }) {
    return _then(_$PprModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      pprtype: freezed == pprtype
          ? _value.pprtype
          : pprtype // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool?,
      proftype: freezed == proftype
          ? _value.proftype
          : proftype // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatcount: freezed == repeatcount
          ? _value.repeatcount
          : repeatcount // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalcount: freezed == intervalcount
          ? _value.intervalcount
          : intervalcount // ignore: cast_nullable_to_non_nullable
              as int?,
      begindate: freezed == begindate
          ? _value.begindate
          : begindate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      beginint: freezed == beginint
          ? _value.beginint
          : beginint // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PprModelImpl implements _PprModel {
  _$PprModelImpl(
      {this.id = '',
      this.equipmentid = '',
      this.partsid = '',
      @JsonKey(toJson: stringFromInt) this.pprtype = 0,
      this.name = '',
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      this.priority = false,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      this.proftype = false,
      @JsonKey(toJson: stringFromInt) this.repeatcount = 0,
      @JsonKey(toJson: stringFromInt) this.intervalcount = 1,
      this.begindate,
      @JsonKey(toJson: stringFromInt) this.beginint = 1,
      this.image = ''});

  factory _$PprModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PprModelImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? equipmentid;
  @override
  @JsonKey()
  final String? partsid;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? pprtype;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  final bool? priority;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  final bool? proftype;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? repeatcount;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? intervalcount;
  @override
  final DateTime? begindate;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? beginint;
  @override
  @JsonKey()
  final String? image;

  @override
  String toString() {
    return 'PprModel(id: $id, equipmentid: $equipmentid, partsid: $partsid, pprtype: $pprtype, name: $name, priority: $priority, proftype: $proftype, repeatcount: $repeatcount, intervalcount: $intervalcount, begindate: $begindate, beginint: $beginint, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PprModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            (identical(other.partsid, partsid) || other.partsid == partsid) &&
            (identical(other.pprtype, pprtype) || other.pprtype == pprtype) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.proftype, proftype) ||
                other.proftype == proftype) &&
            (identical(other.repeatcount, repeatcount) ||
                other.repeatcount == repeatcount) &&
            (identical(other.intervalcount, intervalcount) ||
                other.intervalcount == intervalcount) &&
            (identical(other.begindate, begindate) ||
                other.begindate == begindate) &&
            (identical(other.beginint, beginint) ||
                other.beginint == beginint) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      equipmentid,
      partsid,
      pprtype,
      name,
      priority,
      proftype,
      repeatcount,
      intervalcount,
      begindate,
      beginint,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PprModelImplCopyWith<_$PprModelImpl> get copyWith =>
      __$$PprModelImplCopyWithImpl<_$PprModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PprModelImplToJson(
      this,
    );
  }
}

abstract class _PprModel implements PprModel {
  factory _PprModel(
      {final String? id,
      final String? equipmentid,
      final String? partsid,
      @JsonKey(toJson: stringFromInt) final int? pprtype,
      final String? name,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      final bool? priority,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      final bool? proftype,
      @JsonKey(toJson: stringFromInt) final int? repeatcount,
      @JsonKey(toJson: stringFromInt) final int? intervalcount,
      final DateTime? begindate,
      @JsonKey(toJson: stringFromInt) final int? beginint,
      final String? image}) = _$PprModelImpl;

  factory _PprModel.fromJson(Map<String, dynamic> json) =
      _$PprModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get equipmentid;
  @override
  String? get partsid;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get pprtype;
  @override
  String? get name;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get priority;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get proftype;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get repeatcount;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get intervalcount;
  @override
  DateTime? get begindate;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get beginint;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$PprModelImplCopyWith<_$PprModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkModel _$WorkModelFromJson(Map<String, dynamic> json) {
  return _WorkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkModel {
  String? get id => throw _privateConstructorUsedError;
  String? get pprid => throw _privateConstructorUsedError;
  String? get equipmentid => throw _privateConstructorUsedError;
  String? get partsid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: stringFromInt)
  int? get worktype => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get priority => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get workdate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get workisdone => throw _privateConstructorUsedError;

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
      String? pprid,
      String? equipmentid,
      String? partsid,
      String? name,
      @JsonKey(toJson: stringFromInt) int? worktype,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? priority,
      String? image,
      DateTime? workdate,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? workisdone});
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
    Object? pprid = freezed,
    Object? equipmentid = freezed,
    Object? partsid = freezed,
    Object? name = freezed,
    Object? worktype = freezed,
    Object? priority = freezed,
    Object? image = freezed,
    Object? workdate = freezed,
    Object? workisdone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pprid: freezed == pprid
          ? _value.pprid
          : pprid // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      worktype: freezed == worktype
          ? _value.worktype
          : worktype // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      workdate: freezed == workdate
          ? _value.workdate
          : workdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workisdone: freezed == workisdone
          ? _value.workisdone
          : workisdone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkModelImplCopyWith<$Res>
    implements $WorkModelCopyWith<$Res> {
  factory _$$WorkModelImplCopyWith(
          _$WorkModelImpl value, $Res Function(_$WorkModelImpl) then) =
      __$$WorkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? pprid,
      String? equipmentid,
      String? partsid,
      String? name,
      @JsonKey(toJson: stringFromInt) int? worktype,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? priority,
      String? image,
      DateTime? workdate,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) bool? workisdone});
}

/// @nodoc
class __$$WorkModelImplCopyWithImpl<$Res>
    extends _$WorkModelCopyWithImpl<$Res, _$WorkModelImpl>
    implements _$$WorkModelImplCopyWith<$Res> {
  __$$WorkModelImplCopyWithImpl(
      _$WorkModelImpl _value, $Res Function(_$WorkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pprid = freezed,
    Object? equipmentid = freezed,
    Object? partsid = freezed,
    Object? name = freezed,
    Object? worktype = freezed,
    Object? priority = freezed,
    Object? image = freezed,
    Object? workdate = freezed,
    Object? workisdone = freezed,
  }) {
    return _then(_$WorkModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pprid: freezed == pprid
          ? _value.pprid
          : pprid // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      worktype: freezed == worktype
          ? _value.worktype
          : worktype // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      workdate: freezed == workdate
          ? _value.workdate
          : workdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workisdone: freezed == workisdone
          ? _value.workisdone
          : workisdone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkModelImpl implements _WorkModel {
  _$WorkModelImpl(
      {this.id = '',
      this.pprid = '',
      this.equipmentid = '',
      this.partsid = '',
      this.name = '',
      @JsonKey(toJson: stringFromInt) this.worktype = 0,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      this.priority = false,
      this.image = '',
      this.workdate,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      this.workisdone = false});

  factory _$WorkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkModelImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? pprid;
  @override
  @JsonKey()
  final String? equipmentid;
  @override
  @JsonKey()
  final String? partsid;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey(toJson: stringFromInt)
  final int? worktype;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  final bool? priority;
  @override
  @JsonKey()
  final String? image;
  @override
  final DateTime? workdate;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  final bool? workisdone;

  @override
  String toString() {
    return 'WorkModel(id: $id, pprid: $pprid, equipmentid: $equipmentid, partsid: $partsid, name: $name, worktype: $worktype, priority: $priority, image: $image, workdate: $workdate, workisdone: $workisdone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pprid, pprid) || other.pprid == pprid) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            (identical(other.partsid, partsid) || other.partsid == partsid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.worktype, worktype) ||
                other.worktype == worktype) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.workdate, workdate) ||
                other.workdate == workdate) &&
            (identical(other.workisdone, workisdone) ||
                other.workisdone == workisdone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pprid, equipmentid, partsid,
      name, worktype, priority, image, workdate, workisdone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkModelImplCopyWith<_$WorkModelImpl> get copyWith =>
      __$$WorkModelImplCopyWithImpl<_$WorkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkModelImplToJson(
      this,
    );
  }
}

abstract class _WorkModel implements WorkModel {
  factory _WorkModel(
      {final String? id,
      final String? pprid,
      final String? equipmentid,
      final String? partsid,
      final String? name,
      @JsonKey(toJson: stringFromInt) final int? worktype,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      final bool? priority,
      final String? image,
      final DateTime? workdate,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString)
      final bool? workisdone}) = _$WorkModelImpl;

  factory _WorkModel.fromJson(Map<String, dynamic> json) =
      _$WorkModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get pprid;
  @override
  String? get equipmentid;
  @override
  String? get partsid;
  @override
  String? get name;
  @override
  @JsonKey(toJson: stringFromInt)
  int? get worktype;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get priority;
  @override
  String? get image;
  @override
  DateTime? get workdate;
  @override
  @JsonKey(fromJson: boolFromInt, toJson: boolToString)
  bool? get workisdone;
  @override
  @JsonKey(ignore: true)
  _$$WorkModelImplCopyWith<_$WorkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkList _$WorkListFromJson(Map<String, dynamic> json) {
  return _WorkList.fromJson(json);
}

/// @nodoc
mixin _$WorkList {
  List<WorkModel>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkListCopyWith<WorkList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkListCopyWith<$Res> {
  factory $WorkListCopyWith(WorkList value, $Res Function(WorkList) then) =
      _$WorkListCopyWithImpl<$Res, WorkList>;
  @useResult
  $Res call({List<WorkModel>? list});
}

/// @nodoc
class _$WorkListCopyWithImpl<$Res, $Val extends WorkList>
    implements $WorkListCopyWith<$Res> {
  _$WorkListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WorkModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkListImplCopyWith<$Res>
    implements $WorkListCopyWith<$Res> {
  factory _$$WorkListImplCopyWith(
          _$WorkListImpl value, $Res Function(_$WorkListImpl) then) =
      __$$WorkListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkModel>? list});
}

/// @nodoc
class __$$WorkListImplCopyWithImpl<$Res>
    extends _$WorkListCopyWithImpl<$Res, _$WorkListImpl>
    implements _$$WorkListImplCopyWith<$Res> {
  __$$WorkListImplCopyWithImpl(
      _$WorkListImpl _value, $Res Function(_$WorkListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$WorkListImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WorkModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkListImpl implements _WorkList {
  const _$WorkListImpl({final List<WorkModel>? list}) : _list = list;

  factory _$WorkListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkListImplFromJson(json);

  final List<WorkModel>? _list;
  @override
  List<WorkModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkListImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkListImplCopyWith<_$WorkListImpl> get copyWith =>
      __$$WorkListImplCopyWithImpl<_$WorkListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkListImplToJson(
      this,
    );
  }
}

abstract class _WorkList implements WorkList {
  const factory _WorkList({final List<WorkModel>? list}) = _$WorkListImpl;

  factory _WorkList.fromJson(Map<String, dynamic> json) =
      _$WorkListImpl.fromJson;

  @override
  List<WorkModel>? get list;
  @override
  @JsonKey(ignore: true)
  _$$WorkListImplCopyWith<_$WorkListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
