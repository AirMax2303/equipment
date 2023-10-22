import 'package:dartz/dartz.dart';
import 'package:equipment/other/other.dart';
import 'package:equipment/works_day/repository/work_day_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:equipment/widgets/text_extension.dart';
import '../calendar/model/calendar_model.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';
import '../widgets/navigator.dart';
import '../widgets/no_notification.dart';
import '../widgets/widgets.dart';
import 'bloc/works_day_bloc.dart';
import 'dialogs.dart';

//ignore: must_be_immutable
class WorkDayPage extends StatelessWidget {
  WorkDayPage({Key? key, required this.date}) : super(key: key);
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkDayBloc>(
      create: (BuildContext context) =>
          WorkDayBloc(GetIt.instance.get<WorkDayRepository>(), false)..add(WorkDayEvent.getList(date!)),
      child: BlocConsumer<WorkDayBloc, WorkDayState>(
        listener: (context, state) {
          state.mapOrNull(
            dateChanged: (data) => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return dialogDateChanged(context, DateFormat('dd.MM.yyyy').format(date!));
                }).whenComplete(() => BlocProvider.of<WorkDayBloc>(context).add(WorkDayEvent.getList(date!))),
            workCompleted: (_) => showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return dialogWorkIsDone(context, false, 'Работа', 'выполнена');
                }).then((_) => context.read<WorkDayBloc>().add(WorkDayEvent.getList(date!))),
            workTimeSaved: (_) => showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return dialogWorkIsDone(context, false, 'Работа', 'выполнена');
                }).then((_) => context.read<WorkDayBloc>().add(WorkDayEvent.getList(date!))),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
              loading: (_) => const CircularProgressIndicator(),
              data: (data) => WorksDay01(date, data.list!),
              orElse: () => const NoNotification());
        },
      ),
    );
  }
}

class WorksDay01 extends StatelessWidget {
  WorksDay01(this.date, this.list, {Key? key}) : super(key: key);
  final DateTime? date;
  final List<CalendarData> list;
  final ItemScrollController scrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetController scrollOffsetController = ScrollOffsetController();
  final ValueNotifier<int> current = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.works),
      appBar: appBar(context, 'Работы на ${DateFormat('dd.MM.yyyy').format(date!)}', {}, null),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: list.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/done.svg'),
                    const SizedBox(height: 20),
                    const Text('Все работы выполнены').style18w700()
                  ],
                ),
              )
            : ValueListenableBuilder(
                valueListenable: current,
                builder: (BuildContext context, value, Widget? child) {
                  return ScrollablePositionedList.builder(
                      itemScrollController: scrollController,
                      itemPositionsListener: itemPositionsListener,
                      scrollOffsetController: scrollOffsetController,
//                  initialScrollIndex: 6,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: WordDayCard(
                              calendar: list[index],
                              selected: index == current.value,
                              index: index,
                              onArrow: (value) {
                                current.value = value;
                              }),
                          onTap: () {
                            current.value = index;
                          },
                        );
                      });
                }),
      )),
    );
  }
}

class WordDayCard extends StatelessWidget {
  const WordDayCard({Key? key, required this.calendar, required this.selected, required this.index, required this.onArrow})
      : super(key: key);
  final CalendarData calendar;
  final bool selected;
  final int index;
  final ItemCallback onArrow;

  @override
  Widget build(BuildContext context) {
    String oval = 'assets/oval1.svg';
    return Card(
        elevation: 0,
        color: AppColor.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(calendar.equipment.name1!).style14w700(),
                  calendar.list.length > 2
                      ? IconButton(
                          onPressed: () {
                            onArrow(index);
                          },
                          icon: selected ? SvgPicture.asset('assets/arrow_up.svg') : SvgPicture.asset('assets/arrow_down.svg'),
                          color: Colors.white)
                      : const SizedBox(),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  SvgPicture.asset(oval),
                  const SizedBox(width: 6),
                  Text(calendar.equipment.name2!).style12w400(),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: AppColor.lightBlueColor, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(calendar.equipment.plot!).style14w700(color: AppColor.blueColor),
                  )),
              WordDayCardWorks(calendar: calendar, current: selected),
            ],
          ),
        ));
  }
}

