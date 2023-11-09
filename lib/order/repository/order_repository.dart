import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equipment/models/models.dart';
import 'package:get_it/get_it.dart';

import '../../profile/repository/profile_repository.dart';
import '../../repository/repository.dart';
import '../../service/error_response.dart';
import '../../service/service.dart';
import '../model/order.dart';

class OrderRepository extends AppRepository {
  final AppService service;

  OrderRepository(this.service);

  Future<Either<ErrorResponse, SqlResult>> addOrder(OrderModel value) async {
    try {
      var profileService = GetIt.instance.get<ProfileRepository>();
      value = value.copyWith(clientid: profileService.profile.id);
      final result = await service.addOrder(value);
      await service.addWork(WorkModel(
          pprid: value.id,
          equipmentid: value.equipmentid,
          partsid: '',
          name: value.description,
          worktype: 0,
          priority: false,
          image: value.image,
          workdate: value.dateorder,
          workisdone: false));
      service.updateEquipmentStatus(value.state!, value.equipmentid!);
      return right(result);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }
}
