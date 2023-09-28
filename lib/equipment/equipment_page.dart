import 'package:equipment/equipment/models/equipment.dart';
import 'package:equipment/equipment/service/equipment_service.dart';
import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../ppr/ppr.dart';
import 'bloc/equipment_bloc.dart';
import 'equipment_add.dart';
import 'equipment_detail.dart';
import 'equipment_edit.dart';
import 'equipment_list.dart';

class EquipmentPage extends StatelessWidget {
  EquipmentPage({Key? key, this.event}) : super(key: key);
  EquipmentModel? equipment;
  EquipmentEvent? event;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EquipmentBloc>(
      create: (context) => EquipmentBloc(GetIt.instance.get<EquipmentService>())..add(event ?? const EquipmentEvent.initial()),
      child: BlocConsumer<EquipmentBloc, EquipmentState>(
//          bloc: context.read<EquipmentBloc>()..add(event ?? const EquipmentEvent.initial()),
          listener: (context, state) {
        state.mapOrNull(
          gotoPprScreen: (data) => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PprPage(
                        equipment: data.equipment,
                        lastState: LastState.equipment,
                      ))),
        );
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => EquipmentListScreen(list: data.list, viewList: data.viewList, plotList: data.plotList),
          gotoAddScreen: (data) => EquipmentAdd(
            viewList: data.viewList,
            plotList: data.plotList,
          ),
          gotoDetailScreen: (data) {
            equipment = data.equipment;
            return EquipmentDetail(
              equipment: data.equipment,
            );
          },
          gotoEditScreen: (data) => EquipmentEdit(
            equipment: data.equipment,
            viewList: data.viewList,
            plotList: data.plotList,
//              infoList: data.infoList,
          ),
          orElse: () => Container(
            color: Colors.white,
            child: const Center(
              child: Text('Equipment page'),
            ),
          ),
        );
      }),
    );
  }
}
