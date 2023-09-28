import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equipment/main_chapter/service/work_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../profile/bloc/profile_bloc.dart';
import '../profile/profile_page.dart';
import '../widgets/navigator.dart';
import '../widgets/no_notification.dart';
import '../widgets/widgets.dart';
import '../works_day/works_day_01.dart';
import 'bloc/works_bloc.dart';
import 'main_dialog.dart';
import 'models/work.dart';
import '../other/other.dart';

typedef ChangeDayCallback = void Function(DateTime date);

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkBloc>(
      create: (context) => WorkBloc(GetIt.instance.get<WorkService>())
        ..add(WorksEvent.initial(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))),
      child: BlocConsumer<WorkBloc, WorksState>(listener: (context, state) {
        state.mapOrNull(
            gotoPPR5: (_) => null,
/*
            gotoPPR5: (_) => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PprPage(
                          equipmentid: '',
                          lastState: LastState.main,
                        ))),
 */
            gotoWorkDay: (data) =>
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDayPage(date: data.date))));
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) {
            return MainScreen(
              currentday: data.date,
              list: data.list,
            );
          },
          orElse: () {
            return const NoNotification();
          },
        );
      }),
    );
  }
}

class Calendar extends StatelessWidget {
  Calendar({
    Key? key,
    required this.currentday,
    required this.onTap,
  }) : super(key: key);
  DateTime? currentday;
  ChangeDayCallback? onTap;
  final List<String> dayweek = ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС'];

  @override
  Widget build(BuildContext context) {
    final List<DateTime> list = [];

    var newDate = currentday;
    newDate = DateTime(newDate!.year, newDate.month, newDate.day - (newDate.weekday - 1));
    for (int i = 0; i < 7; i++) {
      list.add(newDate!);
      newDate = DateTime(newDate.year, newDate.month, newDate.day + 1);
    }

    Widget element(int index, DateTime date) {
      return InkWell(
        onTap: () {
          onTap!(list[index]);
        },
        child: Column(
          children: [
            Text(
              date.day.toString(),
              style: AppTextStyle.whiteTextStyle18,
            ),
            Text(
              dayweek[date.weekday - 1],
              style: AppTextStyle.whiteTextStyle12,
            ),
          ],
        ),
      );
    }

    Widget currentElement(int index, DateTime date, Color color) {
      return Container(
          width: 50,
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: element(index, date),
          ));
    }

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List<Widget>.generate(7, (index) {
            return currentElement(index, list[index], list[index] == currentday ? Colors.blue : Colors.black);
          })),
    );
  }
}

//ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.list, required this.currentday}) : super(key: key);
  List<WorkModel> list;
  DateTime currentday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const AppNavigationBar(Nav.none),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  const BarScreen(),
                  Calendar(
                    currentday: currentday,
                    onTap: (value) {
                      currentday = value;
                      context.read<WorkBloc>().add(WorksEvent.initial(value));
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          String icon = 'assets/type${list[index].status!}.svg';
                          String oval = 'assets/oval${list[index].status!}.svg';
                          return InkWell(
                            onTap: () {
//-------------------------------------------------------------------------------------------------------------------------------
                              if (list[index].status! == 0) {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return dialogPrioritet(context, list[index]);
                                    }).then((value) {
                                  if (value == 'execute') {
                                    context.read<WorkBloc>().add(WorksEvent.gotoWorkDay(currentday));
                                  } else if (value != 'back') {
                                    showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return dialogInfo(
                                            context,
                                            value!,
                                          );
                                        }).then((value) {
// TODO Изменить дату
                                    });
                                  }
                                });
//-------------------------------------------------------------------------------------------------------------------------------
                              } else if (list[index].status! == 1) {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return dialogNapominanie(context, list[index]);
                                    }).then((value) {
                                  if (value == 'execute') {
                                    context.read<WorkBloc>().add(const WorksEvent.gotoPPR5());
                                  }
                                });
//-------------------------------------------------------------------------------------------------------------------------------
                              } else {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return dialogOrder(context, list[index]);
                                    }).then((value) {
                                  if (value == 'execute') {
                                    context.read<WorkBloc>().add(WorksEvent.gotoWorkDay(currentday));
                                  }
                                });
                              }
//-------------------------------------------------------------------------------------------------------------------------------
                            },
                            child: Card(
                              color: const Color(0xFFF9F9F9),
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(typeWorks[list[index].status!]).style12w700(color: const Color(0xFF666666)),
                                        SvgPicture.asset(icon)
                                      ],
                                    ),
                                    Text(list[index].name1!).style16w400(),
                                    Text(list[index].name2!).style12w400(color: const Color(0xFF8D8D92)),
                                    Row(
                                      children: [
                                        SvgPicture.asset(oval),
                                        const SizedBox(width: 5),
                                        Text(typeWorks[list[index].status!]).style14w700(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })))
          ],
        ),
      ),
    );
  }
}

class BarScreen extends StatelessWidget {
  const BarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/logo.svg'),
        Row(
          children: [
            AppIcons.iconButton(
                image: 'assets/home.svg',
                color: Colors.white,
                onPressed: () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => SedMessage()));
                }),
            const SizedBox(
              width: 10,
            ),
            AppIcons.iconButton(
                image: 'assets/profile.svg',
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfilePage(const ProfileEvent.gotoUserDataScreen())));
                }),
            const SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
