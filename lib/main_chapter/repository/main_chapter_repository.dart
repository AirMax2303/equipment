import 'dart:math';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equipment/models/models.dart';
import 'package:equipment/repository/repository.dart';
import '../../service/error_response.dart';
import '../../service/service.dart';
import '../models/main_chapter.dart';

class MainChapterRepository extends AppRepository {
  final AppService service;
  List<MainChapterData> list = [];
  DateTime? date;

  MainChapterRepository(this.service);

  Future<Either<ErrorResponse, List<MainChapterData>>> initial(bool histiry, DateTime value) async {
    try {
      list.clear();
      changeNotWorked();
      final List<WorkModel> workList = await service.calendarGetWorkModelList(histiry, value);
      print('------------ initial ----------');
      print('workList.length : ${workList.length}');
      for (var i = 0; i < workList.length; ++i) {
        List<EquipmentModel> equipments = [];
        equipments = await service.getEquipment(workList[i].equipmentid!);
        if (equipments.isNotEmpty) {
          list.add(MainChapterData(equipments[0], workList[i]));
        }
      }
      date = value;
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  Future<Either<ErrorResponse, List<MainChapterData>>> getMainChapterList(bool histiry, DateTime value) async {
    try {
      list.clear();
      final List<WorkModel> workList = await service.calendarGetWorkModelList(histiry, value);
      print('------------ getMainChapterList ----------');
      print('workList.length : ${workList.length}');
      for (var i = 0; i < workList.length; ++i) {
        List<EquipmentModel> equipments = [];
        equipments = await service.getEquipment(workList[i].equipmentid!);
        if (equipments.isNotEmpty) {
          list.add(MainChapterData(equipments[0], workList[i]));
        }
      }
      date = value;
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  Future<Either<ErrorResponse, SqlResult>> changeWorkDate(WorkModel value, DateTime newDate) async {
    try {
      final result = await service.changeWorkDate(value, newDate);
      return right(result);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  Future changeNotWorked() async {
    List<WorkModel> list = await service.getNotWorked(DateTime.now());
    if (list.isNotEmpty) {
      for (var i = 0; i < list.length; ++i) {
        service.changeWorkDate(list[i], DateTime.now());
      }
    }
  }

}
