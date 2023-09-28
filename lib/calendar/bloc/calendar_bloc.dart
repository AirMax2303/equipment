import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/calendar_model.dart';
import '../service/calendar_service.dart';

part 'calendar_bloc.freezed.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarService service = CalendarService();

  CalendarBloc(this.service) : super(const CalendarState.initial()) {
//    on<_GetListEvent>(_onGetListEvent);
    on<CalendarEvent>((event, emit) async {
      await event.when(
          initial: () {},
          getList: (date) async {
            emit(const CalendarState.initial());
            await service.getCalendarViewList(date).then((value) async {
              emit(_DataState(
                date: date,
                list: value,
              ));
            });
          });
    });
  }
/*
  void _onGetListEvent(
      _GetListEvent event,
      Emitter<CalendarState> emit,
      ) async {
    emit(const _OkState());
    await service.getCalendarViewList(event.date).then((value) async {
      emit(_DataState(date: event.date, list: value,));
    });
  }
 */
}
