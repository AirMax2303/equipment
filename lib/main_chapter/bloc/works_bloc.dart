import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/work.dart';
import '../service/work_service.dart';

part 'works_bloc.freezed.dart';

part 'works_event.dart';

part 'works_state.dart';

class WorkBloc extends Bloc<WorksEvent, WorksState> {
  final WorkService service;

  WorkBloc(this.service) : super(const WorksState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_GotoPPR5Event>(_onGotoPPR5Event);
    on<_GotoWorkDay01Event>(_onGotoWorkDay01Event);
  }

  void _onInitialEvent(_InitialEvent event,
      Emitter<WorksState> emit,) async {
    await service.geList().then((value) {
      emit(
        _DataState(
          list: value,
        ),
      );
    });
  }

  void _onGotoPPR5Event(_GotoPPR5Event event,
      Emitter<WorksState> emit,) async {
    emit(const _gotoPPR5State());
  }

  void _onGotoWorkDay01Event(_GotoWorkDay01Event event,
      Emitter<WorksState> emit,) async{
    emit(const _gotoWorkDay01State());
  }
}


