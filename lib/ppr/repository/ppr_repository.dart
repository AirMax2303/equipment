import 'package:uuid/uuid.dart';

import '../../models/models.dart';
import '../../other/other.dart';
import '../../service/service.dart';

class PprRepository {
  AppService service;
  List<PprModel> list = [];
  String? equipmentid;
  var uuid = const Uuid();

  PprRepository(this.service);

  Future<List<PprModel>> getList(PprType pprType, String equipmentid) async {
    list = await service.getPPRList(pprType, equipmentid);
    return list;
  }

  void addPpr(PprModel ppr, EquipmentModel equipment) async {
    ppr = ppr.copyWith(id: uuid.v1());
    await service.addPPR(ppr);
    if (ppr.proftype!) {
      if ((equipment.proftype!) & (equipment.valuex! > 0)) {
        await service.addWork(WorkModel(
            pprid: ppr.id,
            equipmentid: ppr.equipmentid,
            partsid: '',
            name: ppr.name,
            worktype: 2,
            priority: ppr.priority,
            image: ppr.image!.split('/').last,
            workdate: DateTime.now(),
            workisdone: false));
      }
    } else {
      await service.addWork(WorkModel(
          pprid: ppr.id,
          equipmentid: ppr.equipmentid,
          partsid: '',
          name: ppr.name,
          worktype: 1,
          priority: ppr.priority,
          image: ppr.image!.split('/').last,
          workdate: ppr.begindate,
          workisdone: false));
    }
  }

  void deletePpr(PprModel ppr) async {
    await service.deletePPR(ppr.id!);
    await service.deleteWork(ppr.id!);
  }

  void updatePpr(PprModel ppr) async {
    await service.updatePPR(ppr);
    await service.updatePPRImage(ppr.image!, ppr.id!);
    if (!ppr.proftype!) {
      final workList = await service.getWorkPPRList(ppr.id!);
      if (workList.isNotEmpty) {
        for (var i = 0; i < workList.length; ++i) {
          if (workList[i].workdate!.compareTo(ppr.begindate!) != 0) {
            service.changeWorkDate(workList[i], ppr.begindate!);
          }
        }
      }
    }
  }
}
