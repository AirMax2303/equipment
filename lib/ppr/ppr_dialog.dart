import 'package:equipment/widgets/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';
import '../widgets/dialog.dart';
import '../widgets/widgets.dart';

Dialog dialog13(BuildContext context, PprModel ppr) {
  final formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<int> repeatTimer = ValueNotifier<int>(ppr.repeatcount!);
  return Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      insetPadding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//-------------------------------------------------------------------------------------------------------------------------------
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/timer.svg'),
                  const Text('Настройка таймера').style14w700(),
                  IconButton(
                      icon: SvgPicture.asset('assets/close.svg'),
                      onPressed: () {
                        Navigator.pop(context, null);
                      })
                ],
              ),
              const SizedBox(height: 5),
//-------------------------------------------------------------------------------------------------------------------------------
              const Text('Повторять каждый').style16w500(),
              const SizedBox(height: 16),
              ValueListenableBuilder(
                  valueListenable: repeatTimer,
                  builder: (BuildContext context, value, Widget? child) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TimerButton(
                          text: 'День',
                          fill: value == 0,
                          onPressed: () {
                            repeatTimer.value = 0;
                            ppr = ppr.copyWith(repeatcount: 0);
                          },
                        ),
                        TimerButton(
                          text: 'Неделя',
                          fill: value == 1,
                          onPressed: () {
                            repeatTimer.value = 1;
                            ppr = ppr.copyWith(repeatcount: 1);
                          },
                        ),
                        TimerButton(
                          text: 'Месяц',
                          fill: value == 2,
                          onPressed: () {
                            repeatTimer.value = 2;
                            ppr = ppr.copyWith(repeatcount: 2);
                          },
                        ),
                      ],
                    );
                  }),
              const SizedBox(height: 16),
              const Text('Интервал').style16w500(),
//-------------------------------------------------------------------------------------------------------------------------------
              FormBuilder(
                key: formKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'interval',
                      initialValue: ppr.intervalcount.toString(),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                      decoration: AppDecoration.inputCustom('Интервал'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        FormBuilderValidators.min(1, errorText: 'Минимальное значение = 1'),
                        FormBuilderValidators.max(31, errorText: 'Максимальное значение = 31'),
                      ]),
                      onChanged: (value) {
                        ppr = ppr.copyWith(intervalcount: int.parse(value!));
                      },
                    ),
                    const SizedBox(height: 16),
                    FormBuilderTextField(
                      name: 'begindate',
                      readOnly: true,
                      initialValue: DateFormat('dd.MM.yyyy').format(ppr.begindate!),
                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                      decoration: AppDecoration.inputCustom('Начать с',
                          suffixIcon: SvgPicture.asset('assets/timer_white.svg', fit: BoxFit.scaleDown)),
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
                          formKey.currentState?.fields['begindate']?.didChange(DateFormat('dd.MM.yyyy').format(ppr.begindate!));
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    AppFilledButton('Сохранить', onPressed: () {
                      Navigator.pop(context, ppr);
                    }),
                  ],
                ),
              ),
//-------------------------------------------------------------------------------------------------------------------------------
            ],
          ),
        ),
      ));
}

Dialog dialog15(BuildContext context, PprModel ppr) {
  final formKey = GlobalKey<FormBuilderState>();
  return Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      insetPadding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//-------------------------------------------------------------------------------------------------------------------------------
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/timer.svg'),
                  const Text('Настройка таймера').style14w700(),
                  IconButton(
                      icon: SvgPicture.asset('assets/close.svg'),
                      onPressed: () {
                        Navigator.pop(context, null);
                      })
                ],
              ),
              const SizedBox(height: 5),
//-------------------------------------------------------------------------------------------------------------------------------
              FormBuilder(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Интервал/часы').style16w500(),
                    const SizedBox(height: 5),
                    FormBuilderTextField(
                      name: 'interval',
                      initialValue: ppr.intervalcount.toString(),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                      decoration: AppDecoration.inputCustom('1'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        FormBuilderValidators.min(1, errorText: 'Минимальное значение = 1'),
                        FormBuilderValidators.max(31, errorText: 'Максимальное значение = 99999'),
                      ]),
                      onChanged: (value) {
                        ppr = ppr.copyWith(intervalcount: int.parse(value!));
                      },
                    ),
                    const SizedBox(height: 16),
                    const Text('Начиная с/часы').style16w500(),
                    const SizedBox(height: 5),
                    FormBuilderTextField(
                      name: 'begin',
                      initialValue: ppr.beginint.toString(),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                      decoration: AppDecoration.inputCustom('1'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                        FormBuilderValidators.min(1),
                        FormBuilderValidators.max(99999),
                      ]),
                      onChanged: (value) {
                        ppr = ppr.copyWith(beginint: int.parse(value!));
                      },
                    ),
                    const SizedBox(height: 16),
                    AppFilledButton('Сохранить', onPressed: () {
                      Navigator.pop(context, ppr);
                    }),
                  ],
                ),
              ),
//-------------------------------------------------------------------------------------------------------------------------------
            ],
          ),
        ),
      ));
}

Dialog selectTimer(BuildContext context, PprModel ppr) {
  final formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<int> repeatTimer = ValueNotifier<int>(ppr.repeatcount!);
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
                  const Text('Настройка таймера').style14w700(),
                  IconButton(
                      icon: SvgPicture.asset('assets/close.svg'),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
              const SizedBox(height: 5),
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
                          const SizedBox(height: 16),
                          const Text('Повторять каждый').style16w500(),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimerButton(
                                text: 'День',
                                fill: value == 0,
                                onPressed: () {
                                  repeatTimer.value = 0;
                                  ppr = ppr.copyWith(repeatcount: 0);
                                },
                              ),
                              TimerButton(
                                text: 'Неделя',
                                fill: value == 1,
                                onPressed: () {
                                  repeatTimer.value = 1;
                                  ppr = ppr.copyWith(repeatcount: 1);
                                },
                              ),
                              TimerButton(
                                text: 'Месяц',
                                fill: value == 2,
                                onPressed: () {
                                  repeatTimer.value = 2;
                                  ppr = ppr.copyWith(repeatcount: 2);
                                },
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              const SizedBox(height: 16),
              ppr.proftype! ? const Text('Интервал/часы').style16w500() : const Text('Интервал').style16w500(),
              const SizedBox(height: 16),
              FormBuilder(
                key: formKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'interval',
                      initialValue: ppr.intervalcount.toString(),
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
                        ppr = ppr.copyWith(intervalcount: int.parse(value!));
                      },
                    ),
                    const SizedBox(height: 16),
                    ppr.proftype!
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Начиная с/часы').style16w500(),
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
              const SizedBox(height: 16),
              AppFilledButton('Сохранить', onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  Navigator.pop(context, ppr);
                }
              }),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    ),
  );
}

class TimerButton extends StatelessWidget {
  const TimerButton({Key? key, required this.text, required this.fill, required this.onPressed}) : super(key: key);
  final String text;
  final bool fill;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      height: 40,
      child: FilledButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 0,
          backgroundColor: fill ? AppColor.blueColor : AppColor.lightBlueColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) // <-- Radius
              ),
        ),
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
  const WorkTimeButton({Key? key, required this.text, required this.type}) : super(key: key);
  final String text;
  final bool type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 80) / 2 + 2,
      child: FilledButton(
        style: TextButton.styleFrom(
          elevation: 0,
          backgroundColor: type ? AppColor.blueColor : AppColor.lightBlueColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) // <-- Radius
              ),
        ),
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
