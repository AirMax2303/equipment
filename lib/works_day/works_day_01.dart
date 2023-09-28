import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../calendar/bloc/calendar_bloc.dart';
import '../calendar/model/calendar_model.dart';
import '../calendar/service/calendar_service.dart';
import '../main_chapter/main_page.dart';
import '../other/other.dart';
import '../profile/userdata.dart';
import '../widgets/navigator.dart';
import '../widgets/no_notification.dart';
import '../widgets/widgets.dart';
import 'dialogs.dart';

//ignore: must_be_immutable
class WorkDayPage extends StatelessWidget {
  WorkDayPage({Key? key, required this.date}) : super(key: key);
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (BuildContext context) => CalendarBloc(GetIt.instance.get<CalendarService>())..add(CalendarEvent.getList(date!)),
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
              data: (data) => WorksDay01(data.list!),
              orElse: () => const NoNotification());
        },
      ),
    );
  }
}

class WorksDay01 extends StatelessWidget {
  WorksDay01(this.list, {Key? key}) : super(key: key);
  final List<CalendarView> list;
  final ItemScrollController scrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetController scrollOffsetController = ScrollOffsetController();
  final ValueNotifier<int> current = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.works),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: AppText.whiteText14('Работы'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
            },
            icon: SvgPicture.asset('assets/back-arrow.svg')),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
              },
              icon: SvgPicture.asset('assets/home_white.svg')),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserDataScreen()));
              },
              icon: SvgPicture.asset('assets/profile_white.svg')),
        ],
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: ValueListenableBuilder(
            valueListenable: current,
            builder: (BuildContext context, value, Widget? child) {
              return ScrollablePositionedList.builder(
                  itemScrollController: scrollController,
                  itemPositionsListener: itemPositionsListener,
                  scrollOffsetController: scrollOffsetController,
                  initialScrollIndex: 6,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: WordDayCard(
                          calendarView: list[index],
                          selected: index == current.value,
                          index: index,
                          arrow: (value) {
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
  const WordDayCard({Key? key, required this.calendarView, required this.selected, required this.index, required this.arrow})
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
        shape: RoundedRectangleBorder(
          side: BorderSide(color: selected ? Colors.black : AppColor.backgroundColor),
          borderRadius: const BorderRadius.all(Radius.circular(0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(calendarView.calendar!.name1!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                  calendarView.list!.length > 2
                      ? IconButton(
                          onPressed: () {
                            arrow(index);
                          },
                          icon: selected ? SvgPicture.asset('assets/arrow_up.svg') : SvgPicture.asset('assets/arrow_down.svg'),
                          color: Colors.white,
                        )
                      : const SizedBox(),
                ],
              ),
              AppSixeBox.size5,
              Row(
                children: [
                  SvgPicture.asset(oval),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(calendarView.calendar!.name2!, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
              AppSixeBox.size5,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: AppColor.lightBlueColor, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(calendarView.calendar!.plot!,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.blueColor)),
                ),
              ),
              WordDayCardWorks(
                list: calendarView.list!,
                current: selected,
              ),
            ],
          ),
        ));
  }
}

class WordDayCardWorks extends StatelessWidget {
  const WordDayCardWorks({Key? key, required this.list, required this.current}) : super(key: key);
  final List<WorkDayModel> list;
  final bool current;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          current
              ? list.length
              : list.length < 3
                  ? list.length
                  : 2, (index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderSwitch(
              title: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    list[index].priority! ? SvgPicture.asset('assets/type1.svg') : const SizedBox(),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text(
                      list[index].name!,
                      maxLines: 5,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    )),
                  ],
                ),
              ),
              name: 'proftype',
              initialValue: false,
              activeColor: AppColor.blueColor,
              inactiveTrackColor: AppColor.lightBlueColor,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: (value) {
                showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return dialogMain2(
                        context,
                      );
                    }).then((value) => null);
              },
            ),
            index < list.length - 1
                ? const Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black,
                  )
                : const SizedBox(),
          ],
        );
      }),
    );
  }
}
