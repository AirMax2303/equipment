import 'package:equipment/equipment/bloc/equipment_bloc.dart';
import 'package:equipment/equipment/models/equipment.dart';
import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:equipment/ppr/ppr_3.dart';
import 'package:equipment/ppr/ppr_5.dart';
import 'package:equipment/ppr/ppr_9.dart';
import 'package:equipment/ppr/service/ppr_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../equipment/equipment_page.dart';
import '../main_chapter/main_page.dart';
import '../other/other.dart';

//ignore: must_be_immutable
class PprPage extends StatelessWidget {
  PprPage({Key? key, this.equipment, required this.lastState}) : super(key: key);
  LastState lastState;
  EquipmentModel? equipment;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PprBloc>(
      create: (context) => PprBloc(GetIt.instance.get<PprService>())..add(PprEvent.initial(equipment!.id!)),
      child: BlocConsumer<PprBloc, PprState>(listener: (context, state) {
        print('=======================listener PprBloc=============================================');
        print(state.toString());
        state.mapOrNull(
          back: (_) {
            if (lastState == LastState.equipment) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EquipmentPage(
                            event: EquipmentEvent.gotoDetailScreen(equipment!),
                          )));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
            }
          },
        );
      }, builder: (context, state) {
        print('=======================builder PprBloc=============================================');
        print(state.toString());
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => Ppr5Screen(
            equipmentid: data.equipmentid!,
            list: data.list!,
            lastState: lastState,
          ),
          addScreen: (data) => Ppr9Screen(
            equipment: equipment!,
          ),
          ppr3Screen: (data) => Ppr3Screen(
            equipmentid: data.equipmentid,
          ),
          orElse: () {
            return Container(
              color: Colors.white,
              child: Center(
                child: const Text('Equipment page',),
              ),
            );
          },
        );
      }),
    );
  }
}
