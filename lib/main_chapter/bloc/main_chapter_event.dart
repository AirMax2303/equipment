part of 'main_chapter_bloc.dart';

@freezed
class MainChapterEvent with _$MainChapterEvent {
  const factory MainChapterEvent.initial(DateTime date) = _InitialEvent;
  const factory MainChapterEvent.changeDate(WorkModel work, DateTime newDate) = _ChangeDateEvent;
  const factory MainChapterEvent.gotoWorkDay(DateTime date) = _GotoWorkDayEvent;
}
