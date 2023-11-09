import 'package:equipment/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/main_chapter.dart';
import '../repository/main_chapter_repository.dart';

part 'main_chapter_bloc.freezed.dart';

part 'main_chapter_event.dart';

part 'main_chapter_state.dart';

class MainChapterBloc extends Bloc<MainChapterEvent, MainChapterState> {
  final MainChapterRepository repo;
  bool? histiry;

  MainChapterBloc(this.repo, this.histiry) : super(const MainChapterState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_GetListEvent>(_onGetListEvent);
    on<_GotoWorkDayEvent>(_onGotoWorkDayEvent);
    on<_GotoUserDataEvent>(_onGotoUserDataEvent);
    on<_ChangeDateEvent>(_onChangeDateEvent);
  }

  void _onInitialEvent(_InitialEvent event, Emitter<MainChapterState> emit) async {
    emit(const MainChapterState.loading());
    final result = await repo.initial(histiry!, event.date);
    result.fold(
      (l) => emit(_ErrorState(error: l.message)),
      (r) => emit(_DataState(date: event.date, list: r)),
    );
  }

  void _onGetListEvent(_GetListEvent event, Emitter<MainChapterState> emit) async {
    emit(const MainChapterState.loading());
    final result = await repo.getMainChapterList(histiry!, event.date);
    result.fold(
          (l) => emit(_ErrorState(error: l.message)),
          (r) => emit(_DataState(date: event.date, list: r)),
    );
  }

  void _onChangeDateEvent(_ChangeDateEvent event, Emitter<MainChapterState> emit) async {
    emit(const MainChapterState.loading());
    final result = await repo.changeWorkDate(event.work, event.newDate);
    result.fold(
      (l) => emit(_ErrorState(error: l.message)),
      (r) => emit(_DateChangedState(date: event.newDate)),
    );
  }

  void _onGotoUserDataEvent(_GotoUserDataEvent event, Emitter<MainChapterState> emit) async {
    emit(const _gotoUserDataState());
  }

  void _onGotoWorkDayEvent(_GotoWorkDayEvent event, Emitter<MainChapterState> emit) async {
    emit(_gotoWorkDayState(date: event.date));
  }
}
