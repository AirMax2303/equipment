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
  String? get equipmentid => throw _privateConstructorUsedError;
  String? get clientid => throw _privateConstructorUsedError;
  String? get name1 => throw _privateConstructorUsedError;
  String? get name2 => throw _privateConstructorUsedError;
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  int? get state => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get partsid =>
      throw _privateConstructorUsedError; //    @JsonKey(fromJson: getDateTimeFromTimestamp, toJson: timeStampToJson) DateTime? dateorder,
  DateTime? get dateorder => throw _privateConstructorUsedError;
  String? get malfunction => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(fromJson: boolFromString, toJson: boolToString)
  bool? get workisdone => throw _privateConstructorUsedError;

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
      String? equipmentid,
      String? clientid,
      String? name1,
      String? name2,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) int? state,
      String? description,
      String? partsid,
      DateTime? dateorder,
      String? malfunction,
      String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      bool? workisdone});
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
    Object? equipmentid = freezed,
    Object? clientid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? state = freezed,
    Object? description = freezed,
    Object? partsid = freezed,
    Object? dateorder = freezed,
    Object? malfunction = freezed,
    Object? image = freezed,
    Object? workisdone = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? equipmentid,
      String? clientid,
      String? name1,
      String? name2,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) int? state,
      String? description,
      String? partsid,
      DateTime? dateorder,
      String? malfunction,
      String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      bool? workisdone});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? equipmentid = freezed,
    Object? clientid = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? state = freezed,
    Object? description = freezed,
    Object? partsid = freezed,
    Object? dateorder = freezed,
    Object? malfunction = freezed,
    Object? image = freezed,
    Object? workisdone = freezed,
  }) {
    return _then(_$_OrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {this.id = '',
      this.equipmentid = '',
      this.clientid = '',
      this.name1 = '',
      this.name2 = '',
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) this.state = 0,
      this.description = '',
      this.partsid = '',
      this.dateorder,
      this.malfunction = '',
      this.image = '',
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      this.workisdone = false});

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? equipmentid;
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
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  final int? state;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? partsid;
//    @JsonKey(fromJson: getDateTimeFromTimestamp, toJson: timeStampToJson) DateTime? dateorder,
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
  String toString() {
    return 'OrderModel(id: $id, equipmentid: $equipmentid, clientid: $clientid, name1: $name1, name2: $name2, state: $state, description: $description, partsid: $partsid, dateorder: $dateorder, malfunction: $malfunction, image: $image, workisdone: $workisdone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            (identical(other.clientid, clientid) ||
                other.clientid == clientid) &&
            (identical(other.name1, name1) || other.name1 == name1) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
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
                other.workisdone == workisdone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      equipmentid,
      clientid,
      name1,
      name2,
      state,
      description,
      partsid,
      dateorder,
      malfunction,
      image,
      workisdone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {final String? id,
      final String? equipmentid,
      final String? clientid,
      final String? name1,
      final String? name2,
      @JsonKey(fromJson: stringToInt, toJson: stringFromInt) final int? state,
      final String? description,
      final String? partsid,
      final DateTime? dateorder,
      final String? malfunction,
      final String? image,
      @JsonKey(fromJson: boolFromString, toJson: boolToString)
      final bool? workisdone}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get id;
  @override
  String? get equipmentid;
  @override
  String? get clientid;
  @override
  String? get name1;
  @override
  String? get name2;
  @override
  @JsonKey(fromJson: stringToInt, toJson: stringFromInt)
  int? get state;
  @override
  String? get description;
  @override
  String? get partsid;
  @override //    @JsonKey(fromJson: getDateTimeFromTimestamp, toJson: timeStampToJson) DateTime? dateorder,
  DateTime? get dateorder;
  @override
  String? get malfunction;
  @override
  String? get image;
  @override
  @JsonKey(fromJson: boolFromString, toJson: boolToString)
  bool? get workisdone;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ListOrder _$ListOrderFromJson(Map<String, dynamic> json) {
  return _ListOrder.fromJson(json);
}

/// @nodoc
mixin _$ListOrder {
  List<OrderModel>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOrderCopyWith<ListOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOrderCopyWith<$Res> {
  factory $ListOrderCopyWith(ListOrder value, $Res Function(ListOrder) then) =
      _$ListOrderCopyWithImpl<$Res, ListOrder>;
  @useResult
  $Res call({List<OrderModel>? list});
}

/// @nodoc
class _$ListOrderCopyWithImpl<$Res, $Val extends ListOrder>
    implements $ListOrderCopyWith<$Res> {
  _$ListOrderCopyWithImpl(this._value, this._then);

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
              as List<OrderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListOrderCopyWith<$Res> implements $ListOrderCopyWith<$Res> {
  factory _$$_ListOrderCopyWith(
          _$_ListOrder value, $Res Function(_$_ListOrder) then) =
      __$$_ListOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderModel>? list});
}

/// @nodoc
class __$$_ListOrderCopyWithImpl<$Res>
    extends _$ListOrderCopyWithImpl<$Res, _$_ListOrder>
    implements _$$_ListOrderCopyWith<$Res> {
  __$$_ListOrderCopyWithImpl(
      _$_ListOrder _value, $Res Function(_$_ListOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_ListOrder(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOrder implements _ListOrder {
  const _$_ListOrder({final List<OrderModel>? list}) : _list = list;

  factory _$_ListOrder.fromJson(Map<String, dynamic> json) =>
      _$$_ListOrderFromJson(json);

  final List<OrderModel>? _list;
  @override
  List<OrderModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListOrder(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListOrder &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListOrderCopyWith<_$_ListOrder> get copyWith =>
      __$$_ListOrderCopyWithImpl<_$_ListOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOrderToJson(
      this,
    );
  }
}

abstract class _ListOrder implements ListOrder {
  const factory _ListOrder({final List<OrderModel>? list}) = _$_ListOrder;

  factory _ListOrder.fromJson(Map<String, dynamic> json) =
      _$_ListOrder.fromJson;

  @override
  List<OrderModel>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_ListOrderCopyWith<_$_ListOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
