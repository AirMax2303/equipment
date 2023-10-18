import 'package:freezed_annotation/freezed_annotation.dart';

import '../bloc/datetimeserializer.dart';

part 'models.freezed.dart';

part 'models.g.dart';

@freezed
class SqlResult with _$SqlResult {
  const factory SqlResult({
    int? fieldCount,
    int? affectedRows,
    int? insertId,
    int? serverStatus,
    int? warningCount,
    String? message,
//    @JsonKey(fromJson: boolFromString)
    bool? protocol41,
    int? changedRows,
  }) = _SqlResult;

  factory SqlResult.fromJson(Map<String, Object?> json) => _$SqlResultFromJson(json);
}

@freezed
class IdModel with _$IdModel {
  factory IdModel({@Default('') String? id}) = _IdModel;

  factory IdModel.fromJson(Map<String, Object?> json) => _$IdModelFromJson(json);
}

@freezed
class DateModel with _$DateModel {
  factory DateModel({
    DateTime? workdate,
  }) = _DateModel;

  factory DateModel.fromJson(Map<String, Object?> json) => _$DateModelFromJson(json);
}

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel(
      {@Default('') String? id,
      @Default('') String? clientid,
      @Default('') String? name1,
      @Default('') String? name2,
      @Default('') String? viewid,
      @Default('') String? view,
      @Default('') String? plotid,
      @Default('') String? plot,
      @Default('') String? image,
      @JsonKey(toJson: stringFromInt) @Default(0) int? status,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) @Default(false) bool? proftype,
      @JsonKey(toJson: stringFromInt) @Default(0) int? valuex}) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object?> json) => _$EquipmentModelFromJson(json);
}

@freezed
class PprModel with _$PprModel {
  factory PprModel(
      {@Default('') String? id,
      @Default('') String? equipmentid,
      @Default('') String? partsid,
      @JsonKey(toJson: stringFromInt) @Default(0) int? pprtype,
      @Default('') String? name,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) @Default(false) bool? priority,
      @JsonKey(fromJson: boolFromInt, toJson: boolToString) @Default(false) bool? proftype,
      @JsonKey(toJson: stringFromInt) @Default(0) int? repeatcount,
      @JsonKey(toJson: stringFromInt) @Default(1) int? intervalcount,
      DateTime? begindate,
      @JsonKey(toJson: stringFromInt) @Default(1) int? beginint,
      @Default('') String? image}) = _PprModel;

  factory PprModel.fromJson(Map<String, Object?> json) => _$PprModelFromJson(json);
}

@freezed
class WorkModel with _$WorkModel {
  factory WorkModel({
    @Default('') String? id,
    @Default('') String? pprid,
    @Default('') String? equipmentid,
    @Default('') String? partsid,
    @Default('') String? name,
    @JsonKey(toJson: stringFromInt) @Default(0) int? worktype,
    @JsonKey(fromJson: boolFromInt, toJson: boolToString) @Default(false) bool? priority,
    @Default('') String? image,
    DateTime? workdate,
    @JsonKey(fromJson: boolFromInt, toJson: boolToString) @Default(false) bool? workisdone,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, Object?> json) => _$WorkModelFromJson(json);
}

@freezed
class ProfTypeModel with _$ProfTypeModel {
  factory ProfTypeModel({
    @Default('') String? id,
    @Default('') String? equipmentid,
    DateTime? workdate,
    @JsonKey(toJson: stringFromInt) @Default(0) int? valuex
  }) = _ProfTypeModel;

  factory ProfTypeModel.fromJson(Map<String, Object?> json) => _$ProfTypeModelFromJson(json);
}