import 'dart:io';

import 'package:equipment/other/other.dart';
import 'package:equipment/ppr/ppr_9.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/models.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import 'bloc/ppr_bloc.dart';
import 'model/ppr.dart';

class Ppr5Screen extends StatelessWidget {
  Ppr5Screen({Key? key, required this.pprType, required this.equipmentid, required this.list, required this.lastState})
      : super(key: key);
  PprType pprType;
  final String equipmentid;
  final List<PprModel> list;
  LastState lastState;
  List<String> repeat = ['дней', 'неделю', 'месяц'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, () {
        BlocProvider.of<PprBloc>(context).add(PprEvent.back(lastState));
      }),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.add, color: Color(0xFF8F9BB3)),
                TextButton(
                  child: const Text('Добавить').style14w700(color: const Color(0xFF8F9BB3)),
                  onPressed: () {
                    BlocProvider.of<PprBloc>(context).add(PprEvent.gotoAddPprScreen(pprType, equipmentid!));
                  },
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            BlocProvider.of<PprBloc>(context).add(PprEvent.gotoEditPprScreen(list[index]));
                          },
                          child: Card(
                            elevation: 0,
                            color: AppColor.backgroundColor,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          list[index].priority! ? SvgPicture.asset('assets/priority.svg') : const SizedBox(),
                                          const SizedBox(width: 5),
                                          list[index].pprtype == 2!
                                              ? SvgPicture.asset('assets/timer_blue.svg')
                                              : list[index].image!.isEmpty
                                                  ? const SizedBox()
                                                  : Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          alignment: FractionalOffset.topCenter,
                                                          image: NetworkImage(imageUrl + list[index].image!),
                                                        ),
                                                      ),
                                                    ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Box(
                                              height: 30,
                                              padding: 8,
                                              color: AppColor.lightBlueColor,
                                              child: Text('1 X в ${list[index].intervalcount} ${repeat[list[index]
                                                  .repeatcount!]}')
                                                  .style12w500(color: AppColor.blueColor)),
                                          const SizedBox(width: 10),
                                          Box(
                                              height: 30,
                                              color: Colors.white,
                                              padding: 8,
                                              child: SvgPicture.asset('assets/arrow_down.svg', height: 20)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(list[index].name!).style14w500(),
                                ],
                              ),
                            ),
                          ),
                        );
                      }))),
        ],
      )),
    );
  }
}
