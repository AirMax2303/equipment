// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String? get id => throw _privateConstructorUsedError;
  String? get clientid => throw _privateConstructorUsedError;
  String? get equipmentid => throw _privateConstructorUsedError;
  String? get name1 => throw _privateConstructorUsedError;
  String? get name2 => throw _privateConstructorUsedError;
  String? get view => throw _privateConstructorUsedError;
  String? get plot => throw _privateConstructorUsedError;
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  int? get state => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get partsid => throw _privateConstructorUsedError;
  DateTime? get dateorder => throw _privateConstructorUsedError;
  String? get malfunction => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromString, toJson: boolToString)
  bool? get workisdone => throw _privateConstructorUsedError;
  DateTime? get datework => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String? id,
      String? clientid,
      String? equipmentid,
      String? name1,
      String? name2,
      String? view,
      String? plot,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) int? state,
      String? description,
      String? partsid,
      DateTime? dateorder,
      String? malfunction,
      String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString) bool? workisdone,
      DateTime? datework});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientid = freezed,
    Object? equipmentid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? view = freezed,
    Object? plot = freezed,
    Object? state = freezed,
    Object? description = freezed,
    Object? partsid = freezed,
    Object? dateorder = freezed,
    Object? malfunction = freezed,
    Object? image = freezed,
    Object? workisdone = freezed,
    Object? datework = freezed,
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
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: freezed == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      dateorder: freezed == dateorder
          ? _value.dateorder
          : dateorder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      malfunction: freezed == malfunction
          ? _value.malfunction
          : malfunction // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      workisdone: freezed == workisdone
          ? _value.workisdone
          : workisdone // ignore: cast_nullable_to_non_nullable
              as bool?,
      datework: freezed == datework
          ? _value.datework
          : datework // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? clientid,
      String? equipmentid,
      String? name1,
      String? name2,
      String? view,
      String? plot,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) int? state,
      String? description,
      String? partsid,
      DateTime? dateorder,
      String? malfunction,
      String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString) bool? workisdone,
      DateTime? datework});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientid = freezed,
    Object? equipmentid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? view = freezed,
    Object? plot = freezed,
    Object? state = freezed,
    Object? description = freezed,
    Object? partsid = freezed,
    Object? dateorder = freezed,
    Object? malfunction = freezed,
    Object? image = freezed,
    Object? workisdone = freezed,
    Object? datework = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientid: freezed == clientid
          ? _value.clientid
          : clientid // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: freezed == plot
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      partsid: freezed == partsid
          ? _value.partsid
          : partsid // ignore: cast_nullable_to_non_nullable
              as String?,
      dateorder: freezed == dateorder
          ? _value.dateorder
          : dateorder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      malfunction: freezed == malfunction
          ? _value.malfunction
          : malfunction // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      workisdone: freezed == workisdone
          ? _value.workisdone
          : workisdone // ignore: cast_nullable_to_non_nullable
              as bool?,
      datework: freezed == datework
          ? _value.datework
          : datework // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {this.id = '',
      this.clientid = '',
      this.equipmentid = '',
      this.name1 = '',
      this.name2 = '',
      this.view = '',
      this.plot = '',
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) this.state = 0,
      this.description = '',
      this.partsid = '',
      this.dateorder,
      this.malfunction = '',
      this.image = '',
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      this.workisdone = false,
      this.datework});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? clientid;
  @override
  @JsonKey()
  final String? equipmentid;
  @override
  @JsonKey()
  final String? name1;
  @override
  @JsonKey()
  final String? name2;
  @override
  @JsonKey()
  final String? view;
  @override
  @JsonKey()
  final String? plot;
  @override
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  final int? state;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? partsid;
  @override
  final DateTime? dateorder;
  @override
  @JsonKey()
  final String? malfunction;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey(fromJson: boolFromString, toJson: boolToString)
  final bool? workisdone;
  @override
  final DateTime? datework;

  @override
  String toString() {
    return 'OrderModel(id: $id, clientid: $clientid, equipmentid: $equipmentid, name1: $name1, name2: $name2, view: $view, plot: $plot, state: $state, description: $description, partsid: $partsid, dateorder: $dateorder, malfunction: $malfunction, image: $image, workisdone: $workisdone, datework: $datework)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientid, clientid) ||
                other.clientid == clientid) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            (identical(other.name1, name1) || other.name1 == name1) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.plot, plot) || other.plot == plot) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.partsid, partsid) || other.partsid == partsid) &&
            (identical(other.dateorder, dateorder) ||
                other.dateorder == dateorder) &&
            (identical(other.malfunction, malfunction) ||
                other.malfunction == malfunction) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.workisdone, workisdone) ||
                other.workisdone == workisdone) &&
            (identical(other.datework, datework) ||
                other.datework == datework));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientid,
      equipmentid,
      name1,
      name2,
      view,
      plot,
      state,
      description,
      partsid,
      dateorder,
      malfunction,
      image,
      workisdone,
      datework);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {final String? id,
      final String? clientid,
      final String? equipmentid,
      final String? name1,
      final String? name2,
      final String? view,
      final String? plot,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) final int? state,
      final String? description,
      final String? partsid,
      final DateTime? dateorder,
      final String? malfunction,
      final String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      final bool? workisdone,
      final DateTime? datework}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get clientid;
  @override
  String? get equipmentid;
  @override
  String? get name1;
  @override
  String? get name2;
  @override
  String? get view;
  @override
  String? get plot;
  @override
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  int? get state;
  @override
  String? get description;
  @override
  String? get partsid;
  @override
  DateTime? get dateorder;
  @override
  String? get malfunction;
  @override
  String? get image;
  @override
  @JsonKey(fromJson: boolFromString, toJson: boolToString)
  bool? get workisdone;
  @override
  DateTime? get datework;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
