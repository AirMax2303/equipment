part of 'works_day_bloc.dart';

@freezed
class WorkDayState with _$WorkDayState {

  const factory WorkDayState.initial() = _InitialState;

  const factory WorkDayState.loading() = _LoadingState;

  const factory WorkDayState.error({
    required String error
  }) = _ErrorState;

  const factory WorkDayState.workCompleted() = _WorkCompletedStete;

  const factory WorkDayState.workTimeSaved() = _WorkTimeSavedStete;

  const factory WorkDayState.dateChanged() = _DateChangedState;

  const factory WorkDayState.data({
    required DateTime date,
    required List<CalendarData>? list
  }) = _DataState;

}  