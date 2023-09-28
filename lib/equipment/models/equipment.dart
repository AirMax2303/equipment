import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';

part 'equipment.g.dart';


@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    @Default('') String? id,
    @Default('') String? clientid,
    @Default('') String? view,
    @Default('') String? plot,
    @Default('') String? name1,
    @Default('') String? name2,
    @Default('') String? image,
    @Default(1) int? status,
    @Default(false) bool? proftype,
    @Default(0) int? valueproftype
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object?> json) => _$EquipmentModelFromJson(json);
}

@freezed
class EquipmentList with _$EquipmentList {
  const factory EquipmentList({
    List<EquipmentModel>? list,
  }) = _EquipmentList;

  factory EquipmentList.fromJson(Map<String, dynamic> json) => _$EquipmentListFromJson(json);
}

