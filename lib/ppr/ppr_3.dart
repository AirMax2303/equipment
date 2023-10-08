import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'bloc/ppr_bloc.dart';

class Ppr3Screen extends StatelessWidget {
  Ppr3Screen({Key? key, required this.pprType, required this.equipmentid}) : super(key: key);
  PprType pprType;
  String equipmentid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, () {
        BlocProvider.of<PprBloc>(context).add(PprEvent.initial(pprType, equipmentid));
      }),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          SvgPicture.asset('assets/done.svg'),
                          const SizedBox(height: 20),
                          AppText.blackText18('Работа сохранена'),
                        ],
                      ),
                    )),
                Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.white,
                )
              ],
            ),
          )),
    );
  }
}
