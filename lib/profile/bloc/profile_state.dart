part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _InitialState;

  const factory ProfileState.loading() = _LoadingState;

  const factory ProfileState.error({required String error}) = _ErrorState;

  const factory ProfileState.ok() = _OkState;

  const factory ProfileState.noData() = _noDataState;

  const factory ProfileState.profileScreen() = _ProfileScreen;

  const factory ProfileState.loginScreen() = _LoginScreen;

  const factory ProfileState.mainScreen() = _MainScreen;

  const factory ProfileState.userDataScreen() = _UserDataScreen;

  const factory ProfileState.data({
    required ProfileModel? profile,
  }) = _DataState;
}
