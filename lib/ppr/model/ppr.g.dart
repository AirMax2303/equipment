// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PprModel _$$_PprModelFromJson(Map<String, dynamic> json) => _$_PprModel(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      priority: json['priority'] as bool? ?? false,
      proftype: json['proftype'] as bool? ?? false,
      repeat: json['repeat'] as int? ?? 0,
      interval: json['interval'] as int? ?? 1,
      begindate: json['begindate'] == null
          ? null
          : DateTime.parse(json['begindate'] as String),
      beginint: json['beginint'] as int? ?? 1,
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$_PprModelToJson(_$_PprModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'name': instance.name,
      'priority': instance.priority,
      'proftype': instance.proftype,
      'repeat': instance.repeat,
      'interval': instance.interval,
      'begindate': instance.begindate?.toIso8601String(),
      'beginint': instance.beginint,
      'image': instance.image,
    };

_$_PprList _$$_PprListFromJson(Map<String, dynamic> json) => _$_PprList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => PprModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PprListToJson(_$_PprList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
