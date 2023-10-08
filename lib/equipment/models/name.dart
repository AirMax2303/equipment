import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';

part 'name.g.dart';


@freezed
class NameModel with _$NameModel {
  const factory NameModel({
    @Default('') String? id,
    @Default('') String? name,
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, Object?> json) => _$NameModelFromJson(json);
}