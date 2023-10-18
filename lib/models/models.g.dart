// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SqlResultImpl _$$SqlResultImplFromJson(Map<String, dynamic> json) =>
    _$SqlResultImpl(
      fieldCount: json['fieldCount'] as int?,
      affectedRows: json['affectedRows'] as int?,
      insertId: json['insertId'] as int?,
      serverStatus: json['serverStatus'] as int?,
      warningCount: json['warningCount'] as int?,
      message: json['message'] as String?,
      protocol41: json['protocol41'] as bool?,
      changedRows: json['changedRows'] as int?,
    );

Map<String, dynamic> _$$SqlResultImplToJson(_$SqlResultImpl instance) =>
    <String, dynamic>{
      'fieldCount': instance.fieldCount,
      'affectedRows': instance.affectedRows,
      'insertId': instance.insertId,
      'serverStatus': instance.serverStatus,
      'warningCount': instance.warningCount,
      'message': instance.message,
      'protocol41': instance.protocol41,
      'changedRows': instance.changedRows,
    };

_$IdModelImpl _$$IdModelImplFromJson(Map<String, dynamic> json) =>
    _$IdModelImpl(
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$IdModelImplToJson(_$IdModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$DateModelImpl _$$DateModelImplFromJson(Map<String, dynamic> json) =>
    _$DateModelImpl(
      workdate: json['workdate'] == null
          ? null
          : DateTime.parse(json['workdate'] as String),
    );

Map<String, dynamic> _$$DateModelImplToJson(_$DateModelImpl instance) =>
    <String, dynamic>{
      'workdate': instance.workdate?.toIso8601String(),
    };

_$EquipmentModelImpl _$$EquipmentModelImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentModelImpl(
      id: json['id'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      viewid: json['viewid'] as String? ?? '',
      view: json['view'] as String? ?? '',
      plotid: json['plotid'] as String? ?? '',
      plot: json['plot'] as String? ?? '',
      image: json['image'] as String? ?? '',
      status: json['status'] as int? ?? 1,
      proftype: json['proftype'] == null
          ? false
          : boolFromInt(json['proftype'] as int),
      valuex: json['valuex'] as int? ?? 0,
    );

Map<String, dynamic> _$$EquipmentModelImplToJson(
        _$EquipmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientid': instance.clientid,
      'name1': instance.name1,
      'name2': instance.name2,
      'viewid': instance.viewid,
      'view': instance.view,
      'plotid': instance.plotid,
      'plot': instance.plot,
      'image': instance.image,
      'status': stringFromInt(instance.status),
      'proftype': boolToString(instance.proftype),
      'valuex': stringFromInt(instance.valuex),
    };

_$PprModelImpl _$$PprModelImplFromJson(Map<String, dynamic> json) =>
    _$PprModelImpl(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      partsid: json['partsid'] as String? ?? '',
      pprtype: json['pprtype'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      priority: json['priority'] == null
          ? false
          : boolFromInt(json['priority'] as int),
      proftype: json['proftype'] == null
          ? false
          : boolFromInt(json['proftype'] as int),
      repeatcount: json['repeatcount'] as int? ?? 0,
      intervalcount: json['intervalcount'] as int? ?? 1,
      begindate: json['begindate'] == null
          ? null
          : DateTime.parse(json['begindate'] as String),
      beginint: json['beginint'] as int? ?? 1,
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$PprModelImplToJson(_$PprModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'partsid': instance.partsid,
      'pprtype': stringFromInt(instance.pprtype),
      'name': instance.name,
      'priority': boolToString(instance.priority),
      'proftype': boolToString(instance.proftype),
      'repeatcount': stringFromInt(instance.repeatcount),
      'intervalcount': stringFromInt(instance.intervalcount),
      'begindate': instance.begindate?.toIso8601String(),
      'beginint': stringFromInt(instance.beginint),
      'image': instance.image,
    };

_$WorkModelImpl _$$WorkModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkModelImpl(
      id: json['id'] as String? ?? '',
      pprid: json['pprid'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      partsid: json['partsid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      worktype: json['worktype'] as int? ?? 0,
      priority: json['priority'] == null
          ? false
          : boolFromInt(json['priority'] as int),
      image: json['image'] as String? ?? '',
      workdate: json['workdate'] == null
          ? null
          : DateTime.parse(json['workdate'] as String),
      workisdone: json['workisdone'] == null
          ? false
          : boolFromInt(json['workisdone'] as int),
    );

Map<String, dynamic> _$$WorkModelImplToJson(_$WorkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pprid': instance.pprid,
      'equipmentid': instance.equipmentid,
      'partsid': instance.partsid,
      'name': instance.name,
      'worktype': stringFromInt(instance.worktype),
      'priority': boolToString(instance.priority),
      'image': instance.image,
      'workdate': instance.workdate?.toIso8601String(),
      'workisdone': boolToString(instance.workisdone),
    };

_$ProfTypeModelImpl _$$ProfTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfTypeModelImpl(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      workdate: json['workdate'] == null
          ? null
          : DateTime.parse(json['workdate'] as String),
      valuex: json['valuex'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProfTypeModelImplToJson(_$ProfTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'workdate': instance.workdate?.toIso8601String(),
      'valuex': stringFromInt(instance.valuex),
    };
