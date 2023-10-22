import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/name.dart';
import '../../repository/equipment_repository.dart';

part 'name_filter_bloc.freezed.dart';

part 'name_filter_event.dart';

part 'name_filter_state.dart';

class NameFilterBloc extends Bloc<NameFilterEvent, NameFilterState> {
  EquipmentRepository service;

  NameFilterBloc(this.service) : super(const NameFilterState.initial()) {
    on<_GetFilterListEvent>(_onGetFilterListEvent);
  }

  void _onGetFilterListEvent(_GetFilterListEvent event, Emitter<NameFilterState> emit) async {
    await service.getNameList(event.typeName ? '/view/list' : '/plot/list').then((value) async {
      emit(_DataState(list: value));
    });
  }
}


