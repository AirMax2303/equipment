import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';

part 'work.g.dart';


@freezed
class WorkModel with _$WorkModel {
  const factory WorkModel({
    @Default('') String? id,
    @Default('') String? date,
    @Default('') String? type,
    @Default('') String? name1,
    @Default('') String? name2,
    @Default('') String? work,
    @Default('') String? status,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, Object?> json) => _$WorkModelFromJson(json);
}

