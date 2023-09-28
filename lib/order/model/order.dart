import 'package:freezed_annotation/freezed_annotation.dart';
import '/bloc/datetimeserializer.dart';

part 'order.freezed.dart';

part 'order.g.dart';


@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @Default('') String? id,
    @Default('') String? equipmentid,
    @Default('') String? clientid,
    @Default('') String? name1,
    @Default('') String? name2,
    @JsonKey(fromJson: stringToInt, toJson: stringFromInt) @Default(0) int? state,
    @Default('') String? description,
    @Default('') String? partsid,
    DateTime? dateorder,
    @Default('') String? malfunction,
    @Default('') String? image,
    @JsonKey(fromJson: boolFromString, toJson: boolToString) @Default(false) bool? workisdone,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) => _$OrderModelFromJson(json);
}

@freezed
class ListOrder with _$ListOrder {
  const factory ListOrder({
    List<OrderModel>? list,
  }) = _ListOrder;

  factory ListOrder.fromJson(Map<String, dynamic> json) => _$ListOrderFromJson(json);
}



//    @DateTimeSerializer DateTime? dateorder,
//@JsonKey(fromJson: getDateTimeFromTimestamp, toJson: timeStampToJson) @Default(dateTimeNow()) DateTime dateorder,