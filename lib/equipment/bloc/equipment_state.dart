part of 'equipment_bloc.dart';

@freezed
class EquipmentState with _$EquipmentState {
  const factory EquipmentState.initial() = _InitialState;

  const factory EquipmentState.loading() = _LoadingState;

  const factory EquipmentState.ok() = _OkState;

  const factory EquipmentState.okUpdate() = _OkUpdateState;

  const factory EquipmentState.okDelete() = _OkDeleteState;

  const factory EquipmentState.error({
    required String error,
  }) = _ErrorState;

  const factory EquipmentState.gotoAddScreen() = _GotoAddScreenState;

  const factory EquipmentState.gotoEditScreen({
    required Equipment equipmentData,
  }) = _GotoEditScreenState;

  const factory EquipmentState.gotoDetailScreen({
    required Equipment equipmentData,
  }) = _GotoDetailScreenState;

  const factory EquipmentState.gotoPprScreen({
    required PprType pprType,
    required Equipment equipmentData,
  }) = _GotoPprScreenState;

  const factory EquipmentState.data({required List<Equipment> list}) = _DataState;
}
