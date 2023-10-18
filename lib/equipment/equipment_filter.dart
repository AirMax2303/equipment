import 'package:equipment/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../template/template01.dart';
import 'name/bloc/name_bloc.dart';
import 'name_filter/bloc/name_filter_bloc.dart';
import 'service/equipment_service.dart';
import '../widgets/widgets.dart';

Dialog selectTypeEq(BuildContext context) {
  EquipmentFilter filter = EquipmentFilter(filterType: FilterType.view);
  ValueNotifier<int> selected = ValueNotifier<int>(0);
  double width = (MediaQuery.of(context).size.width - 80) / 2 + 2;
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    insetPadding: const EdgeInsets.only(left: 20, right: 20),
    child: BlocProvider<NameFilterBloc>(
      create: (BuildContext context) =>
          NameFilterBloc(GetIt.instance.get<EquipmentService>())..add(const NameFilterEvent.getFilterList(true)),
      child: BlocConsumer<NameFilterBloc, NameFilterState>(
        listener: (context, state) => state.mapOrNull(),
        builder: (BuildContext context, NameFilterState state) => state.maybeMap(
          orElse: () => const EmptyScreen(),
          data: (data) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/filter_blue.svg'),
                      const SizedBox(width: 10),
                      AppText.blackText14('Фильтр'),
                    ],
                  ),
                  const SizedBox(height: 10),
//-----------------------------------------------------------------------------------------------------------------------------
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width,
                        child: FilledButton(
                          onPressed: () {
                            filter.filterType = FilterType.view;
                            BlocProvider.of<NameFilterBloc>(context).add(const NameFilterEvent.getFilterList(true));
                          },
                          style: AppButtonStyle.stdButtonStyle(radius: filter.filterType == FilterType.view ? 10 : 0,
                              color: filter.filterType == FilterType.view ? AppColor.blueColor : AppColor.lightBlueColor),
                          child: Text(
                            'Вид оборудования',
                            style: filter.filterType == FilterType.view
                                ? const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)
                                : const TextStyle(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: FilledButton(
                          onPressed: () {
                            filter.filterType = FilterType.plot;
                            BlocProvider.of<NameFilterBloc>(context).add(const NameFilterEvent.getFilterList(false));
                          },
                          style: AppButtonStyle.stdButtonStyle(radius: filter.filterType == FilterType.view ? 0 : 10,
                              color: filter.filterType == FilterType.view ? AppColor.lightBlueColor : AppColor.blueColor),
                          child: Text(
                            'Участок',
                            style: filter.filterType == FilterType.view
                                ? const TextStyle(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w400)
                                : const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
//-----------------------------------------------------------------------------------------------------------------------------
                  ValueListenableBuilder(
                      valueListenable: selected,
                      builder: (BuildContext context, int value, Widget? child) {
                        return Column(
                          children: List<Widget>.generate(data.list!.length, (index) {
                            return Column(
                              children: [
                                InkWell(
                                  child: AppTextBox.buttonTextBox(data.list![index].name!, selected.value == index),
                                  onTap: () {
                                    selected.value = index;
                                  },
                                ),
                                const SizedBox(height: 16),
                              ],
                            );
                          }),
                        );
                      }),
//-----------------------------------------------------------------------------------------------------------------------------
                  AppButton.filledBlackButton('Сохранить', onPressed: () {
                    filter.value = data.list![selected.value].id!;
                    Navigator.pop(context, filter);
                  }),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, EquipmentFilter(filterType: FilterType.none));
                      },
                      child: const Text('Отменить').style13w500()),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
