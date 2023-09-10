import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

import 'bloc/equipment_bloc.dart';
import 'equipment_add.dart';
import 'equipment_detail.dart';
import 'equipment_edit.dart';
import 'equipment_list.dart';

class EquipmentManagement extends StatelessWidget {
  const EquipmentManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EquipmentBloc, EquipmentState>(
        bloc: context.read<EquipmentBloc>()..add(const EquipmentEvent.initial()),
        listener: (context, state) {
          state.mapOrNull();
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const CircularProgressIndicator(),
            data: (data) => EquipmentList(context, list: data.list, viewList: data.viewList, plotList: data.plotList),
            gotoAddScreen: (data) => EquipmentAdd(
              viewList: data.viewList,
              plotList: data.plotList,
            ),
            gotoDetailScreen: (data) => EquipmentDetail(
              equipment: data.equipment,
            ),
            gotoEditScreen: (data) => EquipmentEdit(
              equipment: data.equipment,
              viewList: data.viewList,
              plotList: data.plotList,
//              infoList: data.infoList,
            ),
            orElse: () => const Placeholder(),
          );
        });
  }
}
