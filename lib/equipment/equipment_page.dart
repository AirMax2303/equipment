import 'package:equipment/equipment/service/equipment_service.dart';
import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../models/models.dart';
import '../ppr/ppr.dart';
import '../template/template01.dart';
import '../widgets/dialog.dart';
import 'bloc/equipment_bloc.dart';
import 'equipment_add.dart';
import 'equipment_detail.dart';
import 'equipment_edit.dart';
import 'equipment_list.dart';

//ignore: must_be_immutable
class EquipmentPage extends StatelessWidget {
  EquipmentPage({Key? key, this.event}) : super(key: key);
  EquipmentModel? equipment;
  EquipmentEvent? event;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EquipmentBloc>(
      create: (context) => EquipmentBloc(GetIt.instance.get<EquipmentService>())..add(event ?? const EquipmentEvent.initial()),
      child: BlocConsumer<EquipmentBloc, EquipmentState>(listener: (context, state) {
        state.mapOrNull(
//          ok: (_) => BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.initial()),
          okUpdate: (_) => showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return dialogWorkIsDone(context, false, 'Изменения', 'сохранены');
              }).then((value) => BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.initial())),
          okDelete: (_) => showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return dialogWorkIsDone(context, true, 'Оборудование', 'удалено');
              }).then((value) => BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.initial())),
          gotoPprScreen: (data) => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PprPage(pprType: data.pprType, equipmentData: data.equipmentData, lastState: LastState.equipment))),
        );
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const EmptyScreen(),
          data: (data) => EquipmentListScreen(list: data.list),
          gotoAddScreen: (data) => EquipmentAdd(),
          gotoDetailScreen: (data) => EquipmentDetail(
            equipmentData: data.equipmentData,
          ),
          gotoEditScreen: (data) => EquipmentEdit(equipmentData: data.equipmentData),
          orElse: () => const EmptyScreen(),
        );
      }),
    );
  }
}
