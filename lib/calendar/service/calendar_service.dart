import '../../models/models.dart';
import '../../repository/repository.dart';
import '../model/calendar_model.dart';

class CalendarService {
  final AppRepository repo;
  List<CalendarData> list = [];

  CalendarService(this.repo);

  Future<List<CalendarData>> getCalendarList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await repo.calendarGetDateModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await repo.getEquipment(equipmentList[i].id!);
      final workList = await repo.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      if (equipments.isNotEmpty) {
        list.add(CalendarData(date, equipments[0], workList));
      };
    }
    return list;
  }

  Future<List<CalendarData>> getCalendarEquipmentList(bool histiry, String equipmentid) async {
    list.clear();
    final equipments = await repo.getEquipment(equipmentid);
    final List<DateModel> dateList = await repo.calendarGetEquipmentModelList(histiry, equipmentid);
    for (var i = 0; i < dateList.length; ++i) {
      final workList = await repo.calendarGetWorkModelEquipmentList(histiry, dateList[i].workdate!, equipmentid);
      if (workList.isNotEmpty) {
        list.add(CalendarData(dateList[i].workdate!, equipments[0], workList));
      }
    }
    return list;
  }
}
