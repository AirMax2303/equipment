part of 'ppr_bloc.dart';

enum LastState {main, equipment}

@freezed
class PprEvent with _$PprEvent {

  const factory PprEvent.initial(PprType pprType, String equipmentid) = _InitialEvent;

  const factory PprEvent.gotoAddPprScreen(PprType pprType, String equipmentid) = _GotoAddPprScreenEvent;

  const factory PprEvent.gotoEditPprScreen(PprModel ppr) = _GotoEditPprScreenEvent;

  const factory PprEvent.addPpr(PprType pprType, PprModel ppr, EquipmentModel equipment) = _AddPprEvent;

  const factory PprEvent.deletePpr(PprType pprType, PprModel ppr) = _DeletePprEvent;

  const factory PprEvent.updatePpr(PprType pprType, PprModel ppr) = _UpdatePprEvent;

  const factory PprEvent.back(LastState lastState) = _BackEvent;

}