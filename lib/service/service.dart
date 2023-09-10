import 'dart:convert';

const host = 'http://62.183.34.180:5000';

String utf8convert(String text) {
  List<int> bytes = text.toString().codeUnits;
  return utf8.decode(bytes);
}