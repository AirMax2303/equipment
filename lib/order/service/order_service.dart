import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';

import '../../other/other.dart';
import '../model/order.dart';

class OrderService {
  List<OrderModel> list = [];

  Future<void> addOrder(OrderModel order) async {
    String url = '$backendUrl/orders';
    var uuid = const Uuid();
    final dio = Dio(BaseOptions(baseUrl: backendUrl));
    order = order.copyWith(id: uuid.v1());

    final response = await dio.get('/orders');
    print(response.data.toString());
//      final response = await dio.post('/orders/add', data: order.toJson());
//      print(response.data.toString());
//    Response response = await post(Uri.parse(url), body: order.toJson()
/*
    {
      'id': '',
      'equipmentid': 'b5823541-5ca6-11ee-bb5a-8919088e771d',
      'clientid': '',
      'state': '0',
      'description': 'asfewf',
      'partsid': '',
      'dateorder': '2023-1-04T00:00:00.000',
      'malfunction': 'wefwef',
      'image': '',
      'workisdone': 'false'
    }

 */

//    );
    print('------------------------------------------------');
//    print(response.body);
  }

//{'id': 'dsvfdsvfds', 'equipmentid': 'dfsdsfsdf', 'clientid': 'dsgsgswg'}

/*
  void addOrder(OrderModel order) async {
    var uuid = const Uuid();
    final service = GetIt.instance.get<ProfileService>();
    order = order.copyWith(id: uuid.v1(), clientid: service.profile.id);
    print('---------------------------------------------------');
    print(order.toJson());
    list.add(order);
  }
 */
}
