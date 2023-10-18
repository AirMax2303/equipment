import '../../models/models.dart';
import '../../repository/repository.dart';
import '../models/equipment.dart';
import '../models/info.dart';
import '../models/name.dart';

enum FilterType { none, view, plot }

class EquipmentFilter {
  EquipmentFilter({required this.filterType, this.value});

  FilterType filterType;
  String? value = '';
}

class EquipmentService {
  final AppRepository repo;
  EquipmentFilter filter = EquipmentFilter(filterType: FilterType.none);
  List<Equipment> list = [];

  EquipmentService(this.repo);

  void setFilter(EquipmentFilter value) {
    filter = value;
  }

  Future<List<Equipment>> getEquipmentList() async {
    list.clear();
    final List<EquipmentModel> equipmentList;
    switch (filter.filterType) {
      case FilterType.none:
        equipmentList = await repo.getEquipmentList();
      case FilterType.view:
        equipmentList = await repo.getEquipmentViewList(filter.value!);
      case FilterType.plot:
        equipmentList = await repo.getEquipmentPlotList(filter.value!);
    };
    for (var i = 0; i < equipmentList.length; ++i) {
      final infoList = await repo.getInfoList(equipmentList[i].id!);
      list.add(Equipment(equipment: equipmentList[i], infoList: infoList));
    }
    return list;
  }

  Future addEquipment(EquipmentModel value) async {
    repo.addEquipment(value);
  }

  Future deleteEquipment(Equipment value) async {
    await repo.deleteInfos(value.equipment!.id!);
    await repo.deleteEquipment(value.equipment!);
  }

  Future updateEquipment(Equipment value) async {
    final EquipmentModel equipment;
    final equipments = await repo.getEquipment(value.equipment!.id!);
    await repo.updateEquipment(value.equipment!);
    if (equipments.isNotEmpty) {
      if (equipments[0].proftype != value.equipment!.proftype!) {
        if (value.equipment!.proftype!) {
          var result = await repo.addPPR(PprModel(
              equipmentid: value.equipment!.id,
              partsid: '',
              pprtype: 2,
              name: 'Записать работа/часы',
              priority: false,
              proftype: false,
              repeatcount: 0,
              intervalcount: 3,
              begindate: DateTime.now(),
              beginint: 0,
              image: ''));
          result.fold(
              (l) async => await repo.addWork(WorkModel(
                  pprid: l.id,
                  equipmentid: l.equipmentid,
                  partsid: '',
                  name: l.name,
                  worktype: 3,
                  priority: l.priority,
                  image: l.image,
                  workdate: l.begindate,
                  workisdone: false)),
              (r) => null);
        } else {
          await repo.deletePPR3(value.equipment!.id!);
          await repo.deleteWork3(value.equipment!.id!);
        }
      }
    }
    await repo.deleteInfos(value.equipment!.id!);
    for (var i = 0; i < value.infoList!.length; ++i) {
      await repo.addInfo(value.infoList![i]);
    }
  }

  Future<List<InfoModel>> getInfoList(String id) async {
    return repo.getInfoList(id);
  }

  Future<List<NameModel>> getNameList(String path) async {
    return await repo.getNameList(path);
  }

  Future addName(NameModel value, String path) async {
    repo.addName(value, path);
  }
}
