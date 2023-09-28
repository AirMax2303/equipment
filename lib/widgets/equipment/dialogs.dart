import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../equipment/bloc/equipment_bloc.dart';
import '../../equipment/models/equipment.dart';
import '../../equipment/models/name.dart';
import '../../equipment/service/equipment_service.dart';
import '../widgets.dart';

Dialog selectEquipment(BuildContext context) {
  EquipmentModel? equipmentModel;
  final ValueNotifier<int> selected = ValueNotifier<int>(0);
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: BlocConsumer<EquipmentBloc, EquipmentState>(
        bloc: GetIt.instance.get<EquipmentBloc>()..add(const EquipmentEvent.initial()),
        listener: (context, state) {
          state.mapOrNull();
        },
        builder: (context, state) {
          return state.maybeMap(
            data: (data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
//===============================================================================================================================
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AppText.blackText14(
                                  'Оборудование',
                                ),
                                IconButton(
                                  onPressed: () {
                                    showDialog<SelectedFilter>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return filterEquipment(context, data.viewList, data.plotList);
                                        }).then((value) {
                                      if (value != null) {
                                        GetIt.instance.get<EquipmentBloc>().add(EquipmentEvent.setFilter(value));
                                        selected.value = 0;
                                      } else {
                                        GetIt.instance.get<EquipmentBloc>().add(EquipmentEvent.setFilter(SelectedFilter(
                                              filtername: '',
                                              value: '',
                                            )));
                                        selected.value = 0;
                                      }
                                    });
                                  },
                                  icon: SvgPicture.asset('assets/filter_blue.svg'),
                                )
                              ],
                            ),
                          ),
//===============================================================================================================================
                          Expanded(
                              child: SizedBox(
                            width: double.infinity,
                            child: ValueListenableBuilder(
                                valueListenable: selected,
                                builder: (BuildContext context, value, Widget? child) {
                                  return ListView.builder(
                                      itemCount: data.list.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {
                                            selected.value = index;
                                            equipmentModel = data.list[index];
                                          },
                                          child: Card(
                                            color: AppColor.backgroundColor,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: selected.value == index ? AppColor.blueColor : AppColor.backgroundColor),
                                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    data.list[index].name1!,
                                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset('assets/oval1.svg'),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        data.list[index].name2!,
                                                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                }),
                          )),
//===============================================================================================================================
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: Column(
                      children: [
                        AppSixeBox.size10,
                        AppButton.filledBlackButton('Сохранить', onPressed: () {
                          Navigator.pop(context, equipmentModel!);
                        }),
                        AppButton.textButton('Отменить', onPressed: () {
                          Navigator.pop(context);
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            orElse: () => Container(),
          );
        }),
  );
}

Dialog filterEquipment(BuildContext context, List<NameModel> viewWorks, List<NameModel> plotWorks) {
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
                            selected.value = 0;
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
                            selected.value = 0;
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
                            return InkWell(
                              onTap: () {
                                selected.value = index;
                              },
                              child: SizedBox(
                                width: double.infinity,
                                child: Card(
                                  color: AppColor.backgroundColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: selected.value == index ? AppColor.blueColor : AppColor.backgroundColor),
                                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      list[index].name!,
                                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      }),
//-----------------------------------------------------------------------------------------------------------------------------
                  const SizedBox(
                    height: 10,
                  ),
                  AppButton.filledBlackButton('Сохранить', onPressed: () {
                    final SelectedFilter filter =
                        SelectedFilter(filtername: type.value ? 'view' : 'plot', value: list[selected.value].name!);
                    Navigator.pop(context, filter);
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: AppText.blackText12('Отменить')),
                ],
              ),
            );
          }),
    ),
  );
}
