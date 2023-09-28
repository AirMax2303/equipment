// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarModel _$$_CalendarModelFromJson(Map<String, dynamic> json) =>
    _$_CalendarModel(
      id: json['id'] as String? ?? '',
      equipmentid: json['equipmentid'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      plot: json['plot'] as String? ?? '',
      image: json['image'] as String? ?? '',
      workdate: json['workdate'] == null
          ? null
          : DateTime.parse(json['workdate'] as String),
    );

Map<String, dynamic> _$$_CalendarModelToJson(_$_CalendarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentid': instance.equipmentid,
      'clientid': instance.clientid,
      'name1': instance.name1,
      'name2': instance.name2,
      'plot': instance.plot,
      'image': instance.image,
      'workdate': instance.workdate?.toIso8601String(),
    };

_$_CalendarList _$$_CalendarListFromJson(Map<String, dynamic> json) =>
    _$_CalendarList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => CalendarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarListToJson(_$_CalendarList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_WorkDayModel _$$_WorkDayModelFromJson(Map<String, dynamic> json) =>
    _$_WorkDayModel(
      id: json['id'] as String? ?? '',
      calendarid: json['calendarid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      state: json['state'] as int? ?? 0,
      worktype: json['worktype'] as bool? ?? true,
      proftype: json['proftype'] as bool? ?? false,
      priority: json['priority'] as bool? ?? false,
      workhour: json['workhour'] as String? ?? '',
      workisdone: json['workisdone'] as bool? ?? false,
      image: json['image'] as String? ?? '',
      show: json['show'] as bool? ?? true,
    );

Map<String, dynamic> _$$_WorkDayModelToJson(_$_WorkDayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calendarid': instance.calendarid,
      'name': instance.name,
      'state': instance.state,
      'worktype': instance.worktype,
      'proftype': instance.proftype,
      'priority': instance.priority,
      'workhour': instance.workhour,
      'workisdone': instance.workisdone,
      'image': instance.image,
      'show': instance.show,
    };

_$_WorkDayList _$$_WorkDayListFromJson(Map<String, dynamic> json) =>
    _$_WorkDayList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => WorkDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkDayListToJson(_$_WorkDayList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
