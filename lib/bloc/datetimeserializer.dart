import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, dynamic> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(dynamic timestamp) {
    return timestamp != null ? timestamp.toDate() : DateTime.now();
  return DateTime.now();
  }

  @override
  String toJson(DateTime date) {
    return DateFormat('dd.MM.yyyy').format(date);
  }
}

DateTime? getDateTimeFromTimestamp(dynamic timestamp) {
  return timestamp != null ? timestamp.toDate() : DateTime.now();
}

dynamic timeStampToJson(DateTime? date) {
  return DateFormat('yyyy.MM.dd').format(date!);
}

DateTime dateTimeNow() {
  return DateTime.now();
}

bool boolFromString(String value) => value == '1';

String boolToString(bool? value) => value! ? '1' : '0';

String stringFromInt(int? value) => value.toString();

int stringToInt(String value) => int.parse(value);
