import 'dart:convert';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../other/other.dart';
import '../model/profile.dart';

class ProfileService {
  ProfileModel profile = const ProfileModel();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String errorMail = '';

  Future<ProfileModel?> getProfile(String key) async {
    final SharedPreferences prefs = await _prefs;
    final String? _profile = prefs.getString(key);
    if (_profile != null) {
      profile = ProfileModel.fromJson(jsonDecode(_profile));
    }
    return profile;
  }

  Future<void> saveProfile(
    String name,
    String email,
    String phone,
    String password,
  ) async {
    var uuid = const Uuid();
    final SharedPreferences prefs = await _prefs;
    if (prefs.getString(spKey) != null) {
      prefs.remove(spKey);
    }
    if (profile.id!.isEmpty) {
      profile = ProfileModel(id: uuid.v1());
    }
    profile = profile.copyWith(name: name, email: email, phone: phone, password: password);
    prefs.setString(spKey, jsonEncode(profile.toJson()));
  }

  Future<void> saveUserData(
    String email,
    String phone,
  ) async {
    final SharedPreferences prefs = await _prefs;
    profile = profile.copyWith(email: email, phone: phone);
    prefs.remove(spKey);
    prefs.setString(spKey, jsonEncode(profile.toJson()));
  }

  Future<void> savePassword(
      String password,
      ) async {
    final SharedPreferences prefs = await _prefs;
    profile = profile.copyWith(password: password);
    prefs.remove(spKey);
    prefs.setString(spKey, jsonEncode(profile.toJson()));
  }

  Future<void> saveTarif(
      String tarif,
      ) async {
    final SharedPreferences prefs = await _prefs;
    profile = profile.copyWith(tarif: tarif);
    prefs.remove(spKey);
    prefs.setString(spKey, jsonEncode(profile.toJson()));
  }

  Future<void> sendMail(String to, String text, String subject) async {
    final message = Message()
      ..from = username
      ..recipients.add(to)
      ..text = text
      ..subject = subject;

    try {
      final smtpServer = SmtpServer(
        'smtp.mail.ru',
        username: username,
        password: password,
        ignoreBadCertificate: true,
      );
      final sendReport = await send(message, smtpServer);
      print('Message sent: $sendReport');
    } on MailerException catch (e) {
      print('Message not sent.$e');
      errorMail = 'Message not sent. ';
      for (var p in e.problems) {
        errorMail = '$errorMail${p.msg} ';
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }
}