class WordDayCardWorks extends StatelessWidget {
  const WordDayCardWorks({Key? key, required this.calendar, required this.current}) : super(key: key);
  final CalendarData calendar;
  final bool current;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          current
              ? calendar.list.length
              : calendar.list.length < 3
                  ? calendar.list.length
                  : 2, (index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderSwitch(
              title: InkWell(
                onTap: () {
                  if (calendar.list[index].worktype == 3) {
                    showDialog<Either<int, DateTime>>(
                        context: context,
                        builder: (BuildContext context) {
                          return dialogSaveWorkTime(context, calendar, index);
                        }).then((value) => value?.fold(
                          (l) => context.read<WorkDayBloc>().add(WorkDayEvent.saveWorkTime(calendar.list[index], l)),
                          (r) => context.read<WorkDayBloc>().add(WorkDayEvent.changeDate(calendar.list[index], r)),
                        ));
                  } else if (calendar.list[index].worktype == 2) {
                    showDialog<Either<int, DateTime>>(
                        context: context,
                        builder: (BuildContext context) {
                          return dialogSaveWorkTime(context, calendar, index);
                        }).then((value) {
                      if (value != null) {
                        value.fold(
                          (l) => context.read<WorkDayBloc>().add(WorkDayEvent.completeWorkTime(calendar.list[index], l)),
                          (r) => context.read<WorkDayBloc>().add(WorkDayEvent.changeDate(calendar.list[index], r)),
                        );
                      } else {

                      }
                    });
                  } else {
                    showDialog<Either<bool, DateTime>>(
                        context: context,
                        builder: (BuildContext context) {
                          return dialogWorkDay(context, calendar, index);
                        }).then((value) => value?.fold(
                          (l) => context.read<WorkDayBloc>().add(WorkDayEvent.completeWork(calendar.list[index])),
                          (r) => context.read<WorkDayBloc>().add(WorkDayEvent.changeDate(calendar.list[index], r)),
                        ));
                  }
                },
                child: Row(
                  children: [
                    calendar.list[index].priority!
                        ? SvgPicture.asset('assets/type1.svg', width: 20, height: 20)
                        : calendar.list[index].worktype == 0
                            ? SvgPicture.asset('assets/type3.svg', width: 20, height: 20)
                            : const SizedBox(),
                    const SizedBox(width: 10),
                    Flexible(child: Text(calendar.list[index].name!, maxLines: 5).style12w400()),
                  ],
                ),
              ),
              name: 'proftype',
              initialValue: false,
              activeColor: AppColor.blueColor,
              inactiveTrackColor: AppColor.lightBlueColor,
              decoration: const InputDecoration(border: InputBorder.none),
              onChanged: (value) {
                if (calendar.list[index].worktype == 3) {
                  showDialog<Either<int, DateTime>>(
                      context: context,
                      builder: (BuildContext context) {
                        return dialogSaveWorkTime(context, calendar, index);
                      }).then((value) => value?.fold(
                        (l) => context.read<WorkDayBloc>().add(WorkDayEvent.saveWorkTime(calendar.list[index], l)),
                        (r) => context.read<WorkDayBloc>().add(WorkDayEvent.changeDate(calendar.list[index], r)),
                      ));
                } else if (calendar.list[index].worktype == 2) {
                  showDialog<Either<int, DateTime>>(
                      context: context,
                      builder: (BuildContext context) {
                        return dialogSaveWorkTime(context, calendar, index);
                      }).then((value) => value?.fold(
                        (l) => context.read<WorkDayBloc>().add(WorkDayEvent.completeWorkTime(calendar.list[index], l)),
                        (r) => context.read<WorkDayBloc>().add(WorkDayEvent.changeDate(calendar.list[index], r)),
                      ));
                } else {
                  context.read<WorkDayBloc>().add(WorkDayEvent.completeWork(calendar.list[index]));
                }
              },
            ),
            index < calendar.list.length - 1 ? const Divider(height: 1, thickness: 1, color: Colors.black) : const SizedBox(),
          ],
        );
      }),
    );
  }
}
