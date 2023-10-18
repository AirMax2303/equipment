import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:equipment/models/models.dart';
import 'package:equipment/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../calendar/model/calendar_model.dart';
import '../widgets/dialog.dart';
import '../widgets/widgets.dart';

Dialog dialogWorkDay(BuildContext context, CalendarData calendar, int index) {
  double width = (MediaQuery.of(context).size.width / 13) * 8;

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
//-------------------------------------------------------------------------------------------------------------------------------
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconWork(calendar.list[index]),
                const SizedBox(width: 8),
                Container(
                    width: width,
                    decoration: BoxDecoration(color: AppColor.lightBlueColor, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(calendar.equipment.plot!).style14w700(color: AppColor.blueColor))),
                IconButton(
                    icon: SvgPicture.asset('assets/close.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
            Row(
              children: [
                Image.asset('assets/Group 482.png'),
                const SizedBox(
                  width: 5,
                ),
/*
                calendar.equipment!.image!.isEmpty
                    ? Image.asset('assets/Group 482.png')
                    : Image.file(File(calendar.equipment!.image!), width: 50, height: 50),
 */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(calendar.equipment!.name1!).style14w700(),
                    Text(calendar.equipment!.name2!).style12w400(),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 8,
            ),
//-------------------------------------------------------------------------------------------------------------------------------
            FormBuilderTextField(
              name: 'spare_parts',
              readOnly: true,
              initialValue: 'Зап. части и расходники',
              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
              decoration: AppDecoration.inputCustom('Зап. части и расходники',
                  prefixIcon: SvgPicture.asset('assets/setting.svg', fit: BoxFit.scaleDown),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF8B97A8))),
              onTap: () {
                showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return dialogInDeveloping(context);
                    });
              },
            ),
            const SizedBox(
              height: 10,
            ),
//-------------------------------------------------------------------------------------------------------------------------------
            Row(
              children: [
                SvgPicture.asset('assets/oval3.svg'),
                const SizedBox(width: 5),
                Text(calendar.list[index].name!).style16w700()
              ],
            ),
//-------------------------------------------------------------------------------------------------------------------------------
            const SizedBox(height: 16),
            AppButton.filledBlackButton('Выполнить', onPressed: () {
              Navigator.pop(context, left<bool, DateTime>(true));
            }),
            TextButton(
                child: const Text('Перенести').style12w300(),
                onPressed: () {
                  showDialog<DateTime>(
                      context: context,
                      builder: (BuildContext context) {
                        return dialogCalendar(context);
                      }).then((value) {
                    Navigator.pop(context, right<bool, DateTime>(value!));
                  });
                })
          ],
        ),
      ),
    ),
  );
}


dialogSaveWorkTime(BuildContext context, CalendarData calendar, int index) {
//  double width = (MediaQuery.of(context).size.width / 13) * 8;
  final formKey = GlobalKey<FormBuilderState>();
  String valuex = '1';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//-------------------------------------------------------------------------------------------------------------------------------
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconWork(calendar.list[index]),
                const SizedBox(width: 8),
                Container(
                    width: 250,
                    decoration: BoxDecoration(color: AppColor.lightBlueColor, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(calendar.equipment.plot!).style14w700(color: AppColor.blueColor))),
                IconButton(
                    icon: SvgPicture.asset('assets/close.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
            Text(calendar.equipment!.name1!).style14w700(),
            Text(calendar.equipment!.name2!).style12w400(),
            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
            Row(
              children: [
                SvgPicture.asset('assets/oval3.svg'),
                const SizedBox(width: 5),
                Text(calendar.list[index].name!).style16w700()
              ],
            ),
            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
            FormBuilder(
                key: formKey,
                child: FormBuilderTextField(
                  name: 'valuex',
                  initialValue: '1',
                  style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                  keyboardType: TextInputType.number,
                  decoration: AppDecoration.inputCustom('Введите текущее значение'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                    FormBuilderValidators.min(1),
                    FormBuilderValidators.max(999999),
                  ]),
                  onChanged: (value) {
                    valuex = value!;
                  },
                )),
            const SizedBox(height: 16),
            AppButton.filledBlackButton('Записать', onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                Navigator.pop(context, left<int, DateTime>(int.parse(valuex)));
              }
            }),
            Center(
              child: TextButton(
                  child: const Text('Перенести').style12w300(),
                  onPressed: () {
                    showDialog<DateTime>(
                        context: context,
                        builder: (BuildContext context) {
                          return dialogCalendar(context);
                        }).then((value) {
                      Navigator.pop(context, right<bool, DateTime>(value!));
                    });
                  }),
            )
          ],
        ),
      ),
    ),
  );
}
