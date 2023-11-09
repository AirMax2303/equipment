import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jiffy/jiffy.dart';

import '../../models/models.dart';
import '../../repository/repository.dart';
import '../../service/error_response.dart';
import '../../service/service.dart';
import '../model/calendar_model.dart';

abstract class CalendarRepositoryAbstract extends AppRepository {
  List<CalendarData> list = [];

  Future<Either<ErrorResponse, List<CalendarData>>> initial(bool histiry, DateTime date);

  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarList(bool histiry, DateTime date);

  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarEquipmentList(bool histiry, String equipmentid);
}

class CalendarRepository extends CalendarRepositoryAbstract {
  final AppService service;

  CalendarRepository(this.service);

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> initial(bool histiry, DateTime date) async {
    try {
      list.clear();
      final List<IdModel> equipmentList = await service.calendarGetDateModelList(histiry, date);
      for (var i = 0; i < equipmentList.length; ++i) {
        final equipments = await service.getEquipment(equipmentList[i].id!);
        final workList = await service.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
        if (equipments.isNotEmpty) {
          list.add(CalendarData(date, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarList(bool histiry, DateTime date) async {
    try {
      list.clear();
      final List<IdModel> equipmentList = await service.calendarGetDateModelList(histiry, date);
      for (var i = 0; i < equipmentList.length; ++i) {
        final equipments = await service.getEquipment(equipmentList[i].id!);
        final workList = await service.calendarGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
        if (equipments.isNotEmpty) {
          list.add(CalendarData(date, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarEquipmentList(bool histiry, String equipmentid) async {
    try {
      list.clear();
      final equipments = await service.getEquipment(equipmentid);
      final List<DateModel> dateList = await service.calendarGetEquipmentModelList(histiry, equipmentid);
      for (var i = 0; i < dateList.length; ++i) {
        final workList = await service.calendarGetWorkModelEquipmentList(histiry, dateList[i].workdate!, equipmentid);
        if (workList.isNotEmpty) {
          list.add(CalendarData(dateList[i].workdate!, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }
}

class SeriesRepository extends CalendarRepositoryAbstract {
  final AppService service;

  SeriesRepository(this.service);

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> initial(bool histiry, DateTime date) async {
    try {
      await service.deleteAllSeriesWork();
      await service.insertAllSeriesWork();
      final workList = await service.getAllSeriesWork();
      if (workList.isNotEmpty) {
        for (var i = 0; i < workList.length; ++i) {
          final List<PprModel> pprList = await service.getPPR(workList[i].pprid!);
          if (pprList.isNotEmpty) {
            DateTime? date = workList[i].workdate!;
            for (var series = 0; series < 10; ++series) {
              date = newDate(pprList[0].repeatcount!, pprList[0].intervalcount!, date);
              await service.addSeriesWork(workList[i].copyWith(workdate: date));
            }
          }
        }
      }
      list.clear();
      final List<IdModel> equipmentList = await service.seriesGetDateModelList(histiry, date);
      for (var i = 0; i < equipmentList.length; ++i) {
        final equipments = await service.getEquipment(equipmentList[i].id!);
        final workList = await service.seriesGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
        if (equipments.isNotEmpty) {
          list.add(CalendarData(date, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarList(bool histiry, DateTime date) async {
    try {
      list.clear();
      final List<IdModel> equipmentList = await service.seriesGetDateModelList(histiry, date);
      for (var i = 0; i < equipmentList.length; ++i) {
        final equipments = await service.getEquipment(equipmentList[i].id!);
        final workList = await service.seriesGetWorkModelEquipmentList(histiry, date, equipmentList[i].id!);
        if (equipments.isNotEmpty) {
          list.add(CalendarData(date, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<CalendarData>>> getCalendarEquipmentList(bool histiry, String equipmentid) async {
    try {
      list.clear();
      final equipments = await service.getEquipment(equipmentid);
      final List<DateModel> dateList = await service.seriesGetEquipmentModelList(histiry, equipmentid);
      for (var i = 0; i < dateList.length; ++i) {
        final workList = await service.seriesGetWorkModelEquipmentList(histiry, dateList[i].workdate!, equipmentid);
        if (workList.isNotEmpty) {
          list.add(CalendarData(dateList[i].workdate!, equipments[0], workList));
        }
      }
      return right(list);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
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
