import '../../calendar/model/calendar_model.dart';
import '../../models/models.dart';
import '../../repository/repository.dart';

class WorkDayService {
  final AppRepository repo;
  List<CalendarData> list = [];

  WorkDayService(this.repo);

  Future<List<CalendarData>> getList(bool histiry, DateTime date) async {
    list.clear();
    final List<IdModel> equipmentList = await repo.calendarGetEquipmentModelList(histiry, date);
    for (var i = 0; i < equipmentList.length; ++i) {
      final equipments = await repo.getEquipment(equipmentList[i].id!);
      final workList = await repo.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
      equipmentList.isNotEmpty ? list.add(CalendarData(date, equipments[0], workList)) : null;
    }
    return list;
  }

  Future completeWork(WorkModel work) async {
    repo.completeWork(work);
  }

  Future saveWorkTime(WorkModel work, int value) async {
    repo.saveWorkTime(work, value);
  }

  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    repo.changeWorkDate(value, newDate);
  }

}
