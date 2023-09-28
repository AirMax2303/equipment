// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkModel _$$_WorkModelFromJson(Map<String, dynamic> json) => _$_WorkModel(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      plot: json['plot'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      workdate: json['workdate'] == null
          ? null
          : DateTime.parse(json['workdate'] as String),
      name: json['name'] as String? ?? '',
      worktype: json['worktype'] as bool? ?? true,
      proftype: json['proftype'] as bool? ?? false,
      priority: json['priority'] as bool? ?? false,
      workhour: json['workhour'] as String? ?? '',
      workisdone: json['workisdone'] as bool? ?? false,
      eqimage: json['eqimage'] as String? ?? '',
      wkimage: json['wkimage'] as String? ?? '',
      show: json['show'] as bool? ?? true,
    );

Map<String, dynamic> _$$_WorkModelToJson(_$_WorkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'clientid': instance.clientid,
      'name1': instance.name1,
      'name2': instance.name2,
      'plot': instance.plot,
      'status': instance.status,
      'workdate': instance.workdate?.toIso8601String(),
      'name': instance.name,
      'worktype': instance.worktype,
      'proftype': instance.proftype,
      'priority': instance.priority,
      'workhour': instance.workhour,
      'workisdone': instance.workisdone,
      'eqimage': instance.eqimage,
      'wkimage': instance.wkimage,
      'show': instance.show,
    };

_$_WordOrder _$$_WordOrderFromJson(Map<String, dynamic> json) => _$_WordOrder(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => WorkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WordOrderToJson(_$_WordOrder instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
