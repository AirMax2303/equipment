// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentModel _$$_EquipmentModelFromJson(Map<String, dynamic> json) =>
    _$_EquipmentModel(
      id: json['id'] as String? ?? '',
      clientid: json['clientid'] as String? ?? '',
      view: json['view'] as String? ?? '',
      plot: json['plot'] as String? ?? '',
      name1: json['name1'] as String? ?? '',
      name2: json['name2'] as String? ?? '',
      image: json['image'] as String? ?? '',
      status: json['status'] as int? ?? 1,
      proftype: json['proftype'] as bool? ?? false,
      valueproftype: json['valueproftype'] as int? ?? 0,
    );

Map<String, dynamic> _$$_EquipmentModelToJson(_$_EquipmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientid': instance.clientid,
      'view': instance.view,
      'plot': instance.plot,
      'name1': instance.name1,
      'name2': instance.name2,
      'image': instance.image,
      'status': instance.status,
      'proftype': instance.proftype,
      'valueproftype': instance.valueproftype,
    };

_$_EquipmentList _$$_EquipmentListFromJson(Map<String, dynamic> json) =>
    _$_EquipmentList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EquipmentListToJson(_$_EquipmentList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
