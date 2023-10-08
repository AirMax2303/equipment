import 'dart:io';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import 'bloc/equipment_bloc.dart';
import 'models/equipment.dart';
import 'models/info.dart';

class EquipmentDetail extends StatelessWidget {
  EquipmentDetail({Key? key, required this.equipmentData}) : super(key: key);
  final Equipment equipmentData;
  final ValueNotifier<bool> showProftype = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'Карточка оборудования', {}, () {
        BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.getList());
      }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      equipmentData.equipment!.image!.isEmpty
                          ? Image.asset('assets/eq.png')
                          : Image.file(
                              File(equipmentData.equipment!.image!),
                              height: 150,
                            ),
                      SvgPicture.asset(status(equipmentData.equipment!.status!)),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                AppTextBox.textBox(equipmentData.equipment!.name1!),
                const SizedBox(height: 16),
                AppTextBox.textBox(equipmentData.equipment!.name2!),
                const SizedBox(height: 16),
                AppText.text14('Вид оборудования'),
                const SizedBox(height: 16),
                AppTextBox.textBox(equipmentData.equipment!.view!),
                const SizedBox(height: 16),
                AppText.text14('Участок'),
                const SizedBox(height: 16),
                AppTextBox.textBox(equipmentData.equipment!.plot!),
                const SizedBox(height: 16),
                AppText.text14('Работа/часы'),
                FormBuilderSwitch(
                  title: const Text('Работа/часы'),
                  name: 'proftype',
                  initialValue: equipmentData.equipment!.proftype,
                  enabled: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    showProftype.value = value!;
                  },
                ),
                ValueListenableBuilder(
                    valueListenable: showProftype,
                    builder: (BuildContext context, bool value, Widget? child) {
                      if (value) {
                        return AppTextBox.textBox('Текущее значение работа/часов');
                      } else {
                        return const SizedBox();
                      }
                    }),
                const SizedBox(height: 16),
                AppText.text14('Информация'),
                const SizedBox(height: 16),
                InfoBox(equipmentData.infoList!),
                const SizedBox(height: 8),
                AppButton.filledLightBlueButton('ППР Работы по работа/часам', onPressed: () {
                  BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoPprScreen(PprType.workTime, equipmentData));
                }),
                const SizedBox(height: 16),
                AppButton.filledLightBlueButton('ППР Работы по времени', onPressed: () {
                  BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoPprScreen(PprType.time, equipmentData));
                }),
                const SizedBox(height: 16),
                AppButton.filledLightBlueButton('План работ', onPressed: () {}),
                const SizedBox(height: 16),
                AppButton.filledButton('Редактировать', onPressed: () {
                  BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoEditScreen(equipmentData));
                }),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  InfoBox(this.list, {Key? key}) : super(key: key);
  List<InfoModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      list.length,
      (index) => Column(
        children: [
          Container(
            width: double.infinity,
            height: 35,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/oval3.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(list[index].data!).style14w500(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    ));
  }
}
