part of 'works_day_bloc.dart';

@freezed
class WorkDayEvent with _$WorkDayEvent {
  const factory WorkDayEvent.initial() = _InitialEvent;
  const factory WorkDayEvent.getList(DateTime date) = _GetListEvent;
  const factory WorkDayEvent.completeWork(WorkModel work) = _CompleteWorkEvent;
  const factory WorkDayEvent.saveWorkTime(WorkModel work, int value) = _SaveWorkTimeEvent;
  const factory WorkDayEvent.changeDate(WorkModel work, DateTime newDate) = _ChangeDateEvent;
}