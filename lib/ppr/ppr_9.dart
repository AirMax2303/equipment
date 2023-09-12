import 'package:equipment/other/other.dart';
import 'package:equipment/ppr/ppr_10.dart';
import 'package:equipment/ppr/ppr_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

//ignore: must_be_immutable
class Ppr9Screen extends StatelessWidget {
  Ppr9Screen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<bool> proftype = ValueNotifier<bool>(false);
  PprTimer pprTimer = PprTimer(begindate: DateTime.now().nextDay());

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
              child: SingleChildScrollView(
                child: FormBuilder(
                  key: formKey,
                  child: Column(
                    children: [
                      FormBuilderSwitch(
                        title: const Text('Записать работа/часы'),
                        name: 'proftype',
                        initialValue: false,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        activeColor: AppColor.blueColor,
                        inactiveTrackColor: AppColor.lightBlueColor,
                        onChanged: (value) {
                          proftype.value = value!;
                          if (value) {
                            pprTimer.proftype = value;
                            formKey.currentState?.fields['name']?.didChange('Записать работа/часы');
                            pprTimer.name = 'Записать работа/часы';
                          }
                        },
                      ),
                      AppSixeBox.size16,
                      ValueListenableBuilder(
                          valueListenable: proftype,
                          builder: (BuildContext context, value, Widget? child) {
                            return FormBuilderTextField(
                                name: 'name',
                                readOnly: value,
                                style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                textAlign: value ? TextAlign.center : TextAlign.start,
                                decoration: AppDecoration.inputCustom('Описание работы',
                                    fillColor: value ? AppColor.lightBlueColor : null),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                ]),
                            onChanged: (value) {
                              pprTimer.name = value;
                            },);
                          }),
                      FormBuilderSwitch(
                        title: const Text('Приоритетная работа'),
                        name: 'priority',
                        initialValue: false,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        activeColor: AppColor.blueColor,
                        inactiveTrackColor: AppColor.lightBlueColor,
                        onChanged: (value) {
                          pprTimer.priority = value;
                        },
                      ),
                      FormBuilderTextField(
                        name: 'timer',
                        initialValue: DateFormat('dd.MM.yyyy').format(DateTime.now().nextDay()),
                        readOnly: true,
                        style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        decoration: AppDecoration.inputCustom('Таймер',
                            suffixIcon: SvgPicture.asset(
                              'assets/timer_white.svg',
                              fit: BoxFit.scaleDown,
                            )),
                        onTap: () {
                          showDialog<PprTimer>(
                              context: context,
                              builder: (BuildContext context) {
                                return proftype.value
                                  ? selectTimer(context, pprTimer)
                                  : selectTimer(context, pprTimer);
                              }).then((value) => pprTimer = value!);
                        },
                      ),
                      AppSixeBox.size16,
                      ValueListenableBuilder(
                          valueListenable: proftype,
                          builder: (BuildContext context, value, Widget? child) {
                            return Column(
                              children: [
                                value
                                    ? const SizedBox()
                                    : Column(
                                        children: [
                                          FormBuilderTextField(
                                            name: 'spare_parts',
                                            readOnly: true,
                                            initialValue: 'Зап. части и расходники',
                                            style:
                                                const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                            decoration: AppDecoration.inputCustom('Зап. части и расходники',
                                                prefixIcon: SvgPicture.asset(
                                                  'assets/setting.svg',
                                                  fit: BoxFit.scaleDown,
                                                ),
                                                suffixIcon: const Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xFF8B97A8),
                                                )),
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Ppr10Screen()));
                                            },
                                          )
                                        ],
                                      ),
                              ],
                            );
                          }),
                    ],
                  ),
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
