import 'dart:math';
import 'package:uuid/uuid.dart';

import '../model/calendar_model.dart';

class CalendarService {
  List<CalendarModel> list = [];
  List<CalendarView> viewList = [];

  get random => null;

  Future<List<CalendarModel>> getCalendarList(DateTime date) async {
    return list;
  }

  Future<List<CalendarView>> getCalendarViewList(DateTime date) async {
    var uuid = const Uuid();
    Random random = Random();
    int r = random.nextInt(3);
    viewList = List<CalendarView>.generate(20, (index) {
      r = random.nextInt(3);
      return CalendarView(
        calendar: CalendarModel(
          name1: uuid.v1().substring(1, 30),
          name2: uuid.v1().substring(1, 30),
          plot: uuid.v1().substring(1, 30),
        ),
        list: List<WorkDayModel>.generate(r + 1, (index) {
          r = random.nextInt(3);
          return WorkDayModel(name: uuid.v1().substring(1, 30), state: r + 1, priority: index == 1 ? true : false);
        }),
      );
    });
    return viewList;
  }
}
