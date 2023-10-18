import 'dart:io';

import 'package:equipment/equipment/bloc/equipment_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../models/models.dart';
import '../profile/service/profile_service.dart';
import 'models/name.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'name_list.dart';

//ignore: must_be_immutable
class EquipmentAdd extends StatelessWidget {
  EquipmentAdd({Key? key}) : super(key: key);
  String image = '';
  File? file;
  final ValueNotifier<bool> refresh = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showView = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showPlot = ValueNotifier<bool>(false);
  EquipmentModel equipmentModel = const EquipmentModel(proftype: false, image: '');
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
            padding: const EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: refresh,
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
                            ]),
                            onChanged: (value) {
                              equipmentModel = equipmentModel.copyWith(name1: value);
                            },
                          ),
                          const SizedBox(height: 16),
                          FormBuilderTextField(
                            name: 'name2',
                            style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                            decoration: AppDecoration.inputEq('Название 2'),
                            validator: FormBuilderValidators.compose([
//                                FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            ]),
                            onChanged: (value) {
                              equipmentModel = equipmentModel.copyWith(name2: value);
                            },
                          ),
                          const SizedBox(height: 16),
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
//                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          const SizedBox(height: 5),
                          ValueListenableBuilder(
                              valueListenable: showView,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(typeName: true, onNameCallback: (NameModel value) {
                                        formKey.currentState?.fields['view']?.didChange(value.name);
                                        equipmentModel = equipmentModel.copyWith(viewid: value.id, view: value.name);
                                        showView.value = false;
                                      });
                                } else {
                                  return const SizedBox(height: 10);
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
//                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ]));
                              }),
                          const SizedBox(height: 5),
                          ValueListenableBuilder(
                              valueListenable: showPlot,
                              builder: (BuildContext context, value, Widget? child) {
                                if (value) {
                                  return NameList(typeName: false, onNameCallback: (NameModel value) {
                                        formKey.currentState?.fields['plot']?.didChange(value.name);
                                        equipmentModel = equipmentModel.copyWith(plotid: value.id, plot: value.name);
                                        showPlot.value = false;
                                      });
                                } else {
                                  return const SizedBox(height: 10);
                                }
                              }),
//-------------------------------------------------------------------------------------------------------------------------------
                          file != null
                              ? Image.file(
                                  File(file!.path),
                                  width: 250,
                                  height: 250,
                                )
                              : const SizedBox(height: 5),
                          const SizedBox(height: 10),
                          InkWell(
                            child: AppButton.addImageButten(),
                            onTap: () async {
                              FilePickerResult? result = await FilePicker.platform.pickFiles();
                              if ((result != null) && (result.files.isNotEmpty)) {
                                file = File(result.files.single.path!);
                                equipmentModel = equipmentModel.copyWith(image: result.files[0].path);
                                refresh.value = !refresh.value;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          AppButton.filledButton('Добавить', onPressed: () {
                            if (formKey.currentState?.saveAndValidate() ?? false) {
                              final ProfileService profileService = GetIt.instance.get<ProfileService>();
                              equipmentModel = equipmentModel.copyWith(clientid: profileService.profile.id);
                              BlocProvider.of<EquipmentBloc>(context).add(EquipmentEvent.addEquipment(equipmentModel));
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
