import 'dart:math';
import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';

import '../../profile/service/profile_service.dart';
import '../models/equipment.dart';
import '../models/info.dart';
import '../models/name.dart';

class SelectedFilter {
  SelectedFilter({required this.filtername, required this.value});

  String filtername = '';
  String value = '';

  SelectedFilter.fromJson(Map<String, dynamic> json) {
    filtername = json['filtername'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['filtername'] = filtername;
    data['value'] = value;
    return data;
  }
}

class EquipmentService {
  List<EquipmentModel> list = [];
  List<List<InfoModel>> listInfo = [];

  SelectedFilter filter = SelectedFilter(
    filtername: '',
    value: '',
  );

  void setFilter(SelectedFilter newFilter) {
    filter = newFilter;
  }

  Future<List<EquipmentModel>> listFiltered() async {
    List<EquipmentModel> _list = [];
    if (filter.filtername == 'view') {
      for (int i = 0; i < list.length; i++) {
        if (list[i].view == filter.value) {
          _list.add(list[i]);
        }
      }
    } else if (filter.filtername == 'plot') {
      for (int i = 0; i < list.length; i++) {
        if (list[i].plot == filter.value) {
          _list.add(list[i]);
        }
      }
    } else {
      _list = list;
    }
    return _list;
  }

/*
  Future<List<EquipmentModel>> getEquipmentList() async {
    String url = '$host/equipments';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(utf8convert(response.body));
      return result.map((e) => EquipmentModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
 */

  Future<List<EquipmentModel>> getEquipmentList() async {
    list = getlist();
    return list;
  }

  Future<List<EquipmentModel>> getFilteredList() async {
    return listFiltered();
  }

  void addEquipment(EquipmentModel equipment) async {
    var uuid = const Uuid();
    final service = GetIt.instance.get<ProfileService>();
    equipment = equipment.copyWith(id: uuid.v1(), clientid: service.profile.id);
    list.add(equipment);
  }

  void addViw(String name) async {
    viewWorks.add(NameModel(name:  name));
  }

  void addPlot(String name) async {
    plotWorks.add(NameModel(name: name));
  }

  void editEquipment(EquipmentModel equipment) async {}

  void deleteEquipment(EquipmentModel equipment) async {}

  Future<List<NameModel>> getViewList() async {
    return viewWorks;
  }

  Future<List<NameModel>> getPlotList() async {
    return plotWorks;
  }

  Future<List<InfoModel>> getInfoList(String id) async {
    return listInfo[0];
  }

  void deleteInfo(String id) {

  }

  void saveInfoList(List<InfoModel> infoList) {

  }

  void addInfo(InfoModel info){
    listInfo[0].add(info);
  }

/*
  Future<void> addEquipment(EquipmentModel equipment) async {
    String url = '$host/equipments';
    Response response = await post(Uri.parse(url), body: {
      'id': equipment.id,
      'clientid': equipment.clientid,
      'view': equipment.view,
      'plot': equipment.plot,
      'name1': equipment.name1,
      'name2': equipment.name2,
      'status': equipment.status,
    });
    print(response.body);
  }
 */

  List<String> stanWorks = [
    'Hanva XC-3500',
    'Comaro CF-425',
    'ИЖ-102',
    'ИЖ-802',
    'Marda-12G',
    'Hanva XC-8500',
    'Comaro CFSD-4025',
    'ПРИМА-10',
    'Marda-F12G',
    'Marda-12G',
  ];

  List<NameModel> viewWorks = [
    const NameModel(
      name: 'Токарные',
    ),
    const NameModel(
      name: 'Шлифовальные',
    ),
    const NameModel(
      name: 'Комбинированные',
    ),
    const NameModel(
      name: 'Фрезерные',
    ),
    const NameModel(
      name: 'Карусельные',
    )
  ];

  List<NameModel> plotWorks = [
    const NameModel(
      name: 'Участок 1',
    ),
    const NameModel(
      name: 'Участок 2',
    ),
    const NameModel(
      name: 'Участок 3',
    ),
    const NameModel(
      name: 'Участок 4',
    )
  ];

  List<EquipmentModel> getlist() {
    var uuid = const Uuid();
    List<EquipmentModel> list = [];
    Random random = Random();
    listInfo = List<List<InfoModel>>.empty(growable: true);
    for (int i = 0; i < 10; i++) {
      EquipmentModel work = const EquipmentModel();
      int r = random.nextInt(3);
      work = work.copyWith(
          id: uuid.v1(),
          view: viewWorks[random.nextInt(5)].name,
          plot: plotWorks[random.nextInt(4)].name,
          name1: 'Станок ' + (random.nextInt(50) + 1).toString(),
          name2: stanWorks[random.nextInt(9)],
          status: (r + 1).toString());
      list.add(work);
      listInfo.add(List<InfoModel>.empty(growable: true));
    }
    return list;
  }
}
