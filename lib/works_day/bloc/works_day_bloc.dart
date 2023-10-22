import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../calendar/model/calendar_model.dart';
import '../../models/models.dart';
import '../repository/work_day_repository.dart';

part 'works_day_bloc.freezed.dart';

part 'works_day_event.dart';

part 'works_day_state.dart';

class WorkDayBloc extends Bloc<WorkDayEvent, WorkDayState> {
  WorkDayRepository repo;
  bool? histiry;

  WorkDayBloc(this.repo, this.histiry) : super(const WorkDayState.initial()) {
    on<_GetListEvent>(_onGetListEvent);
    on<_CompleteWorkEvent>(_onCompleteWorkEvent);
    on<_CompleteWorkTimeEvent>(_onCompleteWorkTimeEvent);
    on<_SaveWorkTimeEvent>(_onSaveWorkTimeEvent);
    on<_ChangeDateEvent>(_onChangeDateEvent);
  }

  void _onGetListEvent(_GetListEvent event, Emitter<WorkDayState> emit) async {
    await repo.getList(histiry!, event.date).then((value) async {
      emit(_DataState(date: event.date, list: value));
    });
  }

  void _onCompleteWorkEvent(_CompleteWorkEvent event, Emitter<WorkDayState> emit) async {
    await repo.completeWork(event.work);
    emit(const _WorkCompletedStete());
  }

  void _onCompleteWorkTimeEvent(_CompleteWorkTimeEvent event, Emitter<WorkDayState> emit) async {
    await repo.completeWorkTime(event.work, event.value);
    emit(const _WorkCompletedStete());
  }

  void _onSaveWorkTimeEvent(_SaveWorkTimeEvent event, Emitter<WorkDayState> emit) async {
    await repo.saveWorkTime(event.work, event.value);
    emit(const _WorkTimeSavedStete());
  }

  void _onChangeDateEvent(_ChangeDateEvent event, Emitter<WorkDayState> emit) async {
    emit(const WorkDayState.loading());
    await repo.changeWorkDate(event.work, event.newDate);
    emit(const _DateChangedState());
  }

}
