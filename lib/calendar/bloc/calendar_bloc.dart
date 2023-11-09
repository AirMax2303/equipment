import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../model/calendar_model.dart';
import '../repository/calendar_repository.dart';

part 'calendar_bloc.freezed.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarRepositoryAbstract repo;
  bool? histiry;

  CalendarBloc(this.repo, this.histiry) : super(const CalendarState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_GetListEvent>(_onGetListEvent);
    on<_GetEquipmentListEvent>(_onGetEquipmentListEvent);
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(const _LoadingState());
    final result = await repo.initial(histiry!, DateTime.now());
    result.fold(
      (l) => emit(_ErrorState(error: l.message)),
      (r) => emit(_DataState(date: DateTime.now(), list: r)),
    );
  }

  void _onGetListEvent(
    _GetListEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(const _LoadingState());
    final result = await repo.getCalendarList(histiry!, event.date);
    result.fold(
      (l) => emit(_ErrorState(error: l.message)),
      (r) => emit(_DataState(date: DateTime.now(), list: r)),
    );
  }

  void _onGetEquipmentListEvent(
    _GetEquipmentListEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(const _LoadingState());
    final result = await repo.getCalendarEquipmentList(histiry!, event.equipment.id!);
    result.fold(
      (l) => emit(_ErrorState(error: l.message)),
      (r) => emit(_DataState(date: DateTime.now(), list: r)),
    );
  }
}
