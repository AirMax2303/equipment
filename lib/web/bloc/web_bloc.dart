import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/web_model.dart';
import '../service/web_service.dart';

part 'web_bloc.freezed.dart';

part 'web_event.dart';

part 'web_state.dart';

class WebBloc extends Bloc<WebEvent, WebState> {
  WebService service;

  WebBloc(this.service) : super(const WebState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
  }

  void _onInitialEvent(_InitialEvent event, Emitter<WebState> emit) async {
    emit(const _LoadingState());
    await service.getList().then((value) => emit(_SuccessState(list: value)));
  }
}
