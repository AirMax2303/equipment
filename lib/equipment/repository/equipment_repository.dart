import 'package:uuid/uuid.dart';

import '../../models/models.dart';
import '../../service/service.dart';
import '../models/equipment.dart';
import '../models/info.dart';
import '../models/name.dart';

enum FilterType { none, view, plot }

class EquipmentFilter {
  EquipmentFilter({required this.filterType, this.value});

  FilterType filterType;
  String? value = '';
}

class EquipmentRepository {
  final AppService service;
  EquipmentFilter filter = EquipmentFilter(filterType: FilterType.none);
  List<Equipment> list = [];
  var uuid = const Uuid();

  EquipmentRepository(this.service);

  void setFilter(EquipmentFilter value) {
    filter = value;
  }

  Future<List<Equipment>> getEquipmentList() async {
    list.clear();
    final List<EquipmentModel> equipmentList;
    switch (filter.filterType) {
      case FilterType.none:
        equipmentList = await service.getEquipmentList();
      case FilterType.view:
        equipmentList = await service.getEquipmentViewList(filter.value!);
      case FilterType.plot:
        equipmentList = await service.getEquipmentPlotList(filter.value!);
    }
    for (var i = 0; i < equipmentList.length; ++i) {
      final infoList = await service.getInfoList(equipmentList[i].id!);
      list.add(Equipment(equipment: equipmentList[i], infoList: infoList));
    }
    return list;
  }

  Future<Equipment> getEquipment(String equipmentid) async {
    final equipmentList = await service.getEquipment(equipmentid);
    final infoList = await service.getInfoList(equipmentid);
    return Equipment(equipment: equipmentList[0], infoList: infoList);
  }

  Future addEquipment(EquipmentModel value) async {
    service.addEquipment(value);
  }

  Future deleteEquipment(Equipment value) async {
    await service.deleteInfos(value.equipment!.id!);
    await service.deleteEquipment(value.equipment!);
  }

  Future updateEquipment(Equipment value) async {
    final equipments = await service.getEquipment(value.equipment!.id!);
    await service.updateEquipment(value.equipment!);
    if (value.equipment!.image != equipments[0].image) {
      service.updateEquipmentImage(value.equipment!.image!, value.equipment!.id!);
    }
    if (equipments.isNotEmpty) {
      if (equipments[0].proftype != value.equipment!.proftype!) {
        if (value.equipment!.proftype!) {
          var result = await service.addPPR(PprModel(
              id: uuid.v1(),
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
              (l) async => await service.addWork(WorkModel(
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
          await service.deletePPR3(value.equipment!.id!);
          await service.deleteWork3(value.equipment!.id!);
        }
      }
    }
    await service.deleteInfos(value.equipment!.id!);
    for (var i = 0; i < value.infoList!.length; ++i) {
      await service.addInfo(value.infoList![i]);
    }
  }

  Future<List<InfoModel>> getInfoList(String id) async {
    return service.getInfoList(id);
  }

  Future<List<NameModel>> getNameList(String path) async {
    return await service.getNameList(path);
  }

  Future addName(NameModel value, String path) async {
    service.addName(value, path);
  }
}
