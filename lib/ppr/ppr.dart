import 'package:equipment/equipment/bloc/equipment_bloc.dart';
import 'package:equipment/equipment/models/equipment.dart';
import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:equipment/ppr/ppr_5.dart';
import 'package:equipment/ppr/ppr_8.dart';
import 'package:equipment/ppr/ppr_9.dart';
import 'package:equipment/ppr/repository/ppr_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../equipment/equipment_page.dart';
import '../main_chapter/main_page.dart';
import '../other/other.dart';
import '../template/screens.dart';
import '../widgets/dialog.dart';

//ignore: must_be_immutable
class PprPage extends StatelessWidget {
  PprPage({Key? key, required this.pprType, this.equipmentData, required this.lastState}) : super(key: key);
  PprType pprType;
  LastState lastState;
  Equipment? equipmentData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PprBloc>(
      create: (context) =>
          PprBloc(GetIt.instance.get<PprRepository>())..add(PprEvent.initial(pprType, equipmentData!.equipment!.id!)),
      child: BlocConsumer<PprBloc, PprState>(listener: (context, state) {
        state.mapOrNull(
          ok: (data) => showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return dialogWorkIsDone(context, false, 'Работа сохранена', '');
              }).then((_) => BlocProvider.of<PprBloc>(context).add(PprEvent.initial(data.pprType, data.ppr.equipmentid!))),
          okDelete: (data) => showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return dialogWorkIsDone(context, true, 'Работа удалена', '');
              }).then((_) => BlocProvider.of<PprBloc>(context).add(PprEvent.initial(data.pprType, data.ppr.equipmentid!))),
          back: (_) {
            if (lastState == LastState.equipment) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EquipmentPage(
                            event: EquipmentEvent.gotoDetailScreen(equipmentData!.equipment!.id!),
                          )));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
            }
          },
        );
      }, builder: (context, state) {
        return state.maybeMap(
          initial: (_)  => const LoadingScreen(),
          loading: (_) => const LoadingScreen(),
          data: (data) =>
              Ppr5Screen(pprType: data.pprType!, equipment: equipmentData!.equipment, list: data.list!, lastState: lastState),
          addScreen: (data) => Ppr9Screen(equipment: equipmentData!.equipment, pprType: pprType),
          editScreen: (data) => Ppr8Screen(ppr: data.ppr),
//          ppr3Screen: (data) => Ppr3Screen(pprType: pprType, equipmentid: data.equipmentid),
          error: (_) => const ErrorScreen(),
          orElse: () => const ElseScreen(),
        );
      }),
    );
  }
}
