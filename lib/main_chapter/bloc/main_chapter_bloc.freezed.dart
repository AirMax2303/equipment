// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_chapter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainChapterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
    required TResult Function(DateTime date) gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ChangeDateEvent value) changeDate,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_ChangeDateEvent value)? changeDate,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ChangeDateEvent value)? changeDate,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainChapterEventCopyWith<$Res> {
  factory $MainChapterEventCopyWith(
          MainChapterEvent value, $Res Function(MainChapterEvent) then) =
      _$MainChapterEventCopyWithImpl<$Res, MainChapterEvent>;
}

/// @nodoc
class _$MainChapterEventCopyWithImpl<$Res, $Val extends MainChapterEvent>
    implements $MainChapterEventCopyWith<$Res> {
  _$MainChapterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$MainChapterEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$InitialEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MainChapterEvent.initial(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return initial(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return initial?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
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
    required TResult Function(_ChangeDateEvent value) changeDate,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_ChangeDateEvent value)? changeDate,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ChangeDateEvent value)? changeDate,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements MainChapterEvent {
  const factory _InitialEvent(final DateTime date) = _$InitialEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateEventImplCopyWith<$Res> {
  factory _$$ChangeDateEventImplCopyWith(_$ChangeDateEventImpl value,
          $Res Function(_$ChangeDateEventImpl) then) =
      __$$ChangeDateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkModel work, DateTime newDate});

  $WorkModelCopyWith<$Res> get work;
}

