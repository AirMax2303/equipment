import 'dart:math';
import 'package:equipment/models/models.dart';

import '../../repository/repository.dart';
import '../models/main_chapter.dart';

class MainChapterService {
  final AppRepository repo;
  List<MainChapterData> list = [];
  DateTime? date;

  MainChapterService(this.repo);

  Future<List<MainChapterData>> getMainChapterList(bool histiry, DateTime value) async {
    list.clear();
    final List<WorkModel> workList = await repo.calendarGetWorkModelList(histiry, value);
    for (var i = 0; i < workList.length; ++i) {
      final equipments = await repo.getEquipment(workList[i].equipmentid!);
      equipments.isNotEmpty ? list.add(MainChapterData(equipments[0], workList[i])) : null;
    }
    date = value;
    return list;
  }

  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    repo.changeWorkDate(value, newDate);
  }
}
