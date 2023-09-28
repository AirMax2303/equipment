// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'works_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoPPR5Event value) gotoPPR5,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoPPR5Event value)? gotoPPR5,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoPPR5Event value)? gotoPPR5,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorksEventCopyWith<$Res> {
  factory $WorksEventCopyWith(
          WorksEvent value, $Res Function(WorksEvent) then) =
      _$WorksEventCopyWithImpl<$Res, WorksEvent>;
}

/// @nodoc
class _$WorksEventCopyWithImpl<$Res, $Val extends WorksEvent>
    implements $WorksEventCopyWith<$Res> {
  _$WorksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$WorksEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_InitialEvent(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'WorksEvent.initial(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      __$$_InitialEventCopyWithImpl<_$_InitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return initial(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return initial?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoPPR5Event value) gotoPPR5,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoPPR5Event value)? gotoPPR5,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoPPR5Event value)? gotoPPR5,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements WorksEvent {
  const factory _InitialEvent(final DateTime date) = _$_InitialEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotoPPR5EventCopyWith<$Res> {
  factory _$$_GotoPPR5EventCopyWith(
          _$_GotoPPR5Event value, $Res Function(_$_GotoPPR5Event) then) =
      __$$_GotoPPR5EventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoPPR5EventCopyWithImpl<$Res>
    extends _$WorksEventCopyWithImpl<$Res, _$_GotoPPR5Event>
    implements _$$_GotoPPR5EventCopyWith<$Res> {
  __$$_GotoPPR5EventCopyWithImpl(
      _$_GotoPPR5Event _value, $Res Function(_$_GotoPPR5Event) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoPPR5Event implements _GotoPPR5Event {
  const _$_GotoPPR5Event();

  @override
  String toString() {
    return 'WorksEvent.gotoPPR5()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GotoPPR5Event);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return gotoPPR5();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return gotoPPR5?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (gotoPPR5 != null) {
      return gotoPPR5();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoPPR5Event value) gotoPPR5,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return gotoPPR5(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoPPR5Event value)? gotoPPR5,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return gotoPPR5?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoPPR5Event value)? gotoPPR5,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (gotoPPR5 != null) {
      return gotoPPR5(this);
    }
    return orElse();
  }
}

abstract class _GotoPPR5Event implements WorksEvent {
  const factory _GotoPPR5Event() = _$_GotoPPR5Event;
}

/// @nodoc
abstract class _$$_GotoWorkDayEventCopyWith<$Res> {
  factory _$$_GotoWorkDayEventCopyWith(
          _$_GotoWorkDayEvent value, $Res Function(_$_GotoWorkDayEvent) then) =
      __$$_GotoWorkDayEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_GotoWorkDayEventCopyWithImpl<$Res>
    extends _$WorksEventCopyWithImpl<$Res, _$_GotoWorkDayEvent>
    implements _$$_GotoWorkDayEventCopyWith<$Res> {
  __$$_GotoWorkDayEventCopyWithImpl(
      _$_GotoWorkDayEvent _value, $Res Function(_$_GotoWorkDayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_GotoWorkDayEvent(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GotoWorkDayEvent implements _GotoWorkDayEvent {
  const _$_GotoWorkDayEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'WorksEvent.gotoWorkDay(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotoWorkDayEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotoWorkDayEventCopyWith<_$_GotoWorkDayEvent> get copyWith =>
      __$$_GotoWorkDayEventCopyWithImpl<_$_GotoWorkDayEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return gotoWorkDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return gotoWorkDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (gotoWorkDay != null) {
      return gotoWorkDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoPPR5Event value) gotoPPR5,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return gotoWorkDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoPPR5Event value)? gotoPPR5,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return gotoWorkDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoPPR5Event value)? gotoPPR5,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (gotoWorkDay != null) {
      return gotoWorkDay(this);
    }
    return orElse();
  }
}

abstract class _GotoWorkDayEvent implements WorksEvent {
  const factory _GotoWorkDayEvent(final DateTime date) = _$_GotoWorkDayEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_GotoWorkDayEventCopyWith<_$_GotoWorkDayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorksStateCopyWith<$Res> {
  factory $WorksStateCopyWith(
          WorksState value, $Res Function(WorksState) then) =
      _$WorksStateCopyWithImpl<$Res, WorksState>;
}

/// @nodoc
class _$WorksStateCopyWithImpl<$Res, $Val extends WorksState>
    implements $WorksStateCopyWith<$Res> {
  _$WorksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'WorksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements WorksState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'WorksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements WorksState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_noDataStateCopyWith<$Res> {
  factory _$$_noDataStateCopyWith(
          _$_noDataState value, $Res Function(_$_noDataState) then) =
      __$$_noDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_noDataStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_noDataState>
    implements _$$_noDataStateCopyWith<$Res> {
  __$$_noDataStateCopyWithImpl(
      _$_noDataState _value, $Res Function(_$_noDataState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_noDataState implements _noDataState {
  const _$_noDataState();

  @override
  String toString() {
    return 'WorksState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_noDataState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _noDataState implements WorksState {
  const factory _noDataState() = _$_noDataState;
}

/// @nodoc
abstract class _$$_gotoPPR5StateCopyWith<$Res> {
  factory _$$_gotoPPR5StateCopyWith(
          _$_gotoPPR5State value, $Res Function(_$_gotoPPR5State) then) =
      __$$_gotoPPR5StateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_gotoPPR5StateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_gotoPPR5State>
    implements _$$_gotoPPR5StateCopyWith<$Res> {
  __$$_gotoPPR5StateCopyWithImpl(
      _$_gotoPPR5State _value, $Res Function(_$_gotoPPR5State) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_gotoPPR5State implements _gotoPPR5State {
  const _$_gotoPPR5State();

  @override
  String toString() {
    return 'WorksState.gotoPPR5()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_gotoPPR5State);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return gotoPPR5();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return gotoPPR5?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (gotoPPR5 != null) {
      return gotoPPR5();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return gotoPPR5(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return gotoPPR5?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (gotoPPR5 != null) {
      return gotoPPR5(this);
    }
    return orElse();
  }
}

abstract class _gotoPPR5State implements WorksState {
  const factory _gotoPPR5State() = _$_gotoPPR5State;
}

/// @nodoc
abstract class _$$_gotoWorkDayStateCopyWith<$Res> {
  factory _$$_gotoWorkDayStateCopyWith(
          _$_gotoWorkDayState value, $Res Function(_$_gotoWorkDayState) then) =
      __$$_gotoWorkDayStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_gotoWorkDayStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_gotoWorkDayState>
    implements _$$_gotoWorkDayStateCopyWith<$Res> {
  __$$_gotoWorkDayStateCopyWithImpl(
      _$_gotoWorkDayState _value, $Res Function(_$_gotoWorkDayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_gotoWorkDayState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_gotoWorkDayState implements _gotoWorkDayState {
  const _$_gotoWorkDayState({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'WorksState.gotoWorkDay(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_gotoWorkDayState &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_gotoWorkDayStateCopyWith<_$_gotoWorkDayState> get copyWith =>
      __$$_gotoWorkDayStateCopyWithImpl<_$_gotoWorkDayState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return gotoWorkDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return gotoWorkDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (gotoWorkDay != null) {
      return gotoWorkDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return gotoWorkDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return gotoWorkDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (gotoWorkDay != null) {
      return gotoWorkDay(this);
    }
    return orElse();
  }
}

abstract class _gotoWorkDayState implements WorksState {
  const factory _gotoWorkDayState({required final DateTime date}) =
      _$_gotoWorkDayState;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_gotoWorkDayStateCopyWith<_$_gotoWorkDayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, List<WorkModel> list});
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? list = null,
  }) {
    return _then(_$_DataState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WorkModel>,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState({required this.date, required final List<WorkModel> list})
      : _list = list;

  @override
  final DateTime date;
  final List<WorkModel> _list;
  @override
  List<WorkModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'WorksState.data(date: $date, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      __$$_DataStateCopyWithImpl<_$_DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() gotoPPR5,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<WorkModel> list) data,
  }) {
    return data(date, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noData,
    TResult? Function()? gotoPPR5,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<WorkModel> list)? data,
  }) {
    return data?.call(date, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? gotoPPR5,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<WorkModel> list)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(date, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_gotoPPR5State value) gotoPPR5,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_gotoPPR5State value)? gotoPPR5,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_noDataState value)? noData,
    TResult Function(_gotoPPR5State value)? gotoPPR5,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements WorksState {
  const factory _DataState(
      {required final DateTime date,
      required final List<WorkModel> list}) = _$_DataState;

  DateTime get date;
  List<WorkModel> get list;
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
