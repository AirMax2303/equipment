import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equipment/equipment/models/name.dart';
import 'package:equipment/models/models.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import '../equipment/models/info.dart';
import '../order/model/order.dart';
import '../other/other.dart';
import 'error_response.dart';

abstract class IEquipment {
  final Dio dio = Dio(
      BaseOptions(baseUrl: backendUrl, connectTimeout: const Duration(seconds: 10), receiveTimeout: const Duration(seconds: 10)));
  var uuid = const Uuid();

// Calendar
// -------------------------------------------------------------------------------------------------------------------------------
// select equipmentid from work where workdate = $date group by equipmentid order by equipmentid
  Future<List<IdModel>> calendarGetDateModelList(bool histiry, DateTime date);

// select workdate from work where equipmentid = ? group by workdate order by workdate
  Future<List<DateModel>> calendarGetEquipmentModelList(bool histiry, String equipmentid);

// select * from work where workdate = $date and equipmentid = $equipmentid
  Future<List<WorkModel>> calendarGetWorkModelEquipmentList(bool histiry, DateTime date, String equipmentid);

// select * from work where workdate = $date and (worktype = 0 or priority = true)
  Future<List<WorkModel>> calendarGetWorkModelList(bool histiry, DateTime date);

// Order
// -------------------------------------------------------------------------------------------------------------------------------
  Future addOrder(OrderModel order);

//  Equipment
//  ------------------------------------------------------------------------------------------------------------------------------
  Future<List<EquipmentModel>> getEquipment(String id);

// select * from Equipment
  Future<List<EquipmentModel>> getEquipmentList();

// select * from Equipment where viewid = $id
  Future<List<EquipmentModel>> getEquipmentViewList(String id);

// select * from Equipment where plotid = $id
  Future<List<EquipmentModel>> getEquipmentPlotList(String id);

  Future<List<NameModel>> getNameList(String path);

  Future<List<InfoModel>> getInfoList(String equipmentid);

  Future addEquipment(EquipmentModel value);

  Future deleteEquipment(EquipmentModel value);

  Future updateEquipment(EquipmentModel value);

  Future addName(NameModel value, String path);

  Future addInfo(InfoModel value);

  Future deleteInfos(String equipmentid);

//  PPR
// ------------------------------------------------------------------------------------------------------------------------------

  Future<List<PprModel>> getPPRList(PprType pprType, String equipmentid);

  Future<List<PprModel>> getPPR(String id);

  Future<Either<PprModel, DioException>> addPPR(PprModel value);

  Future deletePPR(String id);

  Future deletePPR3(String equipmentid);

  Future updatePPR(PprModel value);

//  Work
// ------------------------------------------------------------------------------------------------------------------------------

  Future addWork(WorkModel value);

  Future deleteWork(String pprid);

  Future deleteWork3(String equipmentid);

  Future changeWorkDate(WorkModel value, DateTime newDate);

  Future saveWorkTime(WorkModel work, int value);

  Future completeWork(WorkModel work);

//  ProfType
// ------------------------------------------------------------------------------------------------------------------------------

  Future addProfType(ProfTypeModel value);
}

//@LazySingleton(as: IEquipment)

class AppRepository extends IEquipment {
  ErrorResponse checkResponseError(DioException error) {
    return ErrorResponse();
  }

