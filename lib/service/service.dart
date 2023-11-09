import 'dart:convert';

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
  Future<List<IdModel>> calendarGetDateModelList(bool histiry, DateTime date);

  Future<List<DateModel>> calendarGetEquipmentModelList(bool histiry, String equipmentid);

  Future<List<WorkModel>> calendarGetWorkModelEquipmentList(bool histiry, DateTime date, String equipmentid);

  Future<List<WorkModel>> calendarGetWorkModelList(bool histiry, DateTime date);

// Series
// -------------------------------------------------------------------------------------------------------------------------------
  Future<SqlResult> addSeriesWork(WorkModel value);

  Future<SqlResult> deleteAllSeriesWork();

  Future<SqlResult> insertAllSeriesWork();

  Future<List<WorkModel>> getAllSeriesWork();

  Future<List<IdModel>> seriesGetDateModelList(bool histiry, DateTime date);

  Future<List<DateModel>> seriesGetEquipmentModelList(bool histiry, String equipmentid);

  Future<List<WorkModel>> seriesGetWorkModelEquipmentList(bool histiry, DateTime date, String equipmentid);

  Future<List<WorkModel>> seriesGetWorkModelList(bool histiry, DateTime date);

// Order
// -------------------------------------------------------------------------------------------------------------------------------
  Future<SqlResult> addOrder(OrderModel order);

//  Equipment
//  ------------------------------------------------------------------------------------------------------------------------------
  Future<List<EquipmentModel>> getEquipment(String id);

  Future<List<EquipmentModel>> getEquipmentList();

  Future<List<EquipmentModel>> getEquipmentViewList(String id);

  Future<List<EquipmentModel>> getEquipmentPlotList(String id);

  Future<List<NameModel>> getNameList(String path);

  Future<List<InfoModel>> getInfoList(String equipmentid);

  Future addEquipment(EquipmentModel value);

  Future deleteEquipment(EquipmentModel value);

  Future updateEquipment(EquipmentModel value);

  Future updateEquipmentImage(String image, String equipmentid);

  Future updateEquipmentStatus(int status, String equipmentid);

  Future addName(NameModel value, String path);

  Future addInfo(InfoModel value);

  Future deleteInfos(String equipmentid);

//  PPR
// ------------------------------------------------------------------------------------------------------------------------------

  Future<List<WorkModel>> getWorkPPRList(String pprid);

  Future<List<PprModel>> getPPRList(PprType pprType, String equipmentid);

  Future<List<PprModel>> getPPR(String id);

  Future<Either<PprModel, DioException>> addPPR(PprModel value);

  Future deletePPR(String id);

  Future deletePPR3(String equipmentid);

  Future updatePPR(PprModel value);

  Future updatePPRImage(String image, String id);

  Future updatePPRBeginInt(PprModel value);

//  Work
// ------------------------------------------------------------------------------------------------------------------------------

  Future addWork(WorkModel value);

  Future deleteWork(String pprid);

  Future deleteWork3(String equipmentid);

  Future changeWorkDate(WorkModel value, DateTime newDate);

  Future saveWorkTime(WorkModel work, int value);

  Future completeWork(WorkModel work);

  Future<List<WorkModel>> getNotWorked(DateTime date);

//  ProfType
// ------------------------------------------------------------------------------------------------------------------------------

  Future addProfType(ProfTypeModel value);
}

//@LazySingleton(as: IEquipment)

class AppService extends IEquipment {
  ErrorResponse checkResponseError(DioException error) {
    if (error.type == DioExceptionType.badResponse) {
      var errorData = error.response!.data;
      var errorModel = ErrorResponse.fromJson(errorData);
      return errorModel;
    } else {
      return ErrorResponse();
    }
  }

