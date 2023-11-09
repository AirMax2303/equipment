import 'dart:io';

import 'package:ellipsis_overflow_text/ellipsis_overflow_text.dart';
import 'package:equipment/equipment/repository/equipment_repository.dart';
import 'package:equipment/widgets/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../main_chapter/main_page.dart';
import 'bloc/equipment_bloc.dart';
import 'models/equipment.dart';
import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'equipment_filter.dart';

//ignore: must_be_immutable
class EquipmentListScreen extends StatelessWidget {
  EquipmentListScreen({Key? key, required this.list}) : super(key: key);
  List<Equipment> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Оборудование', {}, () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MainPage(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))));
      }),
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      backgroundColor: Colors.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog<EquipmentFilter>(
                          context: context,
                          builder: (BuildContext context) {
                            return selectTypeEq(context);
                          }).then((value) => BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.setFilter(value!)));
                    },
                    icon: SvgPicture.asset('assets/filter.svg')),
                Row(
                  children: [
                    const Icon(Icons.add, color: Color(0xFF8F9BB3)),
                    TextButton(
                      child: const Text('Добавить').style14w700(color: const Color(0xFF8F9BB3)),
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
                      BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoDetailScreen(list[index].equipment!.id!));
                    },
                    child: Card(
                      color: AppColor.backgroundColor,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(list[index].equipment!.view!).style16w700(),
//                                SvgPicture.asset('icon.svg')
//                                IconButton(onPressed: () {}, icon: SvgPicture.asset('arrow_down.svg'))
                              ],
                            ),
                            const SizedBox(height: 5),
//-------------------------------------------------------------------------------------------------------------------------------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    list[index].equipment!.image!.isEmpty
                                        ? Image.asset('assets/Group 482.png')
                                        : ImageElement(imageUrl + list[index].equipment!.image!),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(list[index].equipment!.name1!, maxLines: 5).style14w700(),
/*
                                        TextBox(
                                            width: 270,
                                            height: 30,
                                            color: Colors.white,
                                            radius: 6,
                                            padding: 6,
                                            child: Text(list[index].equipment!.name1!).style14w700()),
 */
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(list[index].equipment!.name2!).style12w400(),
                                        Text(list[index].equipment!.id!).style12w400(),
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset('assets/status${list[index].equipment!.status!}.svg'),
                              ],
                            ),
//------------------------------------------------------------------------------------------------------------------------------
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                SvgPicture.asset('assets/oval3.svg'),
                                const SizedBox(width: 5),
                                Text(list[index].equipment!.plot!).style14w700(),
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
