part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial(String key) = _InitialEvent;

  const factory ProfileEvent.gotoProfileScreen() = _GotoProfileScreenEvent;

  const factory ProfileEvent.gotoLoginScreen() = _GotoLoginScreenEvent;

  const factory ProfileEvent.gotoUserDataScreen() = _GotoUserDataScreenEvent;

  const factory ProfileEvent.saveUserData({
    required String email,
    required String phone,
  }) = _SaveUserDatalEvent;

  const factory ProfileEvent.savePassword({required String password}) = _SavePasswordEvent;

  const factory ProfileEvent.saveTarif({required String tarif}) = _SaveTarifEvent;

  const factory ProfileEvent.gotoMainScreen() = _GotoMainScreenlEvent;

  const factory ProfileEvent.saveProfile({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) = _SaveProfileEvent;
}
