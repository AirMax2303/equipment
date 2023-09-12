part of 'ppr_bloc.dart';

@freezed
class PprEvent with _$PprEvent {
  const factory PprEvent.initial(String equipmentid) = _InitialEvent;

  const factory PprEvent.gotoAddPprScreen(String equipmentid) = _GotoAddPprScreenEvent;

  const factory PprEvent.addPpr(PprModel ppr) = _AddPprEvent;

}