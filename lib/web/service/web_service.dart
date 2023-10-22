import '../../models/models.dart';
import '../../service/service.dart';
import '../model/web_model.dart';

class WebService {
  final AppService repo;
  List<WebModel> list = [];

  WebService(this.repo);

  Future<List<WebModel>> getList() async {
    list.clear();
    final List<EquipmentModel> equipmentList = await repo.getEquipmentList();
    for (var i = 0; i < equipmentList.length; ++i) {
      list.add(WebModel(equipmentList: equipmentList[i]));
    }
    return list;
  }
}
