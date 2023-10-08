
import '../../models/models.dart';
import '../../other/other.dart';
import '../../repository/repository.dart';

class PprService {
  AppRepository repo;
  List<PprModel> list = [];
  String? equipmentid;

  PprService(this.repo);

  Future<List<PprModel>> getList(PprType pprType, String equipmentid) async {
    list = await repo.getPPRList(pprType, equipmentid);
    return list;
  }

  void addPpr(PprModel ppr) async {
    await repo.addPPR(ppr);
    if (ppr.proftype!) {

    } else {
      await repo.addWork(WorkModel(
          pprid: ppr.id,
          equipmentid: ppr.equipmentid,
          partsid: '',
          name: ppr.name,
          worktype: 1,
          priority: ppr.priority,
          image: ppr.image,
          workdate: ppr.begindate,
          workisdone: false));
    }
  }

  void deletePpr(PprModel ppr) async {
    await repo.deletePPR(ppr.id!);
  }

  void updatePpr(PprModel ppr) async {
    await repo.updatePPR(ppr);
  }

}