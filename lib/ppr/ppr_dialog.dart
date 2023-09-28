import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../widgets/dialog.dart';
import '../widgets/widgets.dart';
import 'model/ppr.dart';

Dialog selectTimer(BuildContext context, PprModel ppr) {
  final formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<int> repeatTimer = ValueNotifier<int>(ppr.repeat!);
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/timer.svg'),
                  AppText.blackText14('Настройка таймера'),
                  IconButton(
                      icon: SvgPicture.asset('assets/close.svg'),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
              AppSixeBox.size5,
              Visibility(
                  visible: ppr.proftype!,
                  child: Row(
                    children: [
                      WorkTimeButton(text: 'По работа/часам', type: ppr.proftype!),
                      WorkTimeButton(text: 'По времени', type: !ppr.proftype!),
                    ],
                  )),
              Visibility(
                visible: !ppr.proftype!,
                child: ValueListenableBuilder(
                    valueListenable: repeatTimer,
                    builder: (BuildContext context, value, Widget? child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppSixeBox.size16,
                          AppText.blackText16('Повторять каждый'),
                          AppSixeBox.size16,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimerButton(
                                text: 'День',
                                fill: value == 0,
                                onPressed: () {
                                  repeatTimer.value = 0;
                                  ppr = ppr.copyWith(repeat: 0);
                                },
                              ),
                              TimerButton(
                                text: 'Неделя',
                                fill: value == 1,
                                onPressed: () {
                                  repeatTimer.value = 1;
                                  ppr = ppr.copyWith(repeat: 1);
                                },
                              ),
                              TimerButton(
                                text: 'Месяц',
                                fill: value == 2,
                                onPressed: () {
                                  repeatTimer.value = 2;
                                  ppr = ppr.copyWith(repeat: 2);
                                },
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              AppSixeBox.size16,
              ppr.proftype! ? AppText.blackText16('Интервал/часы') : AppText.blackText16('Интервал'),
              AppSixeBox.size16,
              FormBuilder(
                key: formKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'interval',
                      initialValue: ppr.interval.toString(),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                      decoration: AppDecoration.inputCustom('Интервал'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        FormBuilderValidators.min(1, errorText: 'Минимальное значение = 1'),
                        ppr.proftype!
                            ? FormBuilderValidators.max(99999, errorText: 'Максимальное значение = 99999')
                            : FormBuilderValidators.max(31, errorText: 'Максимальное значение = 31'),
                      ]),
                      onChanged: (value) {
                        ppr = ppr.copyWith(interval: int.parse(value!));
                      },
                    ),
                    AppSixeBox.size16,
                    ppr.proftype!
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.blackText16('Начиная с/часы'),
                              FormBuilderTextField(
                                name: 'begin',
                                initialValue: ppr.beginint.toString(),
                                keyboardType: TextInputType.number,
                                style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                                decoration: AppDecoration.inputCustom(
                                  '1',
                                ),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                                  FormBuilderValidators.min(1),
                                  FormBuilderValidators.max(99999),
                                ]),
                                onChanged: (value) {
                                  ppr = ppr.copyWith(beginint: int.parse(value!));
                                },
                              ),
                            ],
                          )
                        : FormBuilderTextField(
                            name: 'begindate',
                            readOnly: true,
                            initialValue: DateFormat('dd.MM.yyyy').format(ppr.begindate!),
                            style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                            decoration: AppDecoration.inputCustom(
                              'Начать с',
                              suffixIcon: SvgPicture.asset(
                                'assets/timer_white.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            ]),
                            onTap: () {
                              showDialog<DateTime>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return dialogCalendar(context);
                                  }).then((value) {
                                ppr = ppr.copyWith(begindate: value!);
                                formKey.currentState?.fields['begindate']
                                    ?.didChange(DateFormat('dd.MM.yyyy').format(ppr.begindate!));
                              });
                            },
                          ),
                  ],
                ),
              ),
              AppSixeBox.size16,
              AppButton.filledBlackButton('Сохранить', onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  Navigator.pop(context, ppr);
                }
              }),
              AppSixeBox.size16,
            ],
          ),
        ),
      ),
    ),
  );
}

//ignore: must_be_immutable
class TimerButton extends StatelessWidget {
  TimerButton({Key? key, required this.text, required this.fill, required this.onPressed}) : super(key: key);
  final String text;
  final bool fill;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      height: 40,
      child: FilledButton(
        onPressed: onPressed,
        style: AppButtonStyle.stdButtonStyle(color: fill ? AppColor.blueColor : AppColor.lightBlueColor),
        child: Text(
          text,
          style: fill
              ? const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)
              : const TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

//ignore: must_be_immutable
class WorkTimeButton extends StatelessWidget {
  WorkTimeButton({
    Key? key,
    required this.text,
    required this.type,
  }) : super(key: key);
  String text;
  bool type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 80) / 2 + 2,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(color: type ? AppColor.blueColor : AppColor.lightBlueColor),
        onPressed: () {},
        child: Text(
          text,
          style: type
              ? const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)
              : const TextStyle(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
