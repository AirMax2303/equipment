part of 'main_chapter_bloc.dart';

@freezed
class MainChapterState with _$MainChapterState {
  const factory MainChapterState.initial() = _InitialState;

  const factory MainChapterState.loading() = _LoadingState;

  const factory MainChapterState.error({required String error}) = _ErrorState;

  const factory MainChapterState.noData() = _noDataState;

  const factory MainChapterState.dateChanged({required DateTime date}) = _DateChangedState;

  const factory MainChapterState.gotoWorkDay({required DateTime date,}) = _gotoWorkDayState;

  const factory MainChapterState.gotoUserData() = _gotoUserDataState;

  const factory MainChapterState.data({
    required DateTime date,
    required List<MainChapterData> list
  }) = _DataState;
}
