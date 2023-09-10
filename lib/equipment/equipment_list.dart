import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/equipment_bloc.dart';
import 'models/equipment.dart';
import 'models/name.dart';
import 'service/equipment_service.dart';
import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'equipment_detail.dart';
import 'equipment_filter.dart';

//ignore: must_be_immutable
class EquipmentList extends StatelessWidget {
  EquipmentList(BuildContext context, {Key? key, required this.list, required this.viewList, required this.plotList})
      : super(key: key);
  List<EquipmentModel> list;
  List<NameModel> viewList;
  List<NameModel> plotList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Оборудование', {}, null),
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return selectTypeEq(context, viewList, plotList);
                          }).then((value) {
                        if (value == 'back') {
                          BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.setFilter(SelectedFilter(
                            filtername: '',
                            value: '',
                          )));
                        } else {
                          final filter = SelectedFilter.fromJson(jsonDecode(value!));
                          BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.setFilter(filter));
                        }
                      });
                    },
                    icon: SvgPicture.asset('assets/filter.svg')),
                Row(
                  children: [
                    const Icon(
                      Icons.add,
                      color: Color(0xFF8F9BB3),
                    ),
                    TextButton(
                      child: Text('Добавить',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Color(0xFF8F9BB3), fontSize: 14, fontWeight: FontWeight.w700),
                          )),
                      onPressed: () {
                        BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.gotoAddScreen());
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            height: 192,
            color: Colors.white,
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoDetailScreen(list[index]));
                    },
                    child: Card(
                      color: AppColor.backgroundColor,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].view!,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                                )),
                            AppSixeBox.size5,
//-------------------------------------------------------------------------------------------------------------------------------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    list[index].image!.isEmpty
                                        ? Image.asset('assets/Group 482.png')
                                        : Image.file(
                                            File(list[index].image!),
                                            width: 50,
                                            height: 50,
                                          ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[index].name1!,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                                        ),
                                        Text(
                                          list[index].name2!,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(status(list[index].status!)),
                              ],
                            ),
//------------------------------------------------------------------------------------------------------------------------------
                            AppSixeBox.size5,
                            Row(
                              children: [
                                SvgPicture.asset('assets/oval3.svg'),
                                const SizedBox(width: 5),
                                Text(
                                  list[index].plot!,
                                  style:
                                      GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: list.length),
          ))
        ],
      )),
    );
  }
}
