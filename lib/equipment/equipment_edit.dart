import 'dart:io';

import 'package:equipment/equipment/models/info.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

import '../widgets/appbar.dart';
import '../widgets/input_text.dart';
import 'bloc/equipment_bloc.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'models/equipment.dart';
import 'models/name.dart';
import 'name_list.dart';

//ignore: must_be_immutable

class EquipmentEdit extends StatelessWidget {
  EquipmentEdit({Key? key, required this.equipment, required this.viewList, required this.plotList}) : super(key: key);
  late EquipmentModel equipment;
  List<NameModel> viewList;
  List<NameModel> plotList;
  List<InfoModel> infoList = [];
  String image = '';
  File? file;
  final ValueNotifier<bool> refrash = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showView = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPlot = ValueNotifier<bool>(false);
  final ValueNotifier<bool> infoListChange = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showProftype = ValueNotifier<bool>(false);
  final formKey = GlobalKey<FormBuilderState>();
  final formInfoKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Карточка оборудования', {}, () {
        BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.gotoDetailScreen(equipment));
      }),
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ValueListenableBuilder(
                valueListenable: refrash,
                builder: (BuildContext context, value, Widget? child) {
                  return SingleChildScrollView(
                    child: FormBuilder(
                      key: formKey,
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            equipment.image!.isEmpty
                                ? Image.asset('assets/eq.png')
                                : Image.file(
                                    File(equipment.image!),
                                    height: 150,
                                  ),
                            IconButton(
                              icon: SvgPicture.asset('assets/plus.svg'),
                              onPressed: () async {
                                FilePickerResult? result = await FilePicker.platform.pickFiles();
                                if (result != null) {
                                  file = File(result.files.single.path!);
                                  equipment = equipment.copyWith(image: file?.path);
                                  refrash.value = !refrash.value;
                                }
                              },
                            ),
                          ]),
                          AppSixeBox.size16,
                          FormBuilderTextField(
                              name: 'name1',
                              initialValue: equipment.name1,
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputEq('Название 1'),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                              ])),
                          AppSixeBox.size16,
                          FormBuilderTextField(
                              name: 'name2',
                              initialValue: equipment.name2,
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputEq('Название 2'),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                              ])),
                          AppSixeBox.size16,
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: showView,
                              builder: (BuildContext context, value, Widget? child) {
                                return FormBuilderTextField(
                                    name: 'view',
                                    initialValue: equipment.view,
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    readOnly: true,
                                    onTap: () {
                                      showView.value = !showView.value;
                                    },
                                    decoration: AppDecoration.inputEqDropDown('Вид оборудования', showView.value),
                                    validator: FormBuilderValidators.compose([
                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          AppSixeBox.size5,
                          ValueListenableBuilder(
                              valueListenable: showView,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(
                                      list: viewList,
                                      oniItemPressed: (index) {
                                        formKey.currentState?.fields['view']?.didChange(viewList[index].name);
                                        showView.value = false;
                                      },
                                      onAddTap: () {
                                        showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return newName(context, 'Новый вид оборудования');
                                            }).then((value) {
                                          BlocProvider.of<EquipmentBloc>(context)
                                              .add(EquipmentEvent.addViewInEdit(equipment, value!));
                                          showView.value = false;
                                        });
                                      });
                                } else {
                                  return AppSixeBox.size10;
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: showPlot,
                              builder: (BuildContext context, value, Widget? child) {
                                return FormBuilderTextField(
                                    name: 'plot',
                                    initialValue: equipment.plot,
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    readOnly: true,
                                    onTap: () {
                                      showPlot.value = !showPlot.value;
                                    },
                                    decoration: AppDecoration.inputEqDropDown('Участок', showPlot.value),
                                    validator: FormBuilderValidators.compose([
                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          AppSixeBox.size5,
                          ValueListenableBuilder(
                              valueListenable: showPlot,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(
                                      list: plotList,
                                      oniItemPressed: (index) {
                                        formKey.currentState?.fields['plot']?.didChange(plotList[index].name);
                                        showPlot.value = false;
                                      },
                                      onAddTap: () {
                                        showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return newName(context, 'Новый участок');
                                            }).then((value) {
                                          BlocProvider.of<EquipmentBloc>(context)
                                              .add(EquipmentEvent.addPlotInEdit(equipment, value!));
                                          showPlot.value = false;
                                        });
                                      });
                                } else {
                                  return AppSixeBox.size10;
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
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
                              valueListenable: showProftype,
                              builder: (BuildContext context, bool value, Widget? child) {
                                if (value) {
                                  return FormBuilderTextField(
                                      name: 'valueproftype',
                                      initialValue: equipment.valueproftype,
                                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                      decoration: AppDecoration.inputEq('Текущее значение работа/часов'),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                      ]));
                                } else {
                                  return const SizedBox();
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Информация',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.add,
                                    color: Color(0xFF8F9BB3),
                                  ),
                                  TextButton(
                                    child: Text('Добавить',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xFF8F9BB3), fontSize: 14, fontWeight: FontWeight.w700),
                                        )),
                                    onPressed: () {
                                      var uuid = const Uuid();
                                      infoList.add(InfoModel(id: uuid.v1(), equipmentid: equipment.id, info: ''));
                                      infoListChange.value = !infoListChange.value;
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          AppSixeBox.size16,
//-------------------------------------------------------------------------------------------------------------------------------
                          ValueListenableBuilder(
                              valueListenable: infoListChange,
                              builder: (BuildContext context, bool value, Widget? child) {
                                return FormBuilder(
                                  key: formInfoKey,
                                  child: Column(
                                    children: List<Widget>.generate(infoList.length, (index) {
                                      return Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              FormBuilderTextField(
                                                name: index.toString(),
                                                onChanged: (value) {
                                                  infoList[index] = infoList[index].copyWith(
                                                      id: infoList[index].id,
                                                      equipmentid: infoList[index].equipmentid,
                                                      info: value);
                                                },
                                                initialValue: infoList[index].info,
                                                style: const TextStyle(
                                                    color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                                decoration: AppDecoration.inputEq('Информация'),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    infoList.removeAt(index);
                                                    infoListChange.value = !infoListChange.value;
                                                  },
                                                  icon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown)),
                                            ],
                                          ),
                                          AppSixeBox.size16,
                                        ],
                                      );
                                    }),
                                  ),
                                );
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          AppButton.filledButton('Сохранить', onPressed: () {
                            final keys = formInfoKey.currentState?.fields.keys;
                            formKey.currentState?.saveAndValidate();
                            formInfoKey.currentState?.saveAndValidate();

/*
                            if (formKey.currentState?.saveAndValidate() ?? false) {
                              BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.addEquipment(EquipmentModel(
                                name1: formKey.currentState?.fields['name1']?.value,
                                name2: formKey.currentState?.fields['name2']?.value,
                                view: formKey.currentState?.fields['view']?.value,
                                plot: formKey.currentState?.fields['plot']?.value,
                                image: file?.path,
                              )));
                            }

 */
                          }),
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
