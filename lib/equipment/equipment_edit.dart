import 'dart:io';

import 'package:equipment/equipment/models/info.dart';
import 'package:equipment/other/other.dart';
import 'package:equipment/widgets/text_extension.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../widgets/appbar.dart';
import 'bloc/equipment_bloc.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'equipment_dialog.dart';
import 'models/equipment.dart';
import 'models/name.dart';
import 'name_list.dart';

//ignore: must_be_immutable
class EquipmentEdit extends StatelessWidget {
  EquipmentEdit({Key? key, required this.equipmentData}) : super(key: key);
  final Equipment equipmentData;
  String image = '';
  File? file;
  final ValueNotifier<bool> refresh = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showView = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPlot = ValueNotifier<bool>(false);
  final ValueNotifier<bool> infoListChange = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showProfType = ValueNotifier<bool>(false);
  final formKey = GlobalKey<FormBuilderState>();
  final formInfoKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    showProfType.value = equipmentData.equipment!.proftype!;
    return Scaffold(
      appBar: appBar(context, 'Карточка оборудования', {}, () {
        BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoDetailScreen(equipmentData.equipment!.id!));
      }),
      backgroundColor: Colors.white,
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: refresh,
                builder: (BuildContext context, value, Widget? child) {
                  return SingleChildScrollView(
                    child: FormBuilder(
                      key: formKey,
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                file != null
                                    ? Image.file(File(file!.path), height: 200, width: 300, fit: BoxFit.cover)
                                    : equipmentData.equipment!.image!.isEmpty
                                        ? Image.asset('assets/eq.png', height: 200, width: 300, fit: BoxFit.cover)
                                        : Image.network(
                                            height: 200,
                                            width: 300,
                                            fit: BoxFit.cover,
                                            imageUrl + equipmentData.equipment!.image!,
                                            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                            return SvgPicture.asset('assets/error.svg');
                                          }),
                                IconButton(
                                  icon: SvgPicture.asset('assets/plus.svg'),
                                  onPressed: () async {
                                    FilePickerResult? result = await FilePicker.platform.pickFiles();
                                    if ((result != null) && (result.files.isNotEmpty)) {
                                      file = File(result.files.single.path!);
                                      equipmentData.equipment = equipmentData.equipment!.copyWith(image: result.files[0].path);
                                      refresh.value = !refresh.value;
                                    }
                                  },
                                ),
                              ]),
                          const SizedBox(height: 16),
                          FormBuilderTextField(
                            name: 'name1',
                            initialValue: equipmentData.equipment!.name1,
                            style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                            decoration: AppDecoration.inputEq('Название 1'),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            ]),
                            onChanged: (value) {
                              equipmentData.equipment = equipmentData.equipment!.copyWith(name1: value);
                            },
                          ),
                          const SizedBox(height: 16),
                          FormBuilderTextField(
                            name: 'name2',
                            initialValue: equipmentData.equipment!.name2,
                            style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                            decoration: AppDecoration.inputEq('Название 2'),
                            validator: FormBuilderValidators.compose([
//                              FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            ]),
                            onChanged: (value) {
                              equipmentData.equipment = equipmentData.equipment!.copyWith(name2: value);
                            },
                          ),
                          const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: showView,
                              builder: (BuildContext context, value, Widget? child) {
                                return FormBuilderTextField(
                                    name: 'view',
                                    initialValue: equipmentData.equipment!.view,
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    readOnly: true,
                                    onTap: () {
                                      showView.value = !showView.value;
                                    },
                                    decoration: AppDecoration.inputEqDropDown('Вид оборудования', showView.value),
                                    validator: FormBuilderValidators.compose([
//                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          const SizedBox(height: 5),
                          ValueListenableBuilder(
                              valueListenable: showView,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(
                                      typeName: true,
                                      onNameCallback: (NameModel value) {
                                        formKey.currentState?.fields['view']?.didChange(value.name);
                                        equipmentData.equipment =
                                            equipmentData.equipment?.copyWith(viewid: value.id, view: value.name);
                                        showView.value = false;
                                      });
                                } else {
                                  return const SizedBox(height: 16);
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: showPlot,
                              builder: (BuildContext context, value, Widget? child) {
                                return FormBuilderTextField(
                                    name: 'plot',
                                    initialValue: equipmentData.equipment!.plot,
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    readOnly: true,
                                    onTap: () {
                                      showPlot.value = !showPlot.value;
                                    },
                                    decoration: AppDecoration.inputEqDropDown('Участок', showPlot.value),
                                    validator: FormBuilderValidators.compose([
//                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          const SizedBox(height: 5),
                          ValueListenableBuilder(
                              valueListenable: showPlot,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(
                                      typeName: false,
                                      onNameCallback: (NameModel value) {
                                        formKey.currentState?.fields['plot']?.didChange(value.name);
                                        equipmentData.equipment =
                                            equipmentData.equipment?.copyWith(plotid: value.id, plot: value.name);
                                        showPlot.value = false;
                                      });
                                } else {
                                  return const SizedBox();
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          FormBuilderSwitch(
                            title: const Text('Работа/часы'),
                            name: 'proftype',
                            initialValue: equipmentData.equipment!.proftype,
                            decoration: const InputDecoration(border: InputBorder.none),
                            onChanged: (value) {
                              equipmentData.equipment = equipmentData.equipment?.copyWith(proftype: value);
                              showProfType.value = value!;
                            },
                          ),
                          ValueListenableBuilder(
                              valueListenable: showProfType,
                              builder: (BuildContext context, bool value, Widget? child) {
                                if (value) {
                                  return FormBuilderTextField(
                                    name: 'valuex',
                                    readOnly: true,
                                    initialValue: equipmentData.equipment!.valuex.toString(),
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    decoration: AppDecoration.inputEq('Текущее значение работа/часов'),
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Информация').style16w700(),
                              Row(
                                children: [
                                  const Icon(Icons.add, color: Color(0xFF8F9BB3)),
                                  TextButton(
                                    child: const Text('Добавить').style14w700(color: const Color(0xFF8F9BB3)),
                                    onPressed: () {
                                      equipmentData.infoList!.add(InfoModel(equipmentid: equipmentData.equipment!.id, data: ''));
                                      infoListChange.value = !infoListChange.value;
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: infoListChange,
                              builder: (BuildContext context, bool value, Widget? child) {
                                print('infoListChange -------------------------------------------------------------------------');
                                return FormBuilder(
                                  key: formInfoKey,
                                  child: Column(
                                    children: List<Widget>.generate(equipmentData.infoList!.length, (index) {
                                      return Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              FormBuilderTextField(
                                                name: index.toString(),
                                                onChanged: (value) {
                                                  equipmentData.infoList![index] = equipmentData.infoList![index].copyWith(
                                                      id: equipmentData.infoList![index].id,
                                                      equipmentid: equipmentData.infoList![index].equipmentid,
                                                      data: value);
                                                },
                                                initialValue: equipmentData.infoList![index].data,
                                                style: const TextStyle(
                                                    color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                                decoration: AppDecoration.inputEq('Информация'),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    equipmentData.infoList!.removeAt(index);
                                                    infoListChange.value = !infoListChange.value;
                                                    for (var i = 0; i < equipmentData.infoList!.length; ++i) {
                                                      formInfoKey.currentState?.fields[i.toString()]?.didChange(
                                                        equipmentData.infoList![i].data,
                                                      );
                                                    }
                                                  },
                                                  icon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown)),
                                            ],
                                          ),
                                          const SizedBox(height: 16),
                                        ],
                                      );
                                    }),
                                  ),
                                );
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          AppFilledButton('Сохранить', onPressed: () {
                            if (formKey.currentState?.saveAndValidate() ?? false) {
                              BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.updateEquipment(equipmentData));
                            }
                          }),
                          TextButton(
                            child: const Text('Удалить').style12w300(),
                            onPressed: () {
                              showDialog<bool>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return dialogDeleteConfirm(context);
                                  }).then((value) {
                                if (value!) {
                                  BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.deleteEquipment(equipmentData));
                                }
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
