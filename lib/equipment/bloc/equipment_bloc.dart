import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/equipment.dart';
import '../models/info.dart';
import '../models/name.dart';
import '../service/equipment_service.dart';

part 'equipment_bloc.freezed.dart';

part 'equipment_event.dart';

part 'equipment_state.dart';

class EquipmentBloc extends Bloc<EquipmentEvent, EquipmentState> {
  EquipmentService service = EquipmentService();

  EquipmentBloc(this.service) : super(const EquipmentState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SetFilterEvent>(_onSetFilterEvent);
    on<_GetListEvent>(_onGetListEvent);
    on<_GotoAddScreenEvent>(_onGotoAddScreenEvent);
    on<_GotoDetailScreenEvent>(_onGotoDetailScreenEvent);
    on<_GotoEditScreenEvent>(_onGotoEditScreenEvent);
    on<_GotoPprScreenEvent>(_onGotoPprScreenEvent);
    on<_AddEquipmentEvent>(_onAddEquipmentEvent);
    on<_AddViewEvent>(_onAddViewEvent);
    on<_AddViewInEditEvent>(_onAddViewInEditEvent);
    on<_AddPlotEvent>(_onAddPlotEvent);
    on<_AddPlotInEditEvent>(_onAddPlotInEditEvent);
    on<_EditEquipmentEvent>(_onEditEquipmentEvent);
    on<_DeleteEquipmentEvent>(_onDeleteEquipmentEvent);
  }

  void _onInitialEvent(
    _InitialEvent event,
      Emitter<EquipmentState> emit,
  ) async {
    await service.getEquipmentList().then((value) async {
      emit(_DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()));
    });
  }

  void _onSetFilterEvent(
    _SetFilterEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.setFilter(event.filter);
    await service.getFilteredList().then((value) async {
      emit(
        _DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()),
      );
    });
  }

  void _onGetListEvent(
    _GetListEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    await service.getFilteredList().then((value) async {
      emit(
        _DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()),
      );
    });
  }

  void _onGotoAddScreenEvent(
    _GotoAddScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoAddScreen(viewList: await service.getViewList(), plotList: await service.getPlotList()));
  }

  void _onGotoDetailScreenEvent(
    _GotoDetailScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoDetailScreen(
      equipment: event.equipment,
    ));
  }

  void _onGotoEditScreenEvent(
    _GotoEditScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoEditScreen(
        equipment: event.equipment,
        viewList: await service.getViewList(),
        plotList: await service.getPlotList(),
        infoList: await service.getInfoList(event.equipment.id!)));
  }

  void _onGotoPprScreenEvent(
    _GotoPprScreenEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    emit(EquipmentState.gotoPprScreen(equipment: event.equipment));
  }

  void _onAddEquipmentEvent(
    _AddEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.addEquipment(event.equipment);
    emit(const _OkState());
    await service.getFilteredList().then((value) async {
      emit(
        _DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()),
      );
    });
  }

  void _onAddViewEvent(
    _AddViewEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.addViw(event.view);
    emit(EquipmentState.gotoAddScreen(viewList: await service.getViewList(), plotList: await service.getPlotList()));
  }

  void _onAddViewInEditEvent(
    _AddViewInEditEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.addViw(event.view);
    emit(EquipmentState.gotoEditScreen(
        equipment: event.equipment,
        viewList: await service.getViewList(),
        plotList: await service.getPlotList(),
        infoList: await service.getInfoList(event.equipment.id!)));
  }

  void _onAddPlotEvent(
    _AddPlotEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.addPlot(event.plot);
    emit(EquipmentState.gotoAddScreen(viewList: await service.getViewList(), plotList: await service.getPlotList()));
  }

  void _onAddPlotInEditEvent(
    _AddPlotInEditEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.addPlot(event.plot);
    emit(EquipmentState.gotoEditScreen(
        equipment: event.equipment,
        viewList: await service.getViewList(),
        plotList: await service.getPlotList(),
        infoList: await service.getInfoList(event.equipment.id!)));
  }

  void _onEditEquipmentEvent(
    _EditEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.editEquipment(event.equipment);
    emit(const _OkState());
    await service.getFilteredList().then((value) async {
      emit(
        _DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()),
      );
    });
  }

  void _onDeleteEquipmentEvent(
    _DeleteEquipmentEvent event,
    Emitter<EquipmentState> emit,
  ) async {
    service.deleteEquipment(event.equipment);
    emit(const _OkState());
    await service.getFilteredList().then((value) async {
      emit(
        _DataState(list: value, viewList: await service.getViewList(), plotList: await service.getPlotList()),
      );
    });
  }
}
