import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';


@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @Default('') String? id,
    @Default('') String? name,
    @Default('') String? email,
    @Default('') String? phone,
    @Default('') String? password,
    @Default('Начальный') String? tarif
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json) => _$ProfileModelFromJson(json);
}