/// @nodoc
class __$$ChangeDateEventImplCopyWithImpl<$Res>
    extends _$MainChapterEventCopyWithImpl<$Res, _$ChangeDateEventImpl>
    implements _$$ChangeDateEventImplCopyWith<$Res> {
  __$$ChangeDateEventImplCopyWithImpl(
      _$ChangeDateEventImpl _value, $Res Function(_$ChangeDateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? newDate = null,
  }) {
    return _then(_$ChangeDateEventImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkModel,
      null == newDate
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkModelCopyWith<$Res> get work {
    return $WorkModelCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$ChangeDateEventImpl implements _ChangeDateEvent {
  const _$ChangeDateEventImpl(this.work, this.newDate);

  @override
  final WorkModel work;
  @override
  final DateTime newDate;

  @override
  String toString() {
    return 'MainChapterEvent.changeDate(work: $work, newDate: $newDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDateEventImpl &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.newDate, newDate) || other.newDate == newDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work, newDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDateEventImplCopyWith<_$ChangeDateEventImpl> get copyWith =>
      __$$ChangeDateEventImplCopyWithImpl<_$ChangeDateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return changeDate(work, newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return changeDate?.call(work, newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    TResult Function(DateTime date)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(work, newDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ChangeDateEvent value) changeDate,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_ChangeDateEvent value)? changeDate,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ChangeDateEvent value)? changeDate,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDateEvent implements MainChapterEvent {
  const factory _ChangeDateEvent(final WorkModel work, final DateTime newDate) =
      _$ChangeDateEventImpl;

  WorkModel get work;
  DateTime get newDate;
  @JsonKey(ignore: true)
  _$$ChangeDateEventImplCopyWith<_$ChangeDateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoWorkDayEventImplCopyWith<$Res> {
  factory _$$GotoWorkDayEventImplCopyWith(_$GotoWorkDayEventImpl value,
          $Res Function(_$GotoWorkDayEventImpl) then) =
      __$$GotoWorkDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GotoWorkDayEventImplCopyWithImpl<$Res>
    extends _$MainChapterEventCopyWithImpl<$Res, _$GotoWorkDayEventImpl>
    implements _$$GotoWorkDayEventImplCopyWith<$Res> {
  __$$GotoWorkDayEventImplCopyWithImpl(_$GotoWorkDayEventImpl _value,
      $Res Function(_$GotoWorkDayEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GotoWorkDayEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GotoWorkDayEventImpl implements _GotoWorkDayEvent {
  const _$GotoWorkDayEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MainChapterEvent.gotoWorkDay(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoWorkDayEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoWorkDayEventImplCopyWith<_$GotoWorkDayEventImpl> get copyWith =>
      __$$GotoWorkDayEventImplCopyWithImpl<_$GotoWorkDayEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
    required TResult Function(DateTime date) gotoWorkDay,
  }) {
    return gotoWorkDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
    TResult? Function(DateTime date)? gotoWorkDay,
  }) {
    return gotoWorkDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
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
    required TResult Function(_ChangeDateEvent value) changeDate,
    required TResult Function(_GotoWorkDayEvent value) gotoWorkDay,
  }) {
    return gotoWorkDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_ChangeDateEvent value)? changeDate,
    TResult? Function(_GotoWorkDayEvent value)? gotoWorkDay,
  }) {
    return gotoWorkDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ChangeDateEvent value)? changeDate,
    TResult Function(_GotoWorkDayEvent value)? gotoWorkDay,
    required TResult orElse(),
  }) {
    if (gotoWorkDay != null) {
      return gotoWorkDay(this);
    }
    return orElse();
  }
}

abstract class _GotoWorkDayEvent implements MainChapterEvent {
  const factory _GotoWorkDayEvent(final DateTime date) = _$GotoWorkDayEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$GotoWorkDayEventImplCopyWith<_$GotoWorkDayEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainChapterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainChapterStateCopyWith<$Res> {
  factory $MainChapterStateCopyWith(
          MainChapterState value, $Res Function(MainChapterState) then) =
      _$MainChapterStateCopyWithImpl<$Res, MainChapterState>;
}

/// @nodoc
class _$MainChapterStateCopyWithImpl<$Res, $Val extends MainChapterState>
    implements $MainChapterStateCopyWith<$Res> {
  _$MainChapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'MainChapterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
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

abstract class _InitialState implements MainChapterState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'MainChapterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
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

abstract class _LoadingState implements MainChapterState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MainChapterState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements MainChapterState {
  const factory _ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$noDataStateImplCopyWith<$Res> {
  factory _$$noDataStateImplCopyWith(
          _$noDataStateImpl value, $Res Function(_$noDataStateImpl) then) =
      __$$noDataStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$noDataStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$noDataStateImpl>
    implements _$$noDataStateImplCopyWith<$Res> {
  __$$noDataStateImplCopyWithImpl(
      _$noDataStateImpl _value, $Res Function(_$noDataStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$noDataStateImpl implements _noDataState {
  const _$noDataStateImpl();

  @override
  String toString() {
    return 'MainChapterState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$noDataStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
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

abstract class _noDataState implements MainChapterState {
  const factory _noDataState() = _$noDataStateImpl;
}

/// @nodoc
abstract class _$$DateChangedStateImplCopyWith<$Res> {
  factory _$$DateChangedStateImplCopyWith(_$DateChangedStateImpl value,
          $Res Function(_$DateChangedStateImpl) then) =
      __$$DateChangedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateChangedStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$DateChangedStateImpl>
    implements _$$DateChangedStateImplCopyWith<$Res> {
  __$$DateChangedStateImplCopyWithImpl(_$DateChangedStateImpl _value,
      $Res Function(_$DateChangedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateChangedStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedStateImpl implements _DateChangedState {
  const _$DateChangedStateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MainChapterState.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedStateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedStateImplCopyWith<_$DateChangedStateImpl> get copyWith =>
      __$$DateChangedStateImplCopyWithImpl<_$DateChangedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_gotoWorkDayState value) gotoWorkDay,
    required TResult Function(_DataState value) data,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult? Function(_DataState value)? data,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_gotoWorkDayState value)? gotoWorkDay,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChangedState implements MainChapterState {
  const factory _DateChangedState({required final DateTime date}) =
      _$DateChangedStateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateChangedStateImplCopyWith<_$DateChangedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$gotoWorkDayStateImplCopyWith<$Res> {
  factory _$$gotoWorkDayStateImplCopyWith(_$gotoWorkDayStateImpl value,
          $Res Function(_$gotoWorkDayStateImpl) then) =
      __$$gotoWorkDayStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$gotoWorkDayStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$gotoWorkDayStateImpl>
    implements _$$gotoWorkDayStateImplCopyWith<$Res> {
  __$$gotoWorkDayStateImplCopyWithImpl(_$gotoWorkDayStateImpl _value,
      $Res Function(_$gotoWorkDayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$gotoWorkDayStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$gotoWorkDayStateImpl implements _gotoWorkDayState {
  const _$gotoWorkDayStateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MainChapterState.gotoWorkDay(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$gotoWorkDayStateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$gotoWorkDayStateImplCopyWith<_$gotoWorkDayStateImpl> get copyWith =>
      __$$gotoWorkDayStateImplCopyWithImpl<_$gotoWorkDayStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return gotoWorkDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return gotoWorkDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
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

abstract class _gotoWorkDayState implements MainChapterState {
  const factory _gotoWorkDayState({required final DateTime date}) =
      _$gotoWorkDayStateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$gotoWorkDayStateImplCopyWith<_$gotoWorkDayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, List<MainChapterData> list});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$MainChapterStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? list = null,
  }) {
    return _then(_$DataStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MainChapterData>,
    ));
  }
}

/// @nodoc

class _$DataStateImpl implements _DataState {
  const _$DataStateImpl(
      {required this.date, required final List<MainChapterData> list})
      : _list = list;

  @override
  final DateTime date;
  final List<MainChapterData> _list;
  @override
  List<MainChapterData> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'MainChapterState.data(date: $date, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      __$$DataStateImplCopyWithImpl<_$DataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() noData,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(DateTime date) gotoWorkDay,
    required TResult Function(DateTime date, List<MainChapterData> list) data,
  }) {
    return data(date, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? noData,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(DateTime date)? gotoWorkDay,
    TResult? Function(DateTime date, List<MainChapterData> list)? data,
  }) {
    return data?.call(date, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? noData,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(DateTime date)? gotoWorkDay,
    TResult Function(DateTime date, List<MainChapterData> list)? data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_ErrorState value)? error,
    TResult Function(_noDataState value)? noData,
    TResult Function(_DateChangedState value)? dateChanged,
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

abstract class _DataState implements MainChapterState {
  const factory _DataState(
      {required final DateTime date,
      required final List<MainChapterData> list}) = _$DataStateImpl;

  DateTime get date;
  List<MainChapterData> get list;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
