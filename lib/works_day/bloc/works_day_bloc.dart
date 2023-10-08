import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../calendar/model/calendar_model.dart';
import '../../models/models.dart';
import '../service/work_day_service.dart';

part 'works_day_bloc.freezed.dart';

part 'works_day_event.dart';

part 'works_day_state.dart';

class WorkDayBloc extends Bloc<WorkDayEvent, WorkDayState> {
  WorkDayService service;
  bool? histiry;

  WorkDayBloc(this.service, this.histiry) : super(const WorkDayState.initial()) {
    on<_GetListEvent>(_onGetListEvent);
    on<_CompleteWorkEvent>(_onCompleteWorkEvent);
    on<_SaveWorkTimeEvent>(_onSaveWorkTimeEvent);
    on<_ChangeDateEvent>(_onChangeDateEvent);
  }

  void _onGetListEvent(_GetListEvent event, Emitter<WorkDayState> emit) async {
    await service.getList(histiry!, event.date).then((value) async {
      emit(_DataState(date: event.date, list: value));
    });
  }

  void _onCompleteWorkEvent(_CompleteWorkEvent event, Emitter<WorkDayState> emit) async {
    await service.completeWork(event.work);
    emit(const _WorkCompletedStete());
  }

  void _onSaveWorkTimeEvent(_SaveWorkTimeEvent event, Emitter<WorkDayState> emit) async {
    await service.saveWorkTime(event.work, event.value);
    emit(const _WorkTimeSavedStete());
  }

  void _onChangeDateEvent(_ChangeDateEvent event, Emitter<WorkDayState> emit) async {
    emit(const WorkDayState.loading());
    await service.changeWorkDate(event.work, event.newDate);
    emit(const _DateChangedState());
  }

}
