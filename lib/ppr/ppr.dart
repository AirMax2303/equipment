import 'package:equipment/ppr/bloc/ppr_bloc.dart';
import 'package:equipment/ppr/ppr_5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile/bloc/profile_bloc.dart';

class Ppr extends StatelessWidget {
  Ppr({Key? key, required this.equipmentid}) : super(key: key);
  String equipmentid;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PprBloc, PprState>(
        bloc: BlocProvider.of<PprBloc>(context)..add(PprEvent.initial(equipmentid)),
        listener: (context, state) {
          state.mapOrNull(

          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const CircularProgressIndicator(),
            data: (_) => Ppr5Screen(equipmentid: equipmentid,),
            orElse: () {
              return const SizedBox();
            },
          );
        });
  }
}
