import 'package:jiffy/jiffy.dart';

import '../../calendar/model/calendar_model.dart';
import '../../models/models.dart';
import '../../other/other.dart';
import '../../service/service.dart';

class WorkDayRepository {
  final AppService service;
  List<CalendarData> list = [];

  WorkDayRepository(this.service);

  Future<List<CalendarData>> getList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await service.calendarGetDateModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await service.getEquipment(equipmentList[i].id!);
      final workList = await service.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      if (equipments.isNotEmpty & workList.isNotEmpty) {
        list.add(CalendarData(date, equipments[0], workList));
      } else {
        print('--------- Future<List<CalendarData>> getList(bool histiry, DateTime date) --------');
        print('equipmentList[$i].id! ${equipmentList[i].id!}');
      }
    }
    return list;
  }

  Future completeWork(WorkModel work) async {
    await service.completeWork(work);
    if (work.worktype == 1 || work.worktype == 3) {
      final List<PprModel> pprList = await service.getPPR(work.pprid!);
      if (pprList.isNotEmpty) {
        work = work.copyWith(workdate: newDate(pprList[0].repeatcount!, pprList[0].intervalcount!, work.workdate)!);
        await service.addWork(work);
      }
    }
  }

  Future completeWorkTime(WorkModel work, int value) async {
    await service.completeWork(work);
    await service.saveWorkTime(work, value);
    await service.addProfType(ProfTypeModel(equipmentid: work.equipmentid, workdate: DateTime.now(), valuex: value));
  }

  Future saveWorkTime(WorkModel work, int value) async {
    await service.saveWorkTime(work, value);
    await service.addProfType(ProfTypeModel(equipmentid: work.equipmentid, workdate: DateTime.now(), valuex: value));
    List<PprModel> pprList = await service.getPPR(work.pprid!);
    if (pprList.isNotEmpty) {
      await service.changeWorkDate(work, newDate(pprList[0].repeatcount!, pprList[0].intervalcount!, work.workdate)!);
    }
    pprList = await service.getPPRList(PprType.workTime, work.equipmentid!);
    if (pprList.isNotEmpty) {
      for (var i = 0; i < pprList.length; ++i) {
        if (pprList[i].beginint! <= value) {
          pprList[i] = pprList[i].copyWith(beginint: pprList[i].intervalcount! + value);
          service.updatePPRBeginInt(pprList[i]);
          await service.addWork(WorkModel(
              pprid: pprList[i].id,
              equipmentid: pprList[i].equipmentid,
              partsid: '',
              name: pprList[i].name,
              worktype: 2,
              priority: pprList[i].priority,
              image: pprList[i].image,
              workdate: DateTime.now(),
              workisdone: false));
        }
      }
    }
  }

  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    await service.changeWorkDate(value, newDate);
  }

  DateTime? newDate(int repeatcount, int intervalcount, DateTime? date) {
    DateTime? newDate;
      newDate = date;
      switch (repeatcount) {
        case 0:
          {
            newDate = Jiffy.parseFromDateTime(date!).add(days: intervalcount).dateTime;
          }
        case 1:
          {
          newDate = Jiffy.parseFromDateTime(date!).add(days: intervalcount * 7).dateTime;
          }
        case 2:
          {
          newDate = Jiffy.parseFromDateTime(date!).add(months: intervalcount).dateTime;
          }
      }
    return newDate;
  }
}
