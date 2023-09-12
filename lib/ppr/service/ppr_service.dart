
import '../model/ppr.dart';

class PprService {
  List<PprModel> list = [];
  String? equipmentid;

  Future<List<PprModel>> getList(String? id) async {
    equipmentid = id;
    list.clear();
    return list;
  }

  void addPpr(PprModel ppr) async {
    list.add(ppr);
  }
}