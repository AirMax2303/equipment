import 'package:equipment/models/models.dart';
import 'package:get_it/get_it.dart';

import '../../profile/service/profile_service.dart';
import '../../repository/repository.dart';
import '../model/order.dart';

class OrderService {
  final AppRepository repo;

  OrderService(this.repo);

  Future<void> addOrder(OrderModel value) async {
    var service = GetIt.instance.get<ProfileService>();
    value = value.copyWith(clientid: service.profile.id);
    await repo.addOrder(value);
    await repo.addWork(WorkModel(
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
