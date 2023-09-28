part of 'equipment_bloc.dart';

@freezed
class EquipmentState with _$EquipmentState {
  const factory EquipmentState.initial() = _InitialState;

  const factory EquipmentState.loading() = _LoadingState;

  const factory EquipmentState.ok() = _OkState;

  const factory EquipmentState.error({
    required String error
  }) = _ErrorState;


  const factory EquipmentState.gotoAddScreen({
    required List<NameModel> viewList,
    required List<NameModel> plotList,
  }) = _GotoAddScreenState;

  const factory EquipmentState.gotoEditScreen({
    required EquipmentModel equipment,
    required List<NameModel> viewList,
    required List<NameModel> plotList,
    required List<InfoModel> infoList
  }) = _GotoEditScreenState;

  const factory EquipmentState.gotoDetailScreen({
    required EquipmentModel equipment,
  }) = _GotoDetailScreenState;

  const factory EquipmentState.gotoPprScreen({
    required EquipmentModel equipment,
  }) = _GotoPprScreenState;

  const factory EquipmentState.data({
    required List<EquipmentModel> list,
    required List<NameModel> viewList,
    required List<NameModel> plotList,
  }) = _DataState;
}
