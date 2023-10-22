import 'package:equipment/equipment/repository/equipment_repository.dart';
import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../calendar/bloc/calendar_bloc.dart';
import '../calendar/calendar_page.dart';
import '../models/models.dart';
import '../ppr/ppr.dart';
import '../template/screens.dart';
import '../widgets/dialog.dart';
import '../widgets/navigator.dart';
import 'bloc/equipment_bloc.dart';
import 'equipment_add.dart';
import 'equipment_detail.dart';
import 'equipment_edit.dart';
import 'equipment_list.dart';

//ignore: must_be_immutable
class EquipmentPage extends StatelessWidget {
  EquipmentPage({Key? key, this.event}) : super(key: key);
  EquipmentEvent? event;
  EquipmentModel? equipment;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EquipmentBloc>(
      create: (context) => EquipmentBloc(GetIt.instance.get<EquipmentRepository>())..add(event ?? const EquipmentEvent.initial()),
      child: BlocConsumer<EquipmentBloc, EquipmentState>(listener: (context, state) {
        state.mapOrNull(
          okAdd: (_) => BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.initial()),
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
          gotoCalendarScreen: (data) => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CalendarPage(
                      histiry: false,
                      date: DateTime.now(),
                      nav: Nav.calendar,
                      event: CalendarEvent.getEquipmentList(data.equipmentData.equipment!)))),
        );
      }, builder: (context, state) {
        return state.maybeMap(
          initial: (_) => const Center(child: CircularProgressIndicator(backgroundColor: AppColor.blueColor,)),
          loading: (_) => const Center(child: CircularProgressIndicator(backgroundColor: AppColor.blueColor,)),
          data: (data) => EquipmentListScreen(list: data.list),
          gotoAddScreen: (data) => EquipmentAdd(),
          gotoDetailScreen: (data) => EquipmentDetail(equipmentData: data.equipmentData),
          gotoEditScreen: (data) => EquipmentEdit(equipmentData: data.equipmentData),
          error: (_) => const ErrorScreen(),
          orElse: () => const ElseScreen(),
        );
      }),
    );
  }
}
