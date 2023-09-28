part of 'works_bloc.dart';

@freezed
class WorksState with _$WorksState {
  const factory WorksState.initial() = _InitialState;

  const factory WorksState.loading() = _LoadingState;

  const factory WorksState.noData() = _noDataState;

  const factory WorksState.gotoPPR5() = _gotoPPR5State;

  const factory WorksState.gotoWorkDay({required DateTime date,}) = _gotoWorkDayState;

  const factory WorksState.data({
    required DateTime date,
    required List<WorkModel> list
  }) = _DataState;
}
