part of 'name_bloc.dart';

@freezed
class NameState with _$NameState {

  const factory NameState.initial() = _InitialState;

  const factory NameState.loading() = _LoadingState;

  const factory NameState.error({
    required String error
  }) = _ErrorState;

  const factory NameState.data({
    required List<NameModel>? list
  }) = _DataState;
}

