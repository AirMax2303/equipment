import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/order.dart';
import '../repository/order_repository.dart';

part 'order_bloc.freezed.dart';

part 'order_event.dart';

part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderRepository repo;

  OrderBloc(this.repo) : super(const OrderState.initial()) {
    on<_AddOrderEvent>(_onAddOrderEvent);
  }

  void _onAddOrderEvent(_AddOrderEvent event, Emitter<OrderState> emit) async {
    await repo.addOrder(event.order);
    emit(const _OkState());
  }
}
