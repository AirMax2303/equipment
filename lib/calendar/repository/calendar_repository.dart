import '../../models/models.dart';
import '../../service/service.dart';
import '../model/calendar_model.dart';

class CalendarRepository {
  final AppService service;
  List<CalendarData> list = [];

  CalendarRepository(this.service);

  Future<List<CalendarData>> getCalendarList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await service.calendarGetDateModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await service.getEquipment(equipmentList[i].id!);
      final workList = await service.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      if (equipments.isNotEmpty) {
        list.add(CalendarData(date, equipments[0], workList));
      };
    }
    return list;
  }

  Future<List<CalendarData>> getCalendarEquipmentList(bool histiry, String equipmentid) async {
    list.clear();
    final equipments = await service.getEquipment(equipmentid);
    final List<DateModel> dateList = await service.calendarGetEquipmentModelList(histiry, equipmentid);
    for (var i = 0; i < dateList.length; ++i) {
      final workList = await service.calendarGetWorkModelEquipmentList(histiry, dateList[i].workdate!, equipmentid);
      if (workList.isNotEmpty) {
        list.add(CalendarData(dateList[i].workdate!, equipments[0], workList));
      }
    }
    return list;
  }
}
