import '../../models/models.dart';
import '../../repository/repository.dart';
import '../model/calendar_model.dart';

class CalendarService {
  final AppRepository repo;
  List<CalendarData> list = [];

  CalendarService(this.repo);

  Future<List<CalendarData>> getCalendarList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await repo.calendarGetEquipmentModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await repo.getEquipment(equipmentList[i].id!);
      final workList = await repo.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      equipments.isNotEmpty ? list.add(CalendarData(date, equipments[0], workList)) : null;
    }
    return list;
  }
}
