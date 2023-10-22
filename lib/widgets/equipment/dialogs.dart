import 'package:equipment/widgets/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../equipment/bloc/equipment_bloc.dart';
import '../../equipment/name_filter/bloc/name_filter_bloc.dart';
import '../../equipment/repository/equipment_repository.dart';
import '../../models/models.dart';
import '../../template/screens.dart';
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
                                const Text('Оборудование').style14w700(),
                                IconButton(
                                  onPressed: () {
                                    showDialog<EquipmentFilter>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return filterEquipment(context);
                                        }).then((value) {
                                      GetIt.instance.get<EquipmentBloc>().add(EquipmentEvent.setFilter(value!));
                                      selected.value = 0;
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
                                            equipmentModel = data.list[index].equipment;
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
                                                  Text(data.list[index].equipment!.name1!).style16w400(),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset('assets/oval1.svg'),
                                                      const SizedBox(width: 5),
                                                      Text(data.list[index].equipment!.name2!).style12w400(),
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
                        const SizedBox(height: 10),
                        AppFilledButton('Сохранить', onPressed: () {
                          Navigator.pop(context, equipmentModel!);
                        }),
                        TextButton(
                            child: const Text('Отменить').style13w500(),
                            onPressed: () {
                              Navigator.pop(context, null);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            loading: (_) => const EmptyScreen(),
            orElse: () => const EmptyScreen(),
          );
        }),
  );
}

Dialog filterEquipment(BuildContext context) {
  EquipmentFilter filter = EquipmentFilter(filterType: FilterType.view);
  ValueNotifier<int> selected = ValueNotifier<int>(0);
  double width = (MediaQuery.of(context).size.width - 80) / 2 + 2;
  return Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      insetPadding: const EdgeInsets.all(20),
      child: BlocProvider<NameFilterBloc>(
        create: (BuildContext context) =>
            NameFilterBloc(GetIt.instance.get<EquipmentRepository>())..add(const NameFilterEvent.getFilterList(true)),
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
                        const Text('Фильтр').style14w700(),
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
                              selected.value = 0;
                            },
                            style: AppButtonStyle.stdButtonStyle(
                                radius: filter.filterType == FilterType.view ? 10 : 0,
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
                              selected.value = 0;
                            },
                            style: AppButtonStyle.stdButtonStyle(
                                radius: filter.filterType == FilterType.view ? 0 : 10,
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
//-----------------------------------------------------------------------------------------------------------------------------
                    ValueListenableBuilder(
                        valueListenable: selected,
                        builder: (BuildContext context, int value, Widget? child) {
                          return Column(
                            children: List<Widget>.generate(data.list!.length, (index) {
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
                                          color: selected.value == index ? AppColor.blueColor : AppColor.backgroundColor,
                                        ),
                                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(data.list![index].name!).style13w500(),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        }),
//-----------------------------------------------------------------------------------------------------------------------------
                    const SizedBox(height: 10),
                    AppFilledButton('Сохранить', onPressed: () {
                      filter.value = data.list![selected.value].id!;
                      Navigator.pop(context, filter);
                    }),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context, EquipmentFilter(filterType: FilterType.none));
                        },
                        child: const Text('Отменить').style12w500()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ));
}
