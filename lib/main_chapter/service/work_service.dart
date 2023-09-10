import 'dart:math';
import '../models/work.dart';

class WorkService {
  final List<WorkModel> list = [];

  Future<List<WorkModel>> geList() async {
    return getlist();
  }
}

List<String> profWorks = [
  'Проверить затяжку болтов',
  'Продуть воздушные фильтра',
  'Проверить уровень СОЖ',
  'Проверить уровень масла',
  'Чистка фильтра',
  'Слить конденсат',
  'Замена масла ',
  'Устранить течь масла',
];

List<String> typeWorks = ['Приоритетная работа', 'Напоминание', 'Заявка', 'Уведомления'];

List<String> stanWorks = ['Hanva XC-3500', 'Comaro CF-425', 'ИЖ-102', 'Marda-12G'];

List<WorkModel> getlist() {
  List<WorkModel> list = [];
  Random random = Random();
  for (int i = 0; i < 7; i++) {
    WorkModel work = const WorkModel();
    int r = random.nextInt(3);
    work = work.copyWith(
        type: typeWorks[r],
        name1: 'Станок ' + (random.nextInt(50) + 1).toString(),
        name2: stanWorks[random.nextInt(3)],
        work: profWorks[i],
        status: (r + 1).toString());
    list.add(work);
  }
  return list;
}
