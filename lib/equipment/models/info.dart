import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';

part 'info.g.dart';


@freezed
class InfoModel with _$InfoModel {
  const factory InfoModel({
    @Default('') String? id,
    @Default('') String? equipmentid,
    @Default('') String? info,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, Object?> json) => _$InfoModelFromJson(json);
}