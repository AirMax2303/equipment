import 'dart:io';

import 'package:equipment/order/model/order.dart';
import 'package:equipment/order/service/order_service.dart';
import 'package:equipment/other/other.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import '../equipment/models/equipment.dart';
import '../main_chapter/main_page.dart';
import '../ppr/ppr_10.dart';
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
      create: (BuildContext context) => OrderBloc(GetIt.instance.get<OrderService>()),
      child: BlocConsumer<OrderBloc, OrderState>(listener: (context, state) {
        state.mapOrNull(
          ok: (_) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        );
      }, builder: (context, state) {
        return OrderScreen();
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
                      AppSixeBox.size16,
                      FormBuilderTextField(
                        name: 'equipment',
                        readOnly: true,
                        initialValue: '',
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Выберите оборудование',
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF8B97A8),
                            )),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        ]),
                        onTap: () {
                          showDialog<EquipmentModel>(
                              context: context,
                              builder: (BuildContext context) {
                                return selectEquipment(context);
                              }).then((value) {
                            equipment = value;
                            formKey.currentState?.fields['equipment']?.didChange(equipment!.name1!);
                          });
                        },
                        onChanged: (value) {
                          order = order.copyWith(equipmentid: equipment?.id!, name1: equipment?.name1, name2: equipment?.name2);
                        },
                      ),
                      AppSixeBox.size16,
//------------------------------------------------------------------------------------------------------------------------------
                      StateEquipment(onPressed: (value) {
                        order = order.copyWith(state: value);
                      }),
                      AppSixeBox.size16,
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
                      AppSixeBox.size16,
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'parts',
                        readOnly: true,
                        initialValue: 'Зап. части и расходники',
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Зап. части и расходники',
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF8B97A8),
                            )),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Ppr10Screen()));
                        },
                        onChanged: (value) {
                          order = order.copyWith(partsid: '');
                        },
                      ),
                      AppSixeBox.size16,
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'dateorder',
                        initialValue: DateFormat('dd.MM.yyyy').format(DateTime.now().nextDay()),
                        readOnly: true,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Назначьте дату',
                            suffixIcon: SvgPicture.asset(
                              'assets/timer_white.svg',
                              fit: BoxFit.scaleDown,
                            )),
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
                      AppSixeBox.size16,
//------------------------------------------------------------------------------------------------------------------------------
                      FormBuilderTextField(
                        name: 'malfunction',
                        maxLines: 5,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom(
                          'Причина неисправности',
                          suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
                        ),
                        onChanged: (value) {
                          order = order.copyWith(malfunction: value);
                        },
                      ),
                      AppSixeBox.size16,
//------------------------------------------------------------------------------------------------------------------------------
                      ValueListenableBuilder(
                          valueListenable: showFile,
                          builder: (BuildContext context, value, Widget? child) {
                            return file != null
                                ? Image.file(
                                    File(file!.path),
                                    width: 250,
                                    height: 250,
                                  )
                                : const SizedBox();
                          }),
                      AppSixeBox.size16,
                      InkWell(
                        child: AppButton.addImageButten(),
                        onTap: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles();
                          if (result != null) {
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
            AppSixeBox.size16,
            Container(
              width: double.infinity,
              height: 55,
              color: Colors.white,
              child: AppButton.filledBlackButton('Добавить', onPressed: () {
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