  Future<Response> postImage({required String path}) async {
    final String fileName = path.split('/').last;
    final fileExt = fileName.split('.').last;
    final formData = FormData.fromMap(
      {'file': await MultipartFile.fromFile(path, filename: fileName, contentType: MediaType("image", fileExt))},
    );
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
      final response = await dio.get(
        '/calendar/equipment/work',
        data: {
          'date': DateFormat('yyyy-MM-dd').format(date),
          'equipmentid': equipmentid,
          'workisdone': (histiry ? 0 : 1).toString()
        },
      );
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => WorkModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<WorkModel>> calendarGetWorkModelList(bool histiry, DateTime date) async {
    Response response = await dio.get(
      '/calendar/list',
      data: {'date': DateFormat('yyyy-MM-dd').format(date), 'workisdone': (histiry ? 0 : 1).toString()},
    );
    List<dynamic> list = jsonDecode(response.data);
    var result = list.map((e) => WorkModel.fromJson(e)).toList();
    return result;
  }

// Series
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future<SqlResult> addSeriesWork(WorkModel value) async {
    final response = await dio.post(
      '/series/add',
      data: value.toJson(),
    );
    final result = SqlResult.fromJson(jsonDecode(response.data));
    return result;
  }

  @override
  Future<SqlResult> deleteAllSeriesWork() async {
    final response = await dio.post('/series/delete');
    final result = SqlResult.fromJson(jsonDecode(response.data));
    return result;
  }

  @override
  Future<SqlResult> insertAllSeriesWork() async {
    final response = await dio.post('/series/insertall');
    final result = SqlResult.fromJson(jsonDecode(response.data));
    return result;
  }

  @override
  Future<List<WorkModel>> getAllSeriesWork() async {
    Response response = await dio.get('/series/listall');
    List<dynamic> list = jsonDecode(response.data);
    var result = list.map((e) => WorkModel.fromJson(e)).toList();
    return result;
  }

  @override
  Future<List<IdModel>> seriesGetDateModelList(bool histiry, DateTime date) async {
    try {
      Response response = await dio.get(
        '/series/equipment',
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
  Future<List<DateModel>> seriesGetEquipmentModelList(bool histiry, String equipmentid) async {
    try {
      Response response = await dio.get(
        '/series/date',
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
  Future<List<WorkModel>> seriesGetWorkModelEquipmentList(bool histiry, DateTime date, String equipmentid) async {
    try {
      final response = await dio.get(
        '/series/equipment/work',
        data: {
          'date': DateFormat('yyyy-MM-dd').format(date),
          'equipmentid': equipmentid,
          'workisdone': (histiry ? 0 : 1).toString()
        },
      );
      List<dynamic> list = jsonDecode(response.data);
      var result = list.map((e) => WorkModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future<List<WorkModel>> seriesGetWorkModelList(bool histiry, DateTime date) async {
    Response response = await dio.get(
      '/series/list',
      data: {'date': DateFormat('yyyy-MM-dd').format(date), 'workisdone': (histiry ? 0 : 1).toString()},
    );
    List<dynamic> list = jsonDecode(response.data);
    var result = list.map((e) => WorkModel.fromJson(e)).toList();
    return result;
  }

// Order
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future<SqlResult> addOrder(OrderModel order) async {
    final String oldFileName = order.image!;
    final String fileName = order.image!.split('/').last;
    order = order.copyWith(id: uuid.v1(), image: fileName);
    final response = await dio.post(
      '/orders/add',
      data: order.toJson(),
    );
    final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    if (order.image!.isNotEmpty) {
      await postImage(path: oldFileName);
    }
    return result;
  }

//  Equipment
//  ------------------------------------------------------------------------------------------------------------------------------
  @override
  Future<List<EquipmentModel>> getEquipment(String id) async {
    final response = await dio.get(
      '/equipment/id',
      data: {'id': id},
    );
    List<dynamic> list = jsonDecode(response.data);
    var result = list.map((e) => EquipmentModel.fromJson(e)).toList();
    return result;
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
      Response response = await dio.get(
        '/equipment/list/view',
        data: {'viewid': id},
      );
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
      Response response = await dio.get(
        '/equipment/list/plot',
        data: {'plotid': id},
      );
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
      Response response = await dio.get(
        '/info/list',
        data: {'equipmentid': equipmentid},
      );
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
      final String oldFileName = value.image!;
      final String fileName = value.image!.split('/').last;
      value = value.copyWith(id: uuid.v1(), image: fileName);
      final response = await dio.post(
        '/equipment/add',
        data: value.toJson(),
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
      if (value.image!.isNotEmpty) {
        await postImage(path: oldFileName);
      }
      ;
    } on DioException catch (e) {
      print(e.toString());
    }
  }

  @override
  Future deleteEquipment(EquipmentModel value) async {
    try {
      final response = await dio.delete(
        '/equipment/delete',
        data: {'id': value.id},
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updateEquipment(EquipmentModel value) async {
    try {
      final response = await dio.put(
        '/equipment/update',
        data: {
          'name1': value.name1,
          'name2': value.name2,
          'viewid': value.viewid,
          'view': value.view,
          'plotid': value.plotid,
          'plot': value.plot,
          'proftype': value.proftype! ? '0' : '1',
//        'image': value.image,
          'id': value.id,
        },
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updateEquipmentImage(String image, String equipmentid) async {
    try {
      final response = await dio.put(
        '/equipment/update/image',
        data: {
          'image': image.split('/').last,
          'id': equipmentid,
        },
      );
      if (image.isNotEmpty) {
        await postImage(path: image);
      }
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updateEquipmentStatus(int status, String equipmentid) async {
    try {
      final response = await dio.put(
        '/equipment/update/status',
        data: {
          'status': status,
          'id': equipmentid,
        },
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future addName(NameModel value, String path) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post(
        path,
        data: value.toJson(),
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future addInfo(InfoModel value) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post(
        '/info/add',
        data: value.toJson(),
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future deleteInfos(String equipmentid) async {
    try {
      final response = await dio.delete(
        '/info/delete',
        data: {'equipmentid': equipmentid},
      );
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
        response = await dio.get(
          '/ppr/list/worktime',
          data: {'equipmentid': equipmentid},
        );
      } else {
        response = await dio.get(
          '/ppr/list/time',
          data: {'equipmentid': equipmentid},
        );
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
    } //catch (e) {}
  }

  @override
  Future<Either<PprModel, DioException>> addPPR(PprModel value) async {
    try {
      final String oldFileName = value.image!;
      final String fileName = value.image!.split('/').last;
      value = value.copyWith(image: fileName);
      final response = await dio.post(
        '/ppr/add',
        data: value.toJson(),
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
      if (value.image!.isNotEmpty) {
        await postImage(path: oldFileName);
      }
      return left<PprModel, DioException>(value);
    } on DioException catch (e) {
      print(e);
      return right<PprModel, DioException>(e);
    }
  }

  @override
  Future deletePPR(String id) async {
    try {
      final response = await dio.delete(
        '/ppr/delete',
        data: {'id': id},
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future deletePPR3(String equipmentid) async {
    try {
      final response = await dio.delete(
        '/ppr/delete/3',
        data: {'equipmentid': equipmentid},
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {}
  }

  @override
  Future updatePPR(PprModel value) async {
    try {
      Response response;
      if (value.pprtype == 1) {
        response = await dio.put(
          '/ppr/update/worktime',
          data: {
            'name': value.name,
            'priority': value.priority! ? '0' : '1',
            'intervalcount': value.intervalcount,
            'beginint': value.beginint,
            'id': value.id,
          },
        );
      } else {
        response = await dio.put(
          '/ppr/update/time',
          data: {
            'name': value.name,
            'priority': value.priority! ? '0' : '1',
            'proftype': value.proftype! ? '0' : '1',
            'repeatcount': value.repeatcount,
            'intervalcount': value.intervalcount,
            'begindate': DateFormat('yyyy-MM-dd').format(value.begindate!),
            'id': value.id,
          },
        );
      }
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updatePPRImage(String image, String id) async {
    try {
      final response = await dio.put(
        '/ppr/update/image',
        data: {
          'image': image.split('/').last,
          'id': id,
        },
      );
      if (image.isNotEmpty) {
        await postImage(path: image);
      }
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future updatePPRBeginInt(PprModel value) async {
    try {
      Response response = await dio.put(
        '/ppr/update/beginint',
        data: {
          'beginint': value.beginint.toString(),
          'id': value.id,
        },
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

// Work
// -------------------------------------------------------------------------------------------------------------------------------

  @override
  Future<List<WorkModel>> getWorkPPRList(String pprid) async {
    try {
      Response response = await dio.get(
        '/work/get/ppr',
        data: {'pprid': pprid},
      );
      List list = jsonDecode(response.data);
      var result = list.map((e) => WorkModel.fromJson(e)).toList();
      return result;
    } on DioException catch (e) {
      return [];
    }
  }

  @override
  Future addWork(WorkModel value) async {
    value = value.copyWith(id: uuid.v1());
    final response = await dio.post(
      '/work/add',
      data: value.toJson(),
    );
    final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
  }

  @override
  Future deleteWork(String pprid) async {
    try {
      final response = await dio.delete(
        '/work/delete',
        data: {'pprid': pprid},
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  Future deleteWork3(String equipmentid) async {
    try {
      final response = await dio.delete(
        '/work/delete/3',
        data: {'equipmentid': equipmentid},
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future<SqlResult> changeWorkDate(WorkModel value, DateTime newDate) async {
    Response response = await dio.put(
      '/work/update/date',
      data: {
        'workdate': DateFormat('yyyy-MM-dd').format(newDate),
        'id': value.id,
      },
    );
    final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    return result;
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
      Response response = await dio.put(
        '/work/update/done',
        data: {
          'id': work.id,
        },
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  @override
  Future<List<WorkModel>> getNotWorked(DateTime date) async {
    Response response = await dio.get(
      '/work/get/notworked',
      data: {'workdate': DateFormat('yyyy-MM-dd').format(date)},
    );
    List list = jsonDecode(response.data);
    var result = list.map((e) => WorkModel.fromJson(e)).toList();
    return result;
  }

  @override
  Future addProfType(ProfTypeModel value) async {
    try {
      value = value.copyWith(id: uuid.v1());
      final response = await dio.post(
        '/proftype/add',
        data: value.toJson(),
      );
      final SqlResult result = SqlResult.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      print(e);
    }
  }
}
