// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
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
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'clientid': instance.clientid,
      'name1': instance.name1,
      'name2': instance.name2,
      'state': stringFromInt(instance.state),
      'description': instance.description,
      'partsid': instance.partsid,
      'dateorder': instance.dateorder?.toIso8601String(),
      'malfunction': instance.malfunction,
      'image': instance.image,
      'workisdone': boolToString(instance.workisdone),
    };

_$_ListOrder _$$_ListOrderFromJson(Map<String, dynamic> json) => _$_ListOrder(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOrderToJson(_$_ListOrder instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
