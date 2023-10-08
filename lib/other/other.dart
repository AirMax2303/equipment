import 'dart:ui';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

//const String backendUrl = 'http://62.183.34.180:5000';
//const String backendUrl = 'http://192.168.31.185:5000';
const String backendUrl = 'http://192.168.46.16:5000';

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

extension TextExtension on Text {
  Text setStyle(TextStyle style) => copyWith(style: style);

  Text style12w300({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: color ?? Colors.black));

  Text style12w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style12w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style12w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style13w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style14w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style14w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style14w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style16w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style16w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style16w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style18w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text setFontFamily(String fontFamily) => copyWith(style: TextStyle(fontFamily: fontFamily));

  Text copyWith(
      {Key? key,
      StrutStyle? strutStyle,
      TextAlign? textAlign,
      TextDirection textDirection = TextDirection.ltr,
      Locale? locale,
      bool? softWrap,
      TextOverflow? overflow,
      double? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      TextStyle? style}) {
    return Text(data!,
        key: key ?? this.key,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        style: style != null ? this.style?.merge(style) ?? style : this.style);
  }
}
