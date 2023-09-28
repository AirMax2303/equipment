import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';

part 'calendar_model.g.dart';


@freezed
class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    @Default('') String? id,
    @Default('') String? equipmentid,
    @Default('') String? clientid,
    @Default('') String? name1,
    @Default('') String? name2,
    @Default('') String? plot,
    @Default('') String? image,
    DateTime? workdate
  }) = _CalendarModel;

  factory CalendarModel.fromJson(Map<String, Object?> json) => _$CalendarModelFromJson(json);
}

@freezed
class CalendarList with _$CalendarList {
  const factory CalendarList({
    List<CalendarModel>? list,
  }) = _CalendarList;

  factory CalendarList.fromJson(Map<String, dynamic> json) => _$CalendarListFromJson(json);
}

@freezed
class WorkDayModel with _$WorkDayModel {
  const factory WorkDayModel({
    @Default('') String? id,
    @Default('') String? calendarid,
    @Default('') String? name,
    @Default(0) int? state,
    @Default(true) bool? worktype,
    @Default(false) bool? proftype,
    @Default(false) bool? priority,
    @Default('') String? workhour,
    @Default(false) bool? workisdone,
    @Default('') String? image,
    @Default(true) bool? show
  }) = _WorkDayModel;

  factory WorkDayModel.fromJson(Map<String, Object?> json) => _$WorkDayModelFromJson(json);
}

@freezed
class WorkDayList with _$WorkDayList {
  const factory WorkDayList({
    List<WorkDayModel>? list,
  }) = _WorkDayList;

  factory WorkDayList.fromJson(Map<String, dynamic> json) => _$WorkDayListFromJson(json);
}

class CalendarView {
  CalendarModel? calendar;
  List<WorkDayModel>? list;

  CalendarView({required this.calendar, required this.list});
}





