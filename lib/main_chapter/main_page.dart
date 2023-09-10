import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equipment/main_chapter/service/work_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../pofile/bloc/profile_bloc.dart';
import '../pofile/profile_page.dart';
import '../ppr/ppr5.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import '../works_day/works_day_01.dart';
import 'bloc/works_bloc.dart';
import 'main_dialog.dart';

typedef ChangeDayCallback = void Function(int date);

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

//  final ValueNotifier<int> currentday = ValueNotifier<int>(DateTime.now().weekday - 1);
  int currentday = DateTime.now().weekday - 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkBloc>(
      create: (context) => WorkBloc(GetIt.instance.get<WorkService>())..add(const WorksEvent.initial()),
      child: BlocConsumer<WorkBloc, WorksState>(listener: (context, state) {
        state.mapOrNull(
            gotoPPR5: (_) => Navigator.push(context, MaterialPageRoute(builder: (context) => const PPR5())),
            gotoWorkDay01: (_) => Navigator.push(context, MaterialPageRoute(builder: (context) => const WorksDay01())));
      }, builder: (context, state) {
        return state.maybeMap(
            loading: (_) => const CircularProgressIndicator(),
            orElse: () {
              return const SizedBox();
            },
            data: (data) {
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
                              currentday,
                              onTap: (value) {
                                currentday = value;
                                context.read<WorkBloc>().add(const WorksEvent.initial());
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
                                  itemCount: data.list.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final String icon = 'assets/type' + int.parse(data.list[index].status!).toString() + '.svg';
                                    final String oval = 'assets/oval' + int.parse(data.list[index].status!).toString() + '.svg';
                                    return InkWell(
                                      onTap: () {
//-------------------------------------------------------------------------------------------------------------------------------
                                        if (data.list[index].status! == '1') {
                                          showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return dialogPrioritet(context, data.list[index]);
                                              }).then((value) {
                                            if (value == 'execute') {
                                              context.read<WorkBloc>().add(const WorksEvent.gotoWorkDay01());
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
                                        } else if (data.list[index].status! == '2') {
                                          showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return dialogNapominanie(context, data.list[index]);
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
                                                return dialogOrder(context, data.list[index]);
                                              }).then((value) {
                                            if (value == 'execute') {
                                              context.read<WorkBloc>().add(const WorksEvent.gotoWorkDay01());
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
                                                  Text(
                                                    data.list[index].type!,
                                                    style: const TextStyle(
                                                        color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.w700),
                                                  ),
                                                  SvgPicture.asset(icon)
                                                ],
                                              ),
                                              Text(
                                                data.list[index].name1!,
                                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                              Text(
                                                data.list[index].name2!,
                                                style: const TextStyle(
                                                    color: Color(0xFF8D8D92), fontSize: 12, fontWeight: FontWeight.w400),
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(oval),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    data.list[index].work!,
                                                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                                                  ),
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
            });
      }),
    );
  }
}

class Calendar extends StatelessWidget {
  Calendar(
    this.currentday, {
    Key? key,
    required this.onTap,
  }) : super(key: key);
  int currentday;
  ChangeDayCallback? onTap;
  final List<String> dayweek = ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС'];

  @override
  Widget build(BuildContext context) {
    final List<DateTime> list = [];

    var newDate = DateTime.now();
    newDate = DateTime(newDate.year, newDate.month, newDate.day - (newDate.weekday - 1));
    for (int i = 0; i < 7; i++) {
      list.add(newDate);
      newDate = DateTime(newDate.year, newDate.month, newDate.day + 1);
    }

    Widget element(int index, DateTime date) {
      return InkWell(
        onTap: () {
          onTap!(index);
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
            return currentElement(index, list[index], index == currentday ? Colors.blue : Colors.black);
          })),
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

