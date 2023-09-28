import 'package:equipment/calendar/service/calendar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../equipment/models/equipment.dart';
import '../other/other.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';
import '../widgets/equipment/dialogs.dart';
import '../widgets/navigator.dart';
import '../widgets/no_notification.dart';
import '../widgets/widgets.dart';
import 'bloc/calendar_bloc.dart';
import 'model/calendar_model.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key, required this.date, required this.nav}) : super(key: key);
  final DateTime date;
  final Nav nav;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (BuildContext context) => CalendarBloc(GetIt.instance.get<CalendarService>())..add(CalendarEvent.getList(date)),
      child: BlocConsumer<CalendarBloc, CalendarState>(
        listener: (context, state) {
          state.mapOrNull(
            ok: (_) {
//            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
              loading: (_) => const CircularProgressIndicator(),
              data: (data) => CalendarScreen(list: data.list!, nav: nav),
              orElse: () => const NoNotification());
        },
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  CalendarScreen({Key? key, required this.list, required this.nav}) : super(key: key);
  final List<CalendarView> list;
  final Nav nav;
  String dateText = 'Выберите дату';
  final ValueNotifier<bool> changed = ValueNotifier<bool>(false);
  DateTime currentDay = DateTime.now();
  EquipmentModel equipment = const EquipmentModel(name1: 'Выберите оборудование', name2: '');

  @override
  Widget build(BuildContext context) {
    final List<bool> arrow = List<bool>.generate(list.length, (index) => false);
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.calendar),
      appBar: appBar(context, 'Календарь', {}, null),
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
                            AppSixeBox.size16,
//-------------------------------------------------------------------------------------------------------------------------------
                            IconBox(
                              children: [
                                Text(
                                  dateText,
                                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog<DateTime>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return dialogCalendar(
                                              context,
                                            );
                                          }).then((value) {
                                        currentDay = value!;
                                        dateText = dateFormat(currentDay);
                                        changed.value = !changed.value;
                                      });
                                    },
                                    icon: SvgPicture.asset('assets/calendar.svg')),
                              ],
                            ),
                            AppSixeBox.size16,
//-------------------------------------------------------------------------------------------------------------------------------
                            IconBox(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      equipment.name1!,
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      children: [
                                        equipment.name2!.isNotEmpty
                                            ? SvgPicture.asset(
                                                'assets/oval1.svg',
                                                width: 10,
                                              )
                                            : const SizedBox(),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          equipment.name2!,
                                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                        ),
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
                                        equipment = value!;
                                        changed.value = !changed.value;
                                      });
                                    },
                                    icon: SvgPicture.asset('assets/arrow_down.svg')),
                              ],
                            ),
                            AppSixeBox.size10,
//-------------------------------------------------------------------------------------------------------------------------------
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return CalendarCard(
                                calendarView: list[index],
                                selected: arrow[index],
                                index: index,
                                arrow: (value) {
                                  arrow[index] = !arrow[index];
                                  changed.value = !changed.value;
                                });
                          },
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
  const CalendarCard({Key? key, required this.calendarView, required this.selected, required this.index, required this.arrow})
      : super(key: key);
  final CalendarView calendarView;
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('23/04'),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        calendarView.calendar!.name1!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).style14w700(),
                      AppSixeBox.size5,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SvgPicture.asset(
                            oval,
                            width: 10,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Flexible(
                            child: Text(calendarView.calendar!.name2!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
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
          const Divider(
            thickness: 2,
          ),
          selected ? ListWorks(calendarView.list) : const SizedBox(),
        ],
      ),
    );
  }
}

class ListWorks extends StatelessWidget {
  ListWorks(this.list, {Key? key}) : super(key: key);
  List<WorkDayModel>? list;

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
                          SvgPicture.asset(
                            'assets/type${list![index].state!}.svg',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              list![index].name!,
                              maxLines: 1,
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                    AppSixeBox.size5,
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
