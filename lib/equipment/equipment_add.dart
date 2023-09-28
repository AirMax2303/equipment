import 'dart:io';

import 'package:equipment/equipment/bloc/equipment_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/equipment.dart';
import 'models/name.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'name_list.dart';

//ignore: must_be_immutable
class EquipmentAdd extends StatelessWidget {
  EquipmentAdd({Key? key, required this.viewList, required this.plotList}) : super(key: key);
  List<NameModel> viewList;
  List<NameModel> plotList;
  String image = '';
  File? file;
  final ValueNotifier<bool> refrash = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showView = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPlot = ValueNotifier<bool>(false);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Оборудование', {}, () {
        BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.getList());
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
                          FormBuilderTextField(
                              name: 'name1',
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputEq('Название 1'),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                              ])),
                          AppSixeBox.size16,
                          FormBuilderTextField(
                              name: 'name2',
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
                                          BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.addView(value!));
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
                                          BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.addPlot(value!));
                                          showPlot.value = false;
                                        });
                                      });
                                } else {
                                  return AppSixeBox.size10;
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          file != null
                              ? Image.file(
                                  File(file!.path),
                                  width: 250,
                                  height: 250,
                                )
                              : AppSixeBox.size5,
                          AppSixeBox.size10,
                          InkWell(
                            child: AppButton.addImageButten(),
                            onTap: () async {
                              FilePickerResult? result = await FilePicker.platform.pickFiles();
                              if (result != null) {
                                file = File(result.files.single.path!);
                                refrash.value = !refrash.value;
                              }
                            },
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          AppButton.filledButton('Добавить', onPressed: () {
                            if (formKey.currentState?.saveAndValidate() ?? false) {
                              BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.addEquipment(EquipmentModel(
                                name1: formKey.currentState?.fields['name1']?.value,
                                name2: formKey.currentState?.fields['name2']?.value,
                                view: formKey.currentState?.fields['view']?.value,
                                plot: formKey.currentState?.fields['plot']?.value,
                                valueproftype: 0,
                                image: file?.path ?? '',
                                status: 1,
                              )));
                            }
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

