import 'package:equipment/equipment/name/bloc/name_bloc.dart';
import 'package:equipment/equipment/service/equipment_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

import '../other/other.dart';
import '../widgets/widgets.dart';
import 'models/name.dart';

typedef NameCallback = void Function(NameModel value);

//ignore: must_be_immutable
class NameList extends StatelessWidget {
  NameList({Key? key, required this.typeName, required this.onNameCallback}) : super(key: key);
  bool typeName;
  NameCallback onNameCallback;

  Widget item(NameModel name, NameCallback onNameCallback) {
    return InkWell(
      onTap: () {
        onNameCallback(name);
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: AppColor.backgroundColor,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.all(8.0), child: Text(name.name!).style14w500()),
            ),
          ),
          const Divider(thickness: 1, height: 0),
        ],
      ),
    );
  }

  Widget buttonAdd(GestureTapCallback? onAddTap) {
    return InkWell(
      onTap: onAddTap,
      child: SizedBox(
        width: double.infinity,
        height: 82,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(color: AppColor.lightBlueColor, borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Добавить новое название').style14w700(),
                Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: const Icon(Icons.add, color: AppColor.blueColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NameBloc>(
      create: (BuildContext context) =>
          NameBloc(GetIt.instance.get<EquipmentService>(), typeName)..add(NameEvent.getList(typeName)),
      child: BlocConsumer<NameBloc, NameState>(
        listener: (context, state) => state.mapOrNull(),
        builder: (BuildContext context, NameState state) => state.maybeMap(
          orElse: () => Container(color: Colors.white,),
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => Column(
            children: [
              Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                child: Column(
                    children: List.generate(data.list!.length, (index) => item(data.list![index], onNameCallback)) +
                        [
                          buttonAdd(() {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) {
                                  return newName(context, typeName ? 'Новый вид оборудования' : 'Новый участок');
                                }).then((value) {
                              BlocProvider.of<NameBloc>(context).add(NameEvent.add(typeName, NameModel(name: value!)));
                            });
                          }),
                        ]),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

Dialog newName(BuildContext context, String title) {
  final formKey = GlobalKey<FormBuilderState>();
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: FormBuilder(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(title).style14w700(),
              ),
              const SizedBox(height: 16),
              FormBuilderTextField(
                  name: 'name',
                  style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                  decoration: AppDecoration.inputEq('Введите название'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                  ])),
              const SizedBox(height: 16),
              AppButton.filledBlackButton('Добавить', onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  Navigator.pop(context, formKey.currentState?.fields['name']?.value);
                }
              }),
              TextButton(
                child: const Text('Отменить').style12w300(),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}
