import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../../other/other.dart';
import '../models/equipment.dart';
import '../models/info.dart';
import '../repository/equipment_repository.dart';

part 'equipment_bloc.freezed.dart';

part 'equipment_event.dart';

part 'equipment_state.dart';

class EquipmentBloc extends Bloc<EquipmentEvent, EquipmentState> {
  EquipmentRepository repo;

  EquipmentBloc(this.repo) : super(const EquipmentState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SetFilterEvent>(_onSetFilterEvent);
    on<_GetListEvent>(_onGetListEvent);
    on<_GotoAddScreenEvent>(_onGotoAddScreenEvent);
    on<_GotoDetailScreenEvent>(_onGotoDetailScreenEvent);
    on<_GotoEditScreenEvent>(_onGotoEditScreenEvent);
    on<_GotoPprScreenEvent>(_onGotoPprScreenEvent);
    on<_GotoCalendarScreenEvent>(_onGotoCalendarScreenEvent);
    on<_AddEquipmentEvent>(_onAddEquipmentEvent);
    on<_UpdateEquipmentEvent>(_onUpdateEquipmentEvent);
    on<_DeleteEquipmentEvent>(_onDeleteEquipmentEvent);
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const _LoadingState());
    await repo.getEquipmentList().then((value) async {
      emit(_DataState(list: value));
    });
  }

  void _onSetFilterEvent(
    _SetFilterEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const _LoadingState());
    repo.setFilter(event.filter);
    await repo.getEquipmentList().then((value) async {
      emit(const EquipmentState.ok());
      emit(_DataState(list: value));
    });
  }

  void _onGetListEvent(
    _GetListEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const _LoadingState());
    await repo.getEquipmentList().then((value) async {
      emit(_DataState(list: value));
    });
  }

  void _onGotoAddScreenEvent(
    _GotoAddScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const EquipmentState.gotoAddScreen());
  }

  void _onGotoDetailScreenEvent(
    _GotoDetailScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    final equipment = await repo.getEquipment(event.equipmentid);
    emit(EquipmentState.gotoDetailScreen(equipmentData: equipment));
  }

  void _onGotoEditScreenEvent(
    _GotoEditScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoEditScreen(equipmentData: event.equipment));
  }

  void _onGotoPprScreenEvent(
    _GotoPprScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoPprScreen(pprType: event.pprType, equipmentData: event.equipment));
  }

  void _onGotoCalendarScreenEvent(
      _GotoCalendarScreenEvent event,
      Emitter<EquipmentState> emit,
      ) async {
    emit(EquipmentState.gotoCalendarScreen(equipmentData: event.equipment));
  }

  void _onAddEquipmentEvent(
    _AddEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    repo.addEquipment(event.equipment);
    emit(const EquipmentState.okAdd());
  }

  void _onUpdateEquipmentEvent(
    _UpdateEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const _LoadingState());
    await repo.updateEquipment(event.equipment);
    emit(const EquipmentState.okUpdate());
  }

  void _onDeleteEquipmentEvent(
    _DeleteEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(const _LoadingState());
    await repo.deleteEquipment(event.equipment);
    emit(const EquipmentState.okDelete());
  }
}
