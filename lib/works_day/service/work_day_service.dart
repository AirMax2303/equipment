import 'package:jiffy/jiffy.dart';

import '../../calendar/model/calendar_model.dart';
import '../../models/models.dart';
import '../../repository/repository.dart';

class WorkDayService {
  final AppRepository repo;
  List<CalendarData> list = [];

  WorkDayService(this.repo);

  Future<List<CalendarData>> getList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await repo.calendarGetDateModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await repo.getEquipment(equipmentList[i].id!);
      final workList = await repo.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      equipmentList.isNotEmpty ? list.add(CalendarData(date, equipments[0], workList)) : null;
    }
    return list;
  }

  Future completeWork(WorkModel work) async {
    await repo.completeWork(work);
    final List<PprModel> ppr = await repo.getPPR(work.pprid!);
    if (ppr.isNotEmpty) {
      work = work.copyWith(workdate: newDate(work, ppr[0]));
      await repo.addWork(work);
    }
  }

  Future saveWorkTime(WorkModel work, int value) async {
    await repo.saveWorkTime(work, value);
    await repo.addProfType(ProfTypeModel(equipmentid: work.equipmentid, workdate: DateTime.now(), valuex: value));
    final List<PprModel> ppr = await repo.getPPR(work.pprid!);
    if (ppr.isNotEmpty) {
      await repo.changeWorkDate(work, newDate(work, ppr[0]));
    }
  }

  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    await repo.changeWorkDate(value, newDate);
  }

  DateTime newDate(WorkModel work, PprModel ppr) {
    if (ppr.proftype!) {
      work = work.copyWith(workdate: Jiffy.parseFromDateTime(work.workdate!).add(hours: ppr.intervalcount!).dateTime);
    } else {
      switch (ppr.repeatcount) {
        case 0:
          {
            work = work.copyWith(workdate: Jiffy.parseFromDateTime(work.workdate!).add(days: ppr.intervalcount!).dateTime);
          }
        case 1:
          {
            work = work.copyWith(workdate: Jiffy.parseFromDateTime(work.workdate!).add(days: ppr.intervalcount! * 7).dateTime);
          }
        case 2:
          {
            work = work.copyWith(workdate: Jiffy.parseFromDateTime(work.workdate!).add(months: ppr.intervalcount!).dateTime);
          }
      }
    }
    return work.workdate!;
  }
}
