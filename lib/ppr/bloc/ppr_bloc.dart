import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/ppr.dart';
import '../service/ppr_service.dart';

part 'ppr_bloc.freezed.dart';

part 'ppr_event.dart';

part 'ppr_state.dart';

class PprBloc extends Bloc<PprEvent, PprState> {
  final PprService service;

  PprBloc(this.service) : super(const PprState.initial('')) {
    on<_InitialEvent>(_onInitialEvent);
    on<_GotoAddPprScreenEvent>(_onGotoAddPprScreenEvent);
    on<_AddPprEvent>(_onAddPprEvent);
  }

  void _onInitialEvent(_InitialEvent event, Emitter<PprState> emit) async {
    service.getList(event.equipmentid).then((value) => emit(_DataState(equipmentid: event.equipmentid, list: value)));
  }

  void _onGotoAddPprScreenEvent(_GotoAddPprScreenEvent event, Emitter<PprState> emit) async {
    emit(_AddScreenState(event.equipmentid));
  }
  void _onAddPprEvent(_AddPprEvent event, Emitter<PprState> emit) async {
    service.addPpr(event.ppr);
    service.getList(event.ppr.equipmentid).then((value) => emit(_DataState(equipmentid: event.ppr.equipmentid, list: value)));
  }


}
