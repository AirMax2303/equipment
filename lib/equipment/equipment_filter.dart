import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'models/name.dart';
import 'service/equipment_service.dart';
import '../widgets/widgets.dart';

Dialog selectTypeEq(BuildContext context, List<NameModel> viewWorks, List<NameModel> plotWorks) {
  ValueNotifier<bool> type = ValueNotifier<bool>(true);
  ValueNotifier<int> selected = ValueNotifier<int>(0);
  List<NameModel> list = [];
  list.clear();
  list.addAll(viewWorks);
  double width = (MediaQuery.of(context).size.width - 80) / 2 + 2;
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ValueListenableBuilder(
          valueListenable: type,
          builder: (BuildContext context, bool date, Widget? child) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/filter_blue.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      AppText.blackText14('Фильтр'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
//-----------------------------------------------------------------------------------------------------------------------------
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width,
                        child: FilledButton(
                          onPressed: () {
                            type.value = !type.value;
                            list.clear();
                            list.addAll(viewWorks);
                          },
                          style: AppButtonStyle.stdButtonStyle(color: type.value ? AppColor.blueColor : AppColor.lightBlueColor),
                          child: Text(
                            'Вид оборудования',
                            style: type.value
                                ? const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)
                                : const TextStyle(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: FilledButton(
                          onPressed: () {
                            type.value = !type.value;
                            list.clear();
                            list.addAll(plotWorks);
                          },
                          style: AppButtonStyle.stdButtonStyle(color: type.value ? AppColor.lightBlueColor : AppColor.blueColor),
                          child: Text(
                            'Участок',
                            style: type.value
                                ? const TextStyle(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w400)
                                : const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
//-----------------------------------------------------------------------------------------------------------------------------
                  ValueListenableBuilder(
                      valueListenable: selected,
                      builder: (BuildContext context, int value, Widget? child) {
                        return Column(
                          children: List<Widget>.generate(list.length, (index) {
                            return Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  child: AppTextBox.buttonTextBox(list[index].name!, selected.value == index),
                                  onTap: () {
                                    selected.value = index;
                                  },
                                ),
                              ],
                            );
                          }),
                        );
                      }),
//-----------------------------------------------------------------------------------------------------------------------------
                  const SizedBox(
                    height: 10,
                  ),
                  AppButton.filledBlackButton('Сохранить', onPressed: () {
                    final SelectedFilter sf =
                        SelectedFilter(filtername: type.value ? 'view' : 'plot', value: list[selected.value].name!);
                    Navigator.pop(context, jsonEncode(sf.toJson()));
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'back');
                      },
                      child: AppText.blackText12('Отменить')),
                ],
              ),
            );
          }),
    ),
  );
}