  Future<Response> postImage({required String path}) async {
    final String fileName = path.split('/').last;
    final fileExt = fileName.split('.').last;
    final formData = FormData.fromMap(
        {'file': await MultipartFile.fromFile(path, filename: fileName, contentType: MediaType("image", fileExt))});
    return await dio.post('/images', data: formData, queryParameters: {});
  }

// Calendar
// -------------------------------------------------------------------------------------------------------------------------------
  @override
  Future<List<IdModel>> calendarGetDateModelList(bool histiry, DateTime date) async {
    try {
      Response response = await dio.get(
        '/calendar/equipment',
        data: {
          'date': DateFormat('yyyy-MM-dd').format(date),
          'workisdone': (histiry ? 0 : 1).toString(),
        },
      );
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => IdModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<DateModel>> calendarGetEquipmentModelList(bool histiry, String equipmentid) async {
    try {
      Response response = await dio.get(
        '/calendar/date',
        data: {
          'equipmentid': equipmentid,
        },
      );
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => DateModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<WorkModel>> calendarGetWorkModelEquipmentList(bool histiry, DateTime date, String equipmentid) async {
    try {
      final response = await dio.get('/calendar/equipment/work', data: {
        'date': DateFormat('yyyy-MM-dd').format(date),
        'equipmentid': equipmentid,
        'workisdone': (histiry ? 0 : 1).toString()
      });
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => WorkModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<WorkModel>> calendarGetWorkModelList(bool histiry, DateTime date) async {
    try {
      Response response = await dio.get('/calendar/list',
          data: {'date': DateFormat('yyyy-MM-dd').format(date), 'workisdone': (histiry ? 0 : 1).toString()});
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => WorkModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

// Order
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future addOrder(OrderModel order) async {
    try {
      final String oldFileName = order.image!;
      final String fileName = order.image!.split('/').last;
      order = order.copyWith(id: uuid.v1(), image: fileName);
      final response = await dio.post('/orders/add', data: order.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
      if (order.image!.isNotEmpty) {
        await postImage(path: oldFileName);
      }
    } on DioException catch (e) {
      print(e);
    }
  }

//  Equipment
//  ------------------------------------------------------------------------------------------------------------------------------
  @override
  Future<List<EquipmentModel>> getEquipment(String id) async {
    try {
      final response = await dio.get('/equipment/id', data: {'id': id});
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => EquipmentModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<EquipmentModel>> getEquipmentList() async {
    try {
      Response response = await dio.get('/equipment/list');
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => EquipmentModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<EquipmentModel>> getEquipmentViewList(String id) async {
    try {
      Response response = await dio.get('/equipment/list/view', data: {'viewid': id});
      List list = jsonDecode(response.data);
      var result = list.map((e) => EquipmentModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<EquipmentModel>> getEquipmentPlotList(String id) async {
    try {
      Response response = await dio.get('/equipment/list/plot', data: {'plotid': id});
      List list = jsonDecode(response.data);
      var result = list.map((e) => EquipmentModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<NameModel>> getNameList(String path) async {
    try {
      Response response = await dio.get(path);
      List list = jsonDecode(response.data);
      var result = list.map((e) => NameModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<InfoModel>> getInfoList(String equipmentid) async {
    try {
      Response response = await dio.get('/info/list', data: {'equipmentid': equipmentid});
      List list = jsonDecode(response.data);
      var result = list.map((e) => InfoModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future addEquipment(EquipmentModel value) async {
    try {
      print('----------------------- addEquipment ---------------------');
      final String oldFileName = value.image!;
      final String fileName = value.image!.split('/').last;
      value = value.copyWith(id: uuid.v1(), image: fileName);
      final response = await dio.post('/equipment/add', data: value.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
      if (value.image!.isNotEmpty) {
        await postImage(path: oldFileName);
      }
      ;
    } on DioException catch (e) {
      print('----------------------- error ---------------------');
      print(e.toString());
    }
  }

  @override
  Future deleteEquipment(EquipmentModel value) async {
    try {
      final response = await dio.delete('/equipment/delete', data: {'id': value.id});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updateEquipment(EquipmentModel value) async {
    try {
      final response = await dio.put('/equipment/update', data: {
        'name1': value.name1,
        'name2': value.name2,
        'viewid': value.viewid,
        'view': value.view,
        'plotid': value.plotid,
        'plot': value.plot,
        'proftype': value.proftype! ? '0' : '1',
//        'image': value.image,
        'id': value.id,
      });
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future addName(NameModel value, String path) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post(path, data: value.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future addInfo(InfoModel value) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post('/info/add', data: value.toJson());
      print(response.data);
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future deleteInfos(String equipmentid) async {
    try {
      final response = await dio.delete('/info/delete', data: {'equipmentid': equipmentid});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

// PPR
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future<List<PprModel>> getPPRList(PprType pprType, String equipmentid) async {
    try {
      Response response;
      if (pprType == PprType.workTime) {
        response = await dio.get('/ppr/list/worktime', data: {'equipmentid': equipmentid});
      } else {
        response = await dio.get('/ppr/list/time', data: {'equipmentid': equipmentid});
      }
      List list = jsonDecode(response.data);
      var result = list.map((e) => PprModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<PprModel>> getPPR(String id) async {
    try {
      Response response;
      response = await dio.get('/ppr/get', data: {'id': id});
      List list = jsonDecode(response.data);
      var result = list.map((e) => PprModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<Either<PprModel, DioException>> addPPR(PprModel value) async {
    try {
      final String oldFileName = value.image!;
      final String fileName = value.image!.split('/').last;
      value = value.copyWith(id: uuid.v1(), image: fileName);
      final response = await dio.post('/ppr/add', data: value.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
      if (value.image!.isNotEmpty) {
        await postImage(path: oldFileName);
      }
      ;
      return left<PprModel, DioException>(value);
    } on DioException catch (e) {
      print(e);
      return right<PprModel, DioException>(e);
    }
  }

  @override
  Future deletePPR(String id) async {
    try {
      final response = await dio.delete('/ppr/delete', data: {'id': id});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future deletePPR3(String equipmentid) async {
    try {
      final response = await dio.delete('/ppr/delete/3', data: {'equipmentid': equipmentid});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future updatePPR(PprModel value) async {
    try {
      Response response;
      if (value.pprtype == 1) {
        response = await dio.put('/ppr/update/time', data: {
          'name': value.name,
          'priority': value.priority,
          'intervalcount': value.intervalcount,
          'beginint': value.beginint,
          'id': value.id,
        });
      } else {
        response = await dio.put('/ppr/update/time', data: {
          'name': value.name,
          'priority': value.priority,
          'proftype': value.proftype,
          'repeatcount': value.repeatcount,
          'intervalcount': value.intervalcount,
          'begindate': DateFormat('yyyy.MM.dd').format(value.begindate!),
          'id': value.id,
        });
      }
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

// Work
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future addWork(WorkModel value) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post('/work/add', data: value.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future deleteWork(String pprid) async {
    try {
      final response = await dio.delete('/work/delete', data: {'pprid': pprid});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  Future deleteWork3(String equipmentid) async {
    try {
      final response = await dio.delete('/work/delete/3', data: {'equipmentid': equipmentid});
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future changeWorkDate(WorkModel value, DateTime newDate) async {
    try {
      Response response = await dio.put('/work/update/date', data: {
        'workdate': DateFormat('yyyy.MM.dd').format(newDate),
        'id': value.id,
      });
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future saveWorkTime(WorkModel work, int value) async {
    try {
      Response response = await dio.put('/equipment/update/value', data: {
        'valuex': value.toString(),
        'id': work.equipmentid,
      });
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future completeWork(WorkModel work) async {
    try {
      Response response = await dio.put('/work/update/done', data: {
        'id': work.id,
      });
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future addProfType(ProfTypeModel value) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post('/proftype/add', data: value.toJson());
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

/*
  Future<Response> postImage({required File file, required Map<String, dynamic> query}) async {
    String fileName = file.path.split('/').last;
    var fileExt = fileName.split('.').last;
    var formData = FormData.fromMap(
        {'file': await MultipartFile.fromFile(file.path, filename: fileName, contentType: MediaType("image", fileExt))});
  return await dio!.post('/images', data: formData, queryParameters: query);
  }
 */
}
