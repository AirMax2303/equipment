part of 'ppr_bloc.dart';

@freezed
class PprState with _$PprState {

  const factory PprState.initial(String equipmentid) = _InitialState;

  const factory PprState.addScreen(String equipmentid) = _AddScreenState;

  const factory PprState.editScreen(PprModel ppr) = _EditScreenState;

  const factory PprState.ppr3Screen(String equipmentid) = _Ppr3ScreenState;

  const factory PprState.back() = _BackState;

  const factory PprState.loading() = _LoadingState;

  const factory PprState.ok({required PprType pprType, required PprModel ppr}) = _OkState;

  const factory PprState.okDelete({required PprType pprType, required PprModel ppr}) = _OkDeleteState;

  const factory PprState.data({
    required PprType? pprType,
    required String? equipmentid,
    required List<PprModel>? list
  }) = _DataState;
}
