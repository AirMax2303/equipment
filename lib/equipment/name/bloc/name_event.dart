part of 'name_bloc.dart';

@freezed
class NameEvent with _$NameEvent {
  const factory NameEvent.initial() = _InitialEvent;
  const factory NameEvent.add(bool typeName, NameModel value) = _AddEvent;
  const factory NameEvent.getList(bool typeName) = _GetListEvent;
}
