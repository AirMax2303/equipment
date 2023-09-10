import 'dart:io';

import 'package:equipment/equipment/equipment_edit.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import 'bloc/equipment_bloc.dart';
import 'models/equipment.dart';

class EquipmentDetail extends StatelessWidget {
  EquipmentDetail({Key? key, required this.equipment}) : super(key: key);
  final EquipmentModel equipment;
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
                      equipment.image!.isEmpty
                          ? Image.asset('assets/eq.png')
                          : Image.file(
                              File(equipment.image!),
                              height: 150,
                            ),
                      SvgPicture.asset(status(equipment.status!)),
                    ],
                  ),
                ),
                AppSixeBox.size16,
                AppTextBox.textBox(equipment.name1!),
                AppSixeBox.size16,
                AppTextBox.textBox(equipment.name2!),
                AppSixeBox.size16,
                AppText.text14('Вид оборудования'),
                AppSixeBox.size16,
                AppTextBox.textBox(equipment.view!),
                AppSixeBox.size16,
                AppText.text14('Участок'),
                AppSixeBox.size16,
                AppTextBox.textBox(equipment.plot!),
                AppSixeBox.size16,
                AppText.text14('Работа/часы'),
                FormBuilderSwitch(
                  title: const Text('Работа/часы'),
                  name: 'proftype',
                  initialValue: equipment.proftype,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    showProftype.value = value!;
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: showProftype, builder: (BuildContext context, bool value, Widget? child) {
                    if (value) {
                      return AppTextBox.textBox('Текущее значение работа/часов');
                    } else {
                      return const SizedBox();
                    }
                }),
                AppSixeBox.size16,
                AppText.text14('Информация'),
                AppSixeBox.size16,
                AppButton.filledLightBlueButton('ППР', onPressed: () {}),
                AppSixeBox.size16,
                AppButton.filledLightBlueButton('План работ', onPressed: () {}),
                AppSixeBox.size16,
                AppButton.filledButton('Редактировать', onPressed: () {
                  BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoEditScreen(equipment));
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
