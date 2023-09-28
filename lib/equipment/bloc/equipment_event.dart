part of 'equipment_bloc.dart';

@freezed
class EquipmentEvent with _$EquipmentEvent {
  const factory EquipmentEvent.initial() = _InitialEvent;
  const factory EquipmentEvent.setFilter(SelectedFilter filter) = _SetFilterEvent;
  const factory EquipmentEvent.getList() = _GetListEvent;
  const factory EquipmentEvent.gotoAddScreen() = _GotoAddScreenEvent;
  const factory EquipmentEvent.gotoDetailScreen(EquipmentModel equipment) = _GotoDetailScreenEvent;
  const factory EquipmentEvent.gotoEditScreen(EquipmentModel equipment) = _GotoEditScreenEvent;
  const factory EquipmentEvent.gotoPprScreen(EquipmentModel equipment) = _GotoPprScreenEvent;
  const factory EquipmentEvent.addView(String view) = _AddViewEvent;
  const factory EquipmentEvent.addViewInEdit(EquipmentModel equipment, String view) = _AddViewInEditEvent;
  const factory EquipmentEvent.addPlot(String plot) = _AddPlotEvent;
  const factory EquipmentEvent.addPlotInEdit(EquipmentModel equipment, String plot) = _AddPlotInEditEvent;
  const factory EquipmentEvent.addEquipment(EquipmentModel equipment) = _AddEquipmentEvent;
  const factory EquipmentEvent.editEquipment(EquipmentModel equipment) = _EditEquipmentEvent;
  const factory EquipmentEvent.deleteEquipment(EquipmentModel equipment) = _DeleteEquipmentEvent;
  const factory EquipmentEvent.addInfo(InfoModel info) = _AddInfoEvent;
}
