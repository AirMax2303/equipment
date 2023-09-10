// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkModel _$$_WorkModelFromJson(Map<String, dynamic> json) => _$_WorkModel(
      id: json['id'] as String? ?? '',
      date: json['date'] as String? ?? '',
      type: json['type'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      work: json['work'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$_WorkModelToJson(_$_WorkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'type': instance.type,
      'name1': instance.name1,
      'name2': instance.name2,
      'work': instance.work,
      'status': instance.status,
    };
