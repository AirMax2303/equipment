import 'package:equipment/models/models.dart';
import 'package:get_it/get_it.dart';

import '../../profile/repository/profile_repository.dart';
import '../../service/service.dart';
import '../model/order.dart';

class OrderRepository {
  final AppService service;

  OrderRepository(this.service);

  Future<void> addOrder(OrderModel value) async {
    var profileService = GetIt.instance.get<ProfileRepository>();
    value = value.copyWith(clientid: profileService.profile.id);
    await service.addOrder(value);
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
  }
}
