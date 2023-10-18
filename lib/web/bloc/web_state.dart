part of 'web_bloc.dart';

@freezed
abstract class WebState with _$WebState {
  const factory WebState.initial() = _InitialState;

  const factory WebState.loading() = _LoadingState;

  const factory WebState.error(String message) = _ErrorState;

  const factory WebState.success({required List<WebModel> list}) = _SuccessState;
}
