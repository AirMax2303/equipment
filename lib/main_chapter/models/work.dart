import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';

part 'work.g.dart';

@freezed
class WorkModel with _$WorkModel {
  const factory WorkModel(
      {@Default('') String? id,
      @Default('') String? equipmentid,
      @Default('') String? clientid,
      @Default('') String? name1,
      @Default('') String? name2,
      @Default('') String? plot,
      @Default(0) int? status,
      DateTime? workdate,
      @Default('') String? name,
      @Default(true) bool? worktype,
      @Default(false) bool? proftype,
      @Default(false) bool? priority,
      @Default('') String? workhour,
      @Default(false) bool? workisdone,
      @Default('') String? eqimage,
      @Default('') String? wkimage,
      @Default(true) bool? show}) = _WorkModel;

  factory WorkModel.fromJson(Map<String, Object?> json) => _$WorkModelFromJson(json);
}

@freezed
class WordOrder with _$WordOrder {
    const factory WordOrder({
        List<WorkModel>? list,
    }) = _WordOrder;

    factory WordOrder.fromJson(Map<String, dynamic> json) => _$WordOrderFromJson(json);
}
