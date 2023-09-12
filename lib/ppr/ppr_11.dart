import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

class Ppr11Screen extends StatelessWidget {
  Ppr11Screen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, null),
      backgroundColor: Colors.white,
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
                      child: FormBuilder(
                        key: formKey,
                        child: Column(
                          children: [
                            FormBuilderSwitch(
                              title: const Text('Записать работа/часы'),
                              name: 'proftype',
                              initialValue: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              activeColor: AppColor.blueColor,
                              inactiveTrackColor: AppColor.lightBlueColor,
                              onChanged: (value) {},
                            ),
                            AppSixeBox.size16,
                            FormBuilderTextField(
                                name: 'name',
                                initialValue: 'sdvsdvsdv',
                                style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                decoration: AppDecoration.inputEq('Описание работы'),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                ])),
                            AppSixeBox.size16,
                            FormBuilderSwitch(
                              title: const Text('Приоритетная работа'),
                              name: 'priority',
                              initialValue: false,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              activeColor: AppColor.blueColor,
                              inactiveTrackColor: AppColor.lightBlueColor,
                              onChanged: (value) {},
                            ),
                            AppSixeBox.size16,
                            Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                FormBuilderTextField(
                                    name: 'timer',
                                    readOnly: true,
                                    initialValue: DateFormat('yyyy.MM.dd').format(DateTime.now()),
                                    style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                    decoration: AppDecoration.inputIcon('Таймер'),
                                    validator: FormBuilderValidators.compose([
                                      FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                    ])),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/timer_white.svg',
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.white,
                  child: AppButton.filledBlackButton('Добавить', onPressed: () {}),
                )
              ],
            ),
          )),
    );
  }
}
