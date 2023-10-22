import 'dart:convert';
import 'package:flutter/material.dart';

import '../models/models.dart';

const String backendUrl = 'http://62.183.34.180:5000';
//const String backendUrl = 'http://192.168.31.185:5000';
//const String backendUrl = 'http://192.168.46.16:5000';

const String imageUrl = 'http://62.183.34.180/eq/image/';
//const String imageUrl = 'http://192.168.31.185/eq/image/';
//const String imageUrl = 'http://192.168.46.16/eq/image/';

String utf8convert(String text) {
  List<int> bytes = text.toString().codeUnits;
  return utf8.decode(bytes);
}

typedef ItemCallback = void Function(int index);

String status(int status) {
  switch (status) {
    case 1:
      return 'assets/status1.svg';
    case 2:
      return 'assets/status2.svg';
    case 3:
      return 'assets/status3.svg';
    default:
      return 'assets/status0.svg';
  }
}

String dateFormat(DateTime date) {
  return '${date.day}.${date.month}.${date.year}';
}

extension MyDateTime on DateTime {
  DateTime nextDay() => add(const Duration(days: 1));

  DateTime prevDay() => add(const Duration(days: -1));

  DateTime nextMonth() => month != 11 ? add(const Duration(days: 30)) : DateTime(year + 1, 1, day);

  DateTime prevMonth() => month == 1 ? DateTime(year - 1, 12, day) : add(const Duration(days: -30));
}

enum PprType {time, workTime, saveWorkTime}

String typeWorks(WorkModel work) {
  List<String> list = ['Заявка', 'По времени', 'По работа/часам', 'Запись работа/часы'];
  if (work.priority!) {
    return 'Приоритетная';
  } else {
    return list[work.worktype!];
  }
}

String spKey = 'profile';

String username = 'eq092023@mail.ru';
String password = 'uGXQH6Htf17jafpuxedA';

/*
String utf8convert(String text) {
  List<int> bytes = text.toString().codeUnits;
  return utf8.decode(bytes);
}

 */