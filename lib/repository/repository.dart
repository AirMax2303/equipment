import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../equipment/models/equipment.dart';
import '../order/model/order.dart';
import '../other/other.dart';

abstract class IEquipment {
  final Dio dio = Dio(BaseOptions(baseUrl: backendUrl));

  Future addOrder(OrderModel order);
}

//@LazySingleton(as: IEquipment)

class AppRepository extends IEquipment {
  @override
  Future addOrder(OrderModel order) async {
    try {
      Response response = await dio.post('', data: {
        'id': order.id,
        'equipmentid': order.equipmentid,
        'clientid': order.clientid,
        'state': order.state,
        'description': order.description,
        'partsid': order.partsid,
        'dateorder': order.dateorder,
        'malfunction': order.malfunction,
        'image': order.image,
        'workisdone': order.workisdone
      });
    } on DioException catch (e) {}
  }
}

/*
'id': order.id,
'equipmentid': order.equipmentid,
'clientid': order.clientid,
'state': order.state,
'description': order.description,
'partsid': order.partsid,
'dateorder': order.dateorder,
'malfunction': order.malfunction,
'image': order.image,
'workisdone': order.workisdone,
 */
