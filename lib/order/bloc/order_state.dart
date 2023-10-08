part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _InitialState;

  const factory OrderState.loading() = _LoadingState;

  const factory OrderState.ok() = _OkState;

  const factory OrderState.error({
    required String error
  }) = _ErrorState;
}  