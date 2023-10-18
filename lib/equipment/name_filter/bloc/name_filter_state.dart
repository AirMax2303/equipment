part of 'name_filter_bloc.dart';

@freezed
class NameFilterState with _$NameFilterState {

  const factory NameFilterState.initial() = _InitialState;

  const factory NameFilterState.loading() = _LoadingState;

  const factory NameFilterState.error({
    required String error
  }) = _ErrorState;

  const factory NameFilterState.data({
    required List<NameModel>? list
  }) = _DataState;
}