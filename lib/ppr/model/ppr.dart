import 'package:freezed_annotation/freezed_annotation.dart';

part 'ppr.freezed.dart';

part 'ppr.g.dart';


@freezed
class PprModel with _$PprModel {
  factory PprModel({
    @Default('') String? id,
    @Default('') String? equipmentid,
    @Default('') String? name,
    @Default(false) bool? priority,
    @Default(false) bool? proftype,
    @Default(0) int? repeat,
    @Default(1) int? interval,
    DateTime? begindate,
    @Default(1) int? beginint,
    @Default('') String? image
  }) = _PprModel;

  factory PprModel.fromJson(Map<String, Object?> json) => _$PprModelFromJson(json);
}

@freezed
class PprList with _$PprList {
  const factory PprList({
    List<PprModel>? list,
  }) = _PprList;

  factory PprList.fromJson(Map<String, dynamic> json) => _$PprListFromJson(json);
}

