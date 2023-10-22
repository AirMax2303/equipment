import 'package:freezed_annotation/freezed_annotation.dart';
import '/bloc/datetimeserializer.dart';

part 'order.freezed.dart';

part 'order.g.dart';


@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @Default('') String? id,
    @Default('') String? clientid,
    @Default('') String? equipmentid,
    @Default('') String? name1,
    @Default('') String? name2,
    @Default('') String? view,
    @Default('') String? plot,
    @JsonKey(fromJson: stringToInt, toJson: stringFromInt) @Default(0) int? state,
    @Default('') String? description,
    @Default('') String? partsid,
    DateTime? dateorder,
    @Default('') String? malfunction,
    @Default('') String? image,
    @JsonKey(fromJson: boolFromString, toJson: boolToString) @Default(false) bool? workisdone,
    DateTime? datework,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) => _$OrderModelFromJson(json);
}

