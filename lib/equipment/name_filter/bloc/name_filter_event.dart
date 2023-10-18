part of 'name_filter_bloc.dart';


@freezed
class NameFilterEvent with _$NameFilterEvent {
  const factory NameFilterEvent.initial() = _InitialEvent;
  const factory NameFilterEvent.getFilterList(bool typeName) = _GetFilterListEvent;
}
