import 'package:equipment/widgets/text_extension.dart';
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
  final ValueNotifier<bool> showProfType = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    showProfType.value = equipmentData.equipment!.proftype!;
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'Карточка оборудования', {}, () {
        BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.getList());
      }),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        equipmentData.equipment!.image!.isEmpty
                            ? Image.asset('assets/eq.png')
                            : SizedBox(
                                height: 170,
                                child: Image.network(fit: BoxFit.contain, imageUrl + equipmentData.equipment!.image!,
                                    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                  return SvgPicture.asset('assets/error.svg');
                                })),
                        SvgPicture.asset(status(equipmentData.equipment!.status!)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextBox(child: Text(equipmentData.equipment!.name1!).style13w500()),
                  const SizedBox(height: 16),
                  TextBox(child: Text(equipmentData.equipment!.name2!).style13w500()),
                  const SizedBox(height: 16),
                  const Text('Вид оборудования').style14w700(),
                  const SizedBox(height: 8),
                  TextBox(child: Text(equipmentData.equipment!.view!).style13w500()),
                  const SizedBox(height: 16),
                  const Text('Участок').style14w700(),
                  const SizedBox(height: 16),
                  TextBox(child: Text(equipmentData.equipment!.plot!).style13w500()),
                  FormBuilderSwitch(
                    title: const Text('Работа/часы'),
                    name: 'proftype',
                    initialValue: equipmentData.equipment!.proftype,
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  TextBox(child: Text(equipmentData.equipment!.valuex.toString()).style13w500()),
                  const SizedBox(height: 16),
                  const Text('Информация').style16w700(),
                  const SizedBox(height: 16),
                  InfoBox(equipmentData.infoList!),
                  const SizedBox(height: 8),
                  equipmentData.equipment!.proftype!
                      ? AppFilledButton('ППР Работы по работа/часам',
                          backgroundColor: AppColor.lightBlueColor, textColor: AppColor.blueColor, onPressed: () {
                          BlocProvider.of<EquipmentBloc>(context)
                              .add(EquipmentEvent.gotoPprScreen(PprType.workTime, equipmentData));
                        })
                      : const SizedBox(),
                  const SizedBox(height: 16),
                  AppFilledButton('ППР Работы по времени',
                      backgroundColor: AppColor.lightBlueColor, textColor: AppColor.blueColor, onPressed: () {
                    BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoPprScreen(PprType.time, equipmentData));
                  }),
                  const SizedBox(height: 16),
                  AppFilledButton('План работ', backgroundColor: AppColor.lightBlueColor, textColor: AppColor.blueColor,
                      onPressed: () {
                    BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoCalendarScreen(equipmentData));
                  }),
                  const SizedBox(height: 16),
                  AppFilledButton('Редактировать', onPressed: () {
                    BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoEditScreen(equipmentData));
                  }),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox(this.list, {Key? key}) : super(key: key);
  final List<InfoModel> list;

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
