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
    on<_GotoWorkDayEvent>(_onGotoWorkDayEvent);
    on<_ChangeDateEvent>(_onChangeDateEvent);
  }

  void _onInitialEvent(_InitialEvent event, Emitter<MainChapterState> emit) async {
    emit(const MainChapterState.loading());
    await repo.getMainChapterList(histiry!, event.date).then((value) {
      emit(_DataState(date: event.date, list: value));
    });
  }

  void _onChangeDateEvent(_ChangeDateEvent event, Emitter<MainChapterState> emit) async {
    emit(const MainChapterState.loading());
    await repo.changeWorkDate(event.work, event.newDate);
    emit(_DateChangedState(date: event.newDate));
  }

  void _onGotoWorkDayEvent(_GotoWorkDayEvent event, Emitter<MainChapterState> emit) async {
    emit(_gotoWorkDayState(date: event.date));
  }
}
