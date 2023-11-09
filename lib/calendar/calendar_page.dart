import 'package:equipment/calendar/repository/calendar_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import 'package:equipment/widgets/text_extension.dart';
import '../equipment/bloc/equipment_bloc.dart';
import '../equipment/equipment_page.dart';
import '../main_chapter/main_page.dart';
import '../models/models.dart';
import '../other/other.dart';
import '../template/screens.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';
import '../widgets/equipment/dialogs.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'bloc/calendar_bloc.dart';
import 'model/calendar_model.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key, required this.histiry, required this.date, required this.nav, this.event}) : super(key: key);
  final bool? histiry;
  final DateTime date;
  final Nav nav;
  final CalendarEvent? event;

  @override
  Widget build(BuildContext context) {
    CalendarRepositoryAbstract service;
    if (histiry!) {
      service = GetIt.instance.get<CalendarRepository>();
    } else {
      service = GetIt.instance.get<SeriesRepository>();
    }
    return BlocProvider<CalendarBloc>(
      create: (BuildContext context) => CalendarBloc(service, histiry)..add(event ?? const CalendarEvent.initial()),
      child: BlocConsumer<CalendarBloc, CalendarState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (data) => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return dialogError(context, data.error);
                }),
            ok: (_) {
//            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
              initial: (_) => const Center(
                      child: CircularProgressIndicator(
                    backgroundColor: AppColor.blueColor,
                  )),
              loading: (_) => const Scaffold(
                    backgroundColor: Colors.white,
                    body: Center(
                        child: CircularProgressIndicator(
                      backgroundColor: AppColor.blueColor,
                    )),
                  ),
              error: (_) => CalendarScreen(
                    list: const [],
                    nav: nav,
                    currentDay: DateTime.now(),
                    equipment: const EquipmentModel(
                      name1: 'Выберите оборудование',
                      name2: '',
                    ),
                    lastPage: event == null,
                  ),
              data: (data) => CalendarScreen(
                    list: data.list!,
                    nav: nav,
                    currentDay: data.date,
                    equipment: const EquipmentModel(
                      name1: 'Выберите оборудование',
                      name2: '',
                    ),
                    lastPage: event == null,
                  ),
              equipmentData: (data) => CalendarScreen(
                    list: data.list!,
                    nav: nav,
                    currentDay: DateTime.now(),
                    equipment: data.equipment,
                    lastPage: event == null,
                  ),
              orElse: () => const ElseScreen());
        },
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  CalendarScreen(
      {Key? key,
      required this.list,
      required this.nav,
      required this.currentDay,
      required this.equipment,
      required this.lastPage})
      : super(key: key);
  final List<CalendarData> list;
  final Nav nav;
  DateTime currentDay;
  EquipmentModel equipment;
  final bool lastPage;
  String dateText = '';

  final ValueNotifier<bool> changed = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final List<bool> arrow = List<bool>.generate(list.length, (index) => false);
    String dateText = DateFormat('dd.MM.yyyy').format(currentDay);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AppNavigationBar(nav),
      appBar: appBar(context, nav == Nav.calendar ? 'Календарь' : 'История', {}, () {
        if (lastPage) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MainPage(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))));
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EquipmentPage(event: EquipmentEvent.gotoDetailScreen(equipment.id!))));
        }
      }),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: changed,
              builder: (BuildContext context, value, Widget? child) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 155,
                        color: Colors.white,
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                            IconBox(
                              children: [
                                Text(dateText).style13w500(),
                                IconButton(
                                    onPressed: () {
                                      showDialog<DateTime>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return dialogCalendar(context);
                                          }).then((value) {
                                        if (value != null) {
                                          currentDay = value;
                                          dateText = DateFormat('dd.MM.yyyy').format(currentDay);
                                          changed.value = !changed.value;
                                          BlocProvider.of<CalendarBloc>(context).add(CalendarEvent.getList(currentDay));
                                        }
                                      });
                                    },
                                    icon: SvgPicture.asset('assets/calendar.svg')),
                              ],
                            ),
                            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                            IconBox(
                              children: [
                                Column(
                                  children: [
                                    Text(equipment.name1!).style14w400(),
                                    Row(
                                      children: [
                                        equipment.name2!.isNotEmpty
                                            ? SvgPicture.asset('assets/oval1.svg', width: 10)
                                            : const SizedBox(),
                                        const SizedBox(width: 5),
                                        Text(equipment.name2!).style12w500(),
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog<EquipmentModel>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return selectEquipment(context);
                                          }).then((value) {
                                        if (value != null) {
                                          equipment = value;
                                          changed.value = !changed.value;
                                          BlocProvider.of<CalendarBloc>(context).add(CalendarEvent.getEquipmentList(equipment));
                                        } else {
                                          BlocProvider.of<CalendarBloc>(context).add(CalendarEvent.getList(currentDay));
                                        }
                                      });
                                    },
                                    icon: SvgPicture.asset('assets/arrow_down.svg')),
                              ],
                            ),
                            const SizedBox(height: 10),
//-------------------------------------------------------------------------------------------------------------------------------
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.white,
                        child: list.isNotEmpty
                            ? ListView.builder(
                                itemCount: list.length,
                                itemBuilder: (context, index) {
                                  return CalendarCard(
                                      calendar: list[index],
                                      selected: arrow[index],
                                      index: index,
                                      arrow: (value) {
                                        arrow[index] = !arrow[index];
                                        changed.value = !changed.value;
                                      });
                                },
                              )
                            : Center(
                                child: SvgPicture.asset('assets/nonotification.svg'),
                              ),
                      )),
                    ],
                  ),
                );
              })),
    );
  }
}

class CalendarCard extends StatelessWidget {
  const CalendarCard({Key? key, required this.calendar, required this.selected, required this.index, required this.arrow})
      : super(key: key);
  final CalendarData calendar;
  final bool selected;
  final int index;
  final ItemCallback arrow;

  @override
  Widget build(BuildContext context) {
    String oval = 'assets/oval1.svg';
    return Card(
      elevation: 0,
      color: AppColor.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DateFormat('dd/MM').format(calendar.date)),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(calendar.equipment.name1!, maxLines: 1, overflow: TextOverflow.ellipsis).style14w700(),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SvgPicture.asset(oval, width: 10),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(calendar.equipment.name2!, maxLines: 1, overflow: TextOverflow.ellipsis).style12w400(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    arrow(index);
                  },
                  icon: selected ? SvgPicture.asset('assets/arrow_up.svg') : SvgPicture.asset('assets/arrow_down.svg'),
                ),
              ],
            ),
          ),
          const Divider(thickness: 2),
          selected ? ListWorks(calendar.list) : const SizedBox(),
        ],
      ),
    );
  }
}

class ListWorks extends StatelessWidget {
  ListWorks(this.list, {Key? key}) : super(key: key);
  List<WorkModel>? list;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            list!.length,
            (index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: <Widget>[
                          list![index].priority!
                              ? SvgPicture.asset('assets/type1.svg', width: 20, height: 20)
                              : list![index].worktype! == 0
                                  ? SvgPicture.asset('assets/type3.svg', width: 20, height: 20)
                                  : const SizedBox(),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(list![index].name!,
                                maxLines: 1,
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                overflow: TextOverflow.ellipsis),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                )));
  }
}

class IconBox extends StatelessWidget {
  const IconBox({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.backgroundColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          ),
        ),
      ),
    );
  }
}
