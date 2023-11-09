import 'dart:io';

import 'package:equipment/order/model/order.dart';
import 'package:equipment/order/repository/order_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import '../main_chapter/main_page.dart';
import '../models/models.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';
import '../widgets/equipment/dialogs.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'bloc/order_bloc.dart';
import 'order_state.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (BuildContext context) => OrderBloc(GetIt.instance.get<OrderRepository>()),
      child: BlocConsumer<OrderBloc, OrderState>(listener: (context, state) {
        state.mapOrNull(
          error: (data) => showDialog(
              context: context,
              builder: (BuildContext context) {
                return dialogError(context, data.error);
              }),
          ok: (_) => showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return dialogWorkIsDone(context, false, 'Заявка', 'добавлена');
                  })
              .whenComplete(() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))))),
        );
      }, builder: (context, state) {
        return state.maybeMap(
          initial: (_) => OrderScreen(),
          error: (data) => OrderScreen(),
          orElse: () => Container(
            color: Colors.white,
          ),
        );
      }),
    );
  }
}

//ignore: must_be_immutable
class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();
  EquipmentModel? equipment;
  OrderModel order = OrderModel(dateorder: DateTime.now());
  File? file;
  final ValueNotifier<bool> showFile = ValueNotifier<bool>(false);
  final ValueNotifier<bool> dateChanged = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.add),
      appBar: appBar(context, 'Новая заявка', {}, null),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: SingleChildScrollView(
                child: FormBuilder(
                  key: formKey,
                  child: Column(
                    children: [
//------------------------------------------------------------------------------------------------------------------------------
                      const SizedBox(height: 16),
                      FormBuilderTextField(
                        name: 'equipment',
                        readOnly: true,
                        initialValue: '',
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Выберите оборудование',
                            suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF8B97A8))),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        ]),
                        onTap: () {
                          showDialog<EquipmentModel>(
                              context: context,
                              builder: (BuildContext context) {
                                return selectEquipment(context);
                              }).then((value) {
                            if (value != null) {
                              equipment = value;
                              order = order.copyWith(equipmentid: value.id!);
                              formKey.currentState?.fields['equipment']?.didChange(equipment!.name1!);
                            }
                          });
                        },
                      ),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      StateEquipment(onPressed: (value) {
                        order = order.copyWith(state: value);
                      }),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'description',
                        maxLines: 5,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom(
                          'Описание работы',
                          suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        ]),
                        onChanged: (value) {
                          order = order.copyWith(description: value);
                        },
                      ),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'parts',
                        readOnly: true,
                        initialValue: 'Зап. части и расходники',
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Зап. части и расходники',
                            suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF8B97A8))),
                        onTap: () {
                          showDialog<bool>(
                              context: context,
                              builder: (BuildContext context) {
                                return dialogInDeveloping(context);
                              });
                        },
                        onChanged: (value) {
                          order = order.copyWith(partsid: '');
                        },
                      ),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'dateorder',
                        initialValue: DateFormat('dd.MM.yyyy').format(order.dateorder!),
                        readOnly: true,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Назначьте дату',
                            suffixIcon: SvgPicture.asset('assets/timer_white.svg', fit: BoxFit.scaleDown)),
                        onTap: () {
                          showDialog<DateTime>(
                              context: context,
                              builder: (BuildContext context) {
                                return dialogCalendar(context);
                              }).then((value) {
                            order = order.copyWith(dateorder: value);
                            formKey.currentState?.fields['dateorder']?.didChange(
                              DateFormat('dd.MM.yyyy').format(value!),
                            );
                          });
                        },
                      ),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'malfunction',
                        maxLines: 5,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Причина неисправности',
                            suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown)),
                        onChanged: (value) {
                          order = order.copyWith(malfunction: value);
                        },
                      ),
                      const SizedBox(height: 16),
//------------------------------------------------------------------------------------------------------------------------------
                      ValueListenableBuilder(
                          valueListenable: showFile,
                          builder: (BuildContext context, value, Widget? child) {
                            return file != null ? Image.file(File(file!.path), width: 250, height: 250) : const SizedBox();
                          }),
                      const SizedBox(height: 16),
                      SelectImageButton(
                        onTap: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles();
                          if ((result != null) && (result.files.isNotEmpty)) {
                            file = File(result.files.single.path!);
                            order = order.copyWith(image: file!.path);
                            showFile.value = !showFile.value;
                          }
                        },
                      ),
//------------------------------------------------------------------------------------------------------------------------------
                    ],
                  ),
                ),
              ),
            )),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 55,
              color: Colors.white,
              child: AppFilledButton('Добавить', onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  context.read<OrderBloc>().add(OrderEvent.addOrder(order));
                }
              }),
            )
          ],
        ),
      )),
    );
  }
}
