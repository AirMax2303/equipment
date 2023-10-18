import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../model/calendar_model.dart';
import '../service/calendar_service.dart';

part 'calendar_bloc.freezed.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarService service;
  bool? histiry;

  CalendarBloc(this.service, this.histiry) : super(const CalendarState.initial()) {
    on<_GetListEvent>(_onGetListEvent);
    on<_GetEquipmentListEvent>(_onGetEquipmentListEvent);
  }

  void _onGetListEvent(
    _GetListEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(const _OkState());
    await service.getCalendarList(histiry!, event.date).then((value) async {
      emit(_DataState(
        date: event.date,
        list: value,
      ));
    });
  }

  void _onGetEquipmentListEvent(
      _GetEquipmentListEvent event,
      Emitter<CalendarState> emit,
      ) async {
    emit(const _OkState());
    await service.getCalendarEquipmentList(histiry!, event.equipment.id!).then((value) async {
      emit(_EquipmentDataState(
        equipment: event.equipment,
        list: value,
      ));
    });
  }
}
