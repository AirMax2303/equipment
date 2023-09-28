part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.initial() = _InitialEvent;
  const factory CalendarEvent.getList(DateTime date) = _GetListEvent;
}