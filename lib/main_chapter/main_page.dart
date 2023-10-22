import 'package:dartz/dartz.dart';
import 'package:equipment/main_chapter/repository/main_chapter_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import 'package:equipment/widgets/text_extension.dart';
import '../profile/bloc/profile_bloc.dart';
import '../profile/profile_page.dart';
import '../template/screens.dart';
import '../widgets/dialog.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import '../works_day/works_day_01.dart';
import 'bloc/main_chapter_bloc.dart';
import 'main_dialog.dart';
import 'models/main_chapter.dart';
import '../other/other.dart';

typedef ChangeDayCallback = void Function(DateTime date);

//ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    date = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    return BlocProvider<MainChapterBloc>(
      create: (context) => MainChapterBloc(GetIt.instance.get<MainChapterRepository>(), false)..add(MainChapterEvent.initial(date!)),
      child: BlocConsumer<MainChapterBloc, MainChapterState>(listener: (context, state) {
        state.mapOrNull(
            dateChanged: (data) => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return dialogDateChanged(context, DateFormat('dd.MM.yyyy').format(data.date));
                }).whenComplete(() => BlocProvider.of<MainChapterBloc>(context).add(MainChapterEvent.initial(date!))),
            gotoWorkDay: (data) =>
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDayPage(date: data.date))));
      }, builder: (context, state) {
        return state.maybeMap(
          initial: (_) => const LoadingScreen(),
          loading: (_) => const LoadingScreen(),
          data: (data) => MainScreen(currentday: data.date, list: data.list),
          error: (_) => const ErrorScreen(),
          orElse: () => const ElseScreen(),
        );
      }),
    );
  }
}

//ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.list, required this.currentday}) : super(key: key);
  List<MainChapterData> list;
  DateTime currentday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      bottomNavigationBar: const AppNavigationBar(Nav.none),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: AppColor.blackColor,
              child: Column(
                children: [
                  const BarScreen(),
                  Calendar(
                      currentday: currentday,
                      onTap: (value) {
                        currentday = value;
                        context.read<MainChapterBloc>().add(MainChapterEvent.initial(value));
                      }),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: list.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/nonotification.svg'),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {
//                              String icon = 'assets/type${list[index].work.worktype!}.svg';
                              String oval = 'assets/oval${list[index].work.worktype!}.svg';
                              return InkWell(
// ------------------------------------------------------------------------------------------------------------------------------
                                onTap: () {
                                  if (list[index].work.priority!) {
                                    showDialog<Either<bool, DateTime>>(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return dialogPrioritet(context, list[index]);
                                            })
                                        .then((value) => value?.fold(
                                            (l) => context.read<MainChapterBloc>().add(MainChapterEvent.gotoWorkDay(currentday)),
                                            (r) => context
                                                .read<MainChapterBloc>()
                                                .add(MainChapterEvent.changeDate(list[index].work, r))));
                                  } else if (list[index].work.worktype! == 0) {
                                    showDialog<bool>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return dialogOrder(context, list[index]);
                                        }).then((value) {
                                      if (value!) {
                                        context.read<MainChapterBloc>().add(MainChapterEvent.gotoWorkDay(currentday));
                                      }
                                    });
                                  }
                                },
//-------------------------------------------------------------------------------------------------------------------------------
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
                                            Text(typeWorks(list[index].work)).style12w700(color: const Color(0xFF666666)),
//                                            SvgPicture.asset(icon)
                                            iconWork(list[index].work)
                                          ],
                                        ),
                                        Text(list[index].equipment!.name1!).style16w400(),
                                        Text(list[index].equipment!.name2!).style12w400(color: const Color(0xFF8D8D92)),
                                        Row(
                                          children: [
                                            SvgPicture.asset(oval),
                                            const SizedBox(width: 5),
                                            Text(list[index].work.name!).style14w700(),
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

//ignore: must_be_immutable
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
            const IconBox('assets/home.svg'),
            const SizedBox(width: 10),
            IconBox('assets/profile.svg', onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfilePage(const ProfileEvent.gotoUserDataScreen())));
            }),
            const SizedBox(width: 10),
          ],
        )
      ],
    );
  }
}

//ignore: must_be_immutable
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
            Text(date.day.toString()).style18w700(color: Colors.white),
            Text(dayweek[date.weekday - 1]).style12w300(color: Colors.white),
          ],
        ),
      );
    }

    Widget currentElement(int index, DateTime date, Color color) {
      return Container(
          width: 50,
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Padding(padding: const EdgeInsets.only(top: 10), child: element(index, date)));
    }

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List<Widget>.generate(7, (index) {
            return currentElement(
              index,
              list[index],
              list[index] == currentday ? Colors.blue : AppColor.blackColor,
            );
          })),
    );
  }
}
