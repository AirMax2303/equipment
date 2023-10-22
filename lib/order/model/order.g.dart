// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      view: json['view'] as String? ?? '',
      plot: json['plot'] as String? ?? '',
      state: json['state'] == null ? 0 : stringToInt(json['state'] as String),
      description: json['description'] as String? ?? '',
      partsid: json['partsid'] as String? ?? '',
      dateorder: json['dateorder'] == null
          ? null
          : DateTime.parse(json['dateorder'] as String),
      malfunction: json['malfunction'] as String? ?? '',
      image: json['image'] as String? ?? '',
      workisdone: json['workisdone'] == null
          ? false
          : boolFromString(json['workisdone'] as String),
      datework: json['datework'] == null
          ? null
          : DateTime.parse(json['datework'] as String),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientid': instance.clientid,
      'equipmentid': instance.equipmentid,
      'name1': instance.name1,
      'name2': instance.name2,
      'view': instance.view,
      'plot': instance.plot,
      'state': stringFromInt(instance.state),
      'description': instance.description,
      'partsid': instance.partsid,
      'dateorder': instance.dateorder?.toIso8601String(),
      'malfunction': instance.malfunction,
      'image': instance.image,
      'workisdone': boolToString(instance.workisdone),
      'datework': instance.datework?.toIso8601String(),
    };
