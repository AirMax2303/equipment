part of 'ppr_bloc.dart';

@freezed
class PprState with _$PprState {

  const factory PprState.initial(String equipmentid) = _InitialState;

  const factory PprState.addScreen(String equipmentid) = _AddScreenState;

  const factory PprState.loading() = _LoadingState;

  const factory PprState.okAdd(String equipmentid) = _OkAddState;

  const factory PprState.data({
    required String? equipmentid,
    required List<PprModel>? list
  }) = _DataState;
}
