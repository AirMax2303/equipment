import 'dart:math';
import 'package:dio/dio.dart';
import 'package:equipment/models/models.dart';
import '../../service/service.dart';
import '../models/main_chapter.dart';

class MainChapterRepository {
  final AppService service;
  List<MainChapterData> list = [];
  DateTime? date;

  MainChapterRepository(this.service);

  Future<List<MainChapterData>> getMainChapterList(bool histiry, DateTime value) async {
    list.clear();
    try {
      final List<WorkModel> workList = await service.calendarGetWorkModelList(histiry, value);
      for (var i = 0; i < workList.length; ++i) {
        final equipments = await service.getEquipment(workList[i].equipmentid!);
        if (equipments.isNotEmpty) {
          list.add(MainChapterData(equipments[0], workList[i]));
        }
      }
      date = value;
    } on DioException catch (e) {
      print(e);
    }
    return list;
  }

  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    service.changeWorkDate(value, newDate);
  }
}
