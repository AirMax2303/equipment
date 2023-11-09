import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:equipment/other/other.dart';

typedef ChangeDateCallback = void Function(DateTime date);

class CalendarApp extends StatelessWidget {
  CalendarApp({Key? key, this.date, required this.onChangeDate}) : super(key: key);
  DateTime? date;
  final ChangeDateCallback? onChangeDate;
  final List<String> dayweek = ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС'];
  final List<String> months = [
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сертябрь',
    'Октябрь',
    'Ноябрь',
    'Декбрь'
  ];
  ValueNotifier<DateTime> selectedDate =
      ValueNotifier<DateTime>(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
  ValueNotifier<DateTime> workDate = ValueNotifier<DateTime>(DateTime.now());

  @override
  Widget build(BuildContext context) {
    List<List<DateTime>> list = [];

    void make(DateTime date) {
      DateTime newDate;
      list = List<List<DateTime>>.empty(growable: true);
      newDate = DateTime(date.year, date.month, 1);
      print(newDate.weekday);
      newDate = Jiffy.parseFromDateTime(newDate).subtract(days: newDate.weekday - 1).dateTime;
      for (int j = 0; j < 7; j++) {
        list.add(List<DateTime>.empty(growable: true));
        for (int i = 0; i < 7; i++) {
          list[j].add(newDate);
          newDate = newDate.nextDay();
        }
      }
    }

    return ValueListenableBuilder(
        valueListenable: workDate,
        builder: (BuildContext context, DateTime date, Widget? child) {
          make(workDate.value);
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      workDate.value = workDate.value.prevMonth();
                    },
                    icon: SvgPicture.asset('assets/prev_month.svg'),
                  ),
                  Text(
                    months[workDate.value.month - 1],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    onPressed: () {
                      workDate.value = workDate.value.nextMonth();
                    },
                    icon: SvgPicture.asset('assets/next_month.svg'),
                  ),
                ],
              ),
              Text(
                workDate.value.year.toString(),
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const SizedBox()] + List.generate(7, (index) {
                  return SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      height: 40,
                      child: Text(
                        dayweek[index],
                        style: index < 5
                            ? const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)
                            : const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ));
                }),
              ),
              ValueListenableBuilder(
                valueListenable: selectedDate,
                builder: (BuildContext context, DateTime value, Widget? child) {
                  return Column(
                      children: List<Widget>.generate(6, (indexCol) {
                    return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List<Widget>.generate(7, (index) {
                          Color color =
                              selectedDate.value.compareTo(list[indexCol][index]) == 0 ? AppColor.blueColor : Colors.transparent;
                          Color textcolor =
                              selectedDate.value.compareTo(list[indexCol][index]) == 0 ? Colors.white : Colors.black;
                          return InkWell(
                            customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            onTap: () {
//                              if (list[indexCol][index].compareTo(DateTime.now()) > 0) {
                              selectedDate.value = list[indexCol][index];
                              onChangeDate!(list[indexCol][index]);
//                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 10,
                              height: 40,
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  list[indexCol][index].day.toString(),
                                  style: list[indexCol][index].weekday < 6
                                      ? list[indexCol][index].month == DateTime.now().month
                                          ? TextStyle(color: textcolor, fontSize: 15, fontWeight: FontWeight.w400)
                                          : const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)
                                      : list[indexCol][index].month == DateTime.now().month
                                          ? TextStyle(color: textcolor, fontSize: 15, fontWeight: FontWeight.w800)
                                          : const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          );
                        }));
                  }));
                },
              ),
            ],
          );
        });
  }
}
