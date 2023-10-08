import 'package:equipment/equipment/models/equipment.dart';
import '../../models/models.dart';
import '../../order/model/order.dart';

class CalendarData {
  DateTime date;
  EquipmentModel equipment;
  List<WorkModel> list;
  CalendarData(this.date, this.equipment, this.list);
}

