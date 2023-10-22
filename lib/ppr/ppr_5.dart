import 'package:equipment/other/other.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:equipment/widgets/text_extension.dart';
import '../models/models.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import 'bloc/ppr_bloc.dart';

class Ppr5Screen extends StatelessWidget {
  const Ppr5Screen({Key? key, required this.pprType, required this.equipment, required this.list, required this.lastState})
      : super(key: key);
  final PprType pprType;
  final EquipmentModel? equipment;
  final List<PprModel> list;
  final LastState lastState;
  static const List<String> repeat = ['дней', 'неделю', 'месяц'];

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
                    BlocProvider.of<PprBloc>(context).add(PprEvent.gotoAddPprScreen(pprType, equipment!.id!));
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
                                          list[index].pprtype == 2
                                              ? SvgPicture.asset('assets/timer_blue.svg')
                                              : list[index].image!.isEmpty
                                                  ? const SizedBox()
                                                  : ImageElement(imageUrl + list[index].image!),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Box(
                                              height: 30,
                                              padding: 8,
                                              color: AppColor.lightBlueColor,
                                              child:
                                                  Text('1 X в ${list[index].intervalcount} ${repeat[list[index].repeatcount!]}')
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

class ImageElement extends StatelessWidget {
  const ImageElement(this.image, {Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(fit: BoxFit.cover, alignment: FractionalOffset.topCenter, image: NetworkImage(image))),
        ),
      ),
    );
  }
}
