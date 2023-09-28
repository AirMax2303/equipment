part of 'works_bloc.dart';

@freezed
class WorksEvent with _$WorksEvent {
  const factory WorksEvent.initial(DateTime date) = _InitialEvent;
  const factory WorksEvent.gotoPPR5() = _GotoPPR5Event;
  const factory WorksEvent.gotoWorkDay(DateTime date) = _GotoWorkDayEvent;
}
