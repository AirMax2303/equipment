import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/profile.dart';
import '../service/profile_service.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService service;

  ProfileBloc(this.service) : super(const ProfileState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SaveProfileEvent>(_onSaveEvent);
    on<_GotoProfileScreenEvent>(_onGotoProfileScreenEvent);
    on<_GotoLoginScreenEvent>(_onGotoLoginScreenEvent);
    on<_GotoMainScreenlEvent>(_onGotoMainScreenEvent);
    on<_GotoUserDataScreenEvent>(_onGotoUserDataScreenEvent);
    on<_SaveUserDatalEvent>(_onSaveUserDatalEvent);
    on<_SavePasswordEvent>(_onSavePasswordEvent);
    on<_SaveTarifEvent>(_onSaveTarifEvent);
  }

  void _onGotoProfileScreenEvent(
    _GotoProfileScreenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _ProfileScreen());
  }

  void _onGotoLoginScreenEvent(
    _GotoLoginScreenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _LoginScreen());
  }

  void _onGotoMainScreenEvent(
    _GotoMainScreenlEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _MainScreen());
  }

  void _onGotoUserDataScreenEvent(
    _GotoUserDataScreenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _UserDataScreen());
  }

  void _onSaveUserDatalEvent(
    _SaveUserDatalEvent event,
    Emitter<ProfileState> emit,
  ) async {
    service.saveUserData(event.email, event.phone);
  }

  void _onSavePasswordEvent(
    _SavePasswordEvent event,
    Emitter<ProfileState> emit,
  ) async {
    service.savePassword(event.password);
  }

  void _onSaveTarifEvent(
      _SaveTarifEvent event,
      Emitter<ProfileState> emit,
      ) async {
    service.saveTarif(event.tarif);
  }

  void _onSaveEvent(
    _SaveProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    service.saveProfile(event.name, event.email, event.phone, event.password);
    service.sendMail(event.email, 'Вы успешно зарегистрировались', 'TechNote');
//    emit(const _LoginScreen());
    emit(const _OkState());
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _LoadingState());
    await service.getProfile(event.key).then(
      (value) async {
        if (value?.id == '') {
          emit(const _noDataState());
        } else {
          emit(
            const _MainScreen(),
          );
        }
      },
    );
  }
}
