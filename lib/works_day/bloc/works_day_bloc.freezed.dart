// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'works_day_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkDayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDayEventCopyWith<$Res> {
  factory $WorkDayEventCopyWith(
          WorkDayEvent value, $Res Function(WorkDayEvent) then) =
      _$WorkDayEventCopyWithImpl<$Res, WorkDayEvent>;
}

/// @nodoc
class _$WorkDayEventCopyWithImpl<$Res, $Val extends WorkDayEvent>
    implements $WorkDayEventCopyWith<$Res> {
  _$WorkDayEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$WorkDayEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'WorkDayEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements WorkDayEvent {
  const factory _InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$GetListEventImplCopyWith<$Res> {
  factory _$$GetListEventImplCopyWith(
          _$GetListEventImpl value, $Res Function(_$GetListEventImpl) then) =
      __$$GetListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GetListEventImplCopyWithImpl<$Res>
    extends _$WorkDayEventCopyWithImpl<$Res, _$GetListEventImpl>
    implements _$$GetListEventImplCopyWith<$Res> {
  __$$GetListEventImplCopyWithImpl(
      _$GetListEventImpl _value, $Res Function(_$GetListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetListEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetListEventImpl implements _GetListEvent {
  const _$GetListEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'WorkDayEvent.getList(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListEventImplCopyWith<_$GetListEventImpl> get copyWith =>
      __$$GetListEventImplCopyWithImpl<_$GetListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return getList(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return getList?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _GetListEvent implements WorkDayEvent {
  const factory _GetListEvent(final DateTime date) = _$GetListEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$GetListEventImplCopyWith<_$GetListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteWorkEventImplCopyWith<$Res> {
  factory _$$CompleteWorkEventImplCopyWith(_$CompleteWorkEventImpl value,
          $Res Function(_$CompleteWorkEventImpl) then) =
      __$$CompleteWorkEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkModel work});

  $WorkModelCopyWith<$Res> get work;
}

/// @nodoc
class __$$CompleteWorkEventImplCopyWithImpl<$Res>
    extends _$WorkDayEventCopyWithImpl<$Res, _$CompleteWorkEventImpl>
    implements _$$CompleteWorkEventImplCopyWith<$Res> {
  __$$CompleteWorkEventImplCopyWithImpl(_$CompleteWorkEventImpl _value,
      $Res Function(_$CompleteWorkEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$CompleteWorkEventImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkModel,
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

class _$CompleteWorkEventImpl implements _CompleteWorkEvent {
  const _$CompleteWorkEventImpl(this.work);

  @override
  final WorkModel work;

  @override
  String toString() {
    return 'WorkDayEvent.completeWork(work: $work)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteWorkEventImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteWorkEventImplCopyWith<_$CompleteWorkEventImpl> get copyWith =>
      __$$CompleteWorkEventImplCopyWithImpl<_$CompleteWorkEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return completeWork(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return completeWork?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (completeWork != null) {
      return completeWork(work);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return completeWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return completeWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (completeWork != null) {
      return completeWork(this);
    }
    return orElse();
  }
}

abstract class _CompleteWorkEvent implements WorkDayEvent {
  const factory _CompleteWorkEvent(final WorkModel work) =
      _$CompleteWorkEventImpl;

  WorkModel get work;
  @JsonKey(ignore: true)
  _$$CompleteWorkEventImplCopyWith<_$CompleteWorkEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteWorkTimeEventImplCopyWith<$Res> {
  factory _$$CompleteWorkTimeEventImplCopyWith(
          _$CompleteWorkTimeEventImpl value,
          $Res Function(_$CompleteWorkTimeEventImpl) then) =
      __$$CompleteWorkTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkModel work, int value});

  $WorkModelCopyWith<$Res> get work;
}

/// @nodoc
class __$$CompleteWorkTimeEventImplCopyWithImpl<$Res>
    extends _$WorkDayEventCopyWithImpl<$Res, _$CompleteWorkTimeEventImpl>
    implements _$$CompleteWorkTimeEventImplCopyWith<$Res> {
  __$$CompleteWorkTimeEventImplCopyWithImpl(_$CompleteWorkTimeEventImpl _value,
      $Res Function(_$CompleteWorkTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? value = null,
  }) {
    return _then(_$CompleteWorkTimeEventImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkModel,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$CompleteWorkTimeEventImpl implements _CompleteWorkTimeEvent {
  const _$CompleteWorkTimeEventImpl(this.work, this.value);

  @override
  final WorkModel work;
  @override
  final int value;

  @override
  String toString() {
    return 'WorkDayEvent.completeWorkTime(work: $work, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteWorkTimeEventImpl &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteWorkTimeEventImplCopyWith<_$CompleteWorkTimeEventImpl>
      get copyWith => __$$CompleteWorkTimeEventImplCopyWithImpl<
          _$CompleteWorkTimeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return completeWorkTime(work, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return completeWorkTime?.call(work, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (completeWorkTime != null) {
      return completeWorkTime(work, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return completeWorkTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return completeWorkTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (completeWorkTime != null) {
      return completeWorkTime(this);
    }
    return orElse();
  }
}

abstract class _CompleteWorkTimeEvent implements WorkDayEvent {
  const factory _CompleteWorkTimeEvent(final WorkModel work, final int value) =
      _$CompleteWorkTimeEventImpl;

  WorkModel get work;
  int get value;
  @JsonKey(ignore: true)
  _$$CompleteWorkTimeEventImplCopyWith<_$CompleteWorkTimeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveWorkTimeEventImplCopyWith<$Res> {
  factory _$$SaveWorkTimeEventImplCopyWith(_$SaveWorkTimeEventImpl value,
          $Res Function(_$SaveWorkTimeEventImpl) then) =
      __$$SaveWorkTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkModel work, int value});

  $WorkModelCopyWith<$Res> get work;
}

/// @nodoc
class __$$SaveWorkTimeEventImplCopyWithImpl<$Res>
    extends _$WorkDayEventCopyWithImpl<$Res, _$SaveWorkTimeEventImpl>
    implements _$$SaveWorkTimeEventImplCopyWith<$Res> {
  __$$SaveWorkTimeEventImplCopyWithImpl(_$SaveWorkTimeEventImpl _value,
      $Res Function(_$SaveWorkTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? value = null,
  }) {
    return _then(_$SaveWorkTimeEventImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkModel,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$SaveWorkTimeEventImpl implements _SaveWorkTimeEvent {
  const _$SaveWorkTimeEventImpl(this.work, this.value);

  @override
  final WorkModel work;
  @override
  final int value;

  @override
  String toString() {
    return 'WorkDayEvent.saveWorkTime(work: $work, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveWorkTimeEventImpl &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveWorkTimeEventImplCopyWith<_$SaveWorkTimeEventImpl> get copyWith =>
      __$$SaveWorkTimeEventImplCopyWithImpl<_$SaveWorkTimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return saveWorkTime(work, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return saveWorkTime?.call(work, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (saveWorkTime != null) {
      return saveWorkTime(work, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return saveWorkTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return saveWorkTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (saveWorkTime != null) {
      return saveWorkTime(this);
    }
    return orElse();
  }
}

abstract class _SaveWorkTimeEvent implements WorkDayEvent {
  const factory _SaveWorkTimeEvent(final WorkModel work, final int value) =
      _$SaveWorkTimeEventImpl;

  WorkModel get work;
  int get value;
  @JsonKey(ignore: true)
  _$$SaveWorkTimeEventImplCopyWith<_$SaveWorkTimeEventImpl> get copyWith =>
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
    extends _$WorkDayEventCopyWithImpl<$Res, _$ChangeDateEventImpl>
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
    return 'WorkDayEvent.changeDate(work: $work, newDate: $newDate)';
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
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(WorkModel work) completeWork,
    required TResult Function(WorkModel work, int value) completeWorkTime,
    required TResult Function(WorkModel work, int value) saveWorkTime,
    required TResult Function(WorkModel work, DateTime newDate) changeDate,
  }) {
    return changeDate(work, newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(WorkModel work)? completeWork,
    TResult? Function(WorkModel work, int value)? completeWorkTime,
    TResult? Function(WorkModel work, int value)? saveWorkTime,
    TResult? Function(WorkModel work, DateTime newDate)? changeDate,
  }) {
    return changeDate?.call(work, newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(WorkModel work)? completeWork,
    TResult Function(WorkModel work, int value)? completeWorkTime,
    TResult Function(WorkModel work, int value)? saveWorkTime,
    TResult Function(WorkModel work, DateTime newDate)? changeDate,
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
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_CompleteWorkEvent value) completeWork,
    required TResult Function(_CompleteWorkTimeEvent value) completeWorkTime,
    required TResult Function(_SaveWorkTimeEvent value) saveWorkTime,
    required TResult Function(_ChangeDateEvent value) changeDate,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_CompleteWorkEvent value)? completeWork,
    TResult? Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult? Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult? Function(_ChangeDateEvent value)? changeDate,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_CompleteWorkEvent value)? completeWork,
    TResult Function(_CompleteWorkTimeEvent value)? completeWorkTime,
    TResult Function(_SaveWorkTimeEvent value)? saveWorkTime,
    TResult Function(_ChangeDateEvent value)? changeDate,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDateEvent implements WorkDayEvent {
  const factory _ChangeDateEvent(final WorkModel work, final DateTime newDate) =
      _$ChangeDateEventImpl;

  WorkModel get work;
  DateTime get newDate;
  @JsonKey(ignore: true)
  _$$ChangeDateEventImplCopyWith<_$ChangeDateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkDayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDayStateCopyWith<$Res> {
  factory $WorkDayStateCopyWith(
          WorkDayState value, $Res Function(WorkDayState) then) =
      _$WorkDayStateCopyWithImpl<$Res, WorkDayState>;
}

/// @nodoc
class _$WorkDayStateCopyWithImpl<$Res, $Val extends WorkDayState>
    implements $WorkDayStateCopyWith<$Res> {
  _$WorkDayStateCopyWithImpl(this._value, this._then);

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
    extends _$WorkDayStateCopyWithImpl<$Res, _$InitialStateImpl>
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
    return 'WorkDayState.initial()';
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
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
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
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements WorkDayState {
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
    extends _$WorkDayStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'WorkDayState.loading()';
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
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
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
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements WorkDayState {
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
    extends _$WorkDayStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'WorkDayState.error(error: $error)';
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
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
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
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements WorkDayState {
  const factory _ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkCompletedSteteImplCopyWith<$Res> {
  factory _$$WorkCompletedSteteImplCopyWith(_$WorkCompletedSteteImpl value,
          $Res Function(_$WorkCompletedSteteImpl) then) =
      __$$WorkCompletedSteteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkCompletedSteteImplCopyWithImpl<$Res>
    extends _$WorkDayStateCopyWithImpl<$Res, _$WorkCompletedSteteImpl>
    implements _$$WorkCompletedSteteImplCopyWith<$Res> {
  __$$WorkCompletedSteteImplCopyWithImpl(_$WorkCompletedSteteImpl _value,
      $Res Function(_$WorkCompletedSteteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkCompletedSteteImpl implements _WorkCompletedStete {
  const _$WorkCompletedSteteImpl();

  @override
  String toString() {
    return 'WorkDayState.workCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkCompletedSteteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return workCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return workCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    required TResult orElse(),
  }) {
    if (workCompleted != null) {
      return workCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_DataState value) data,
  }) {
    return workCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_DataState value)? data,
  }) {
    return workCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (workCompleted != null) {
      return workCompleted(this);
    }
    return orElse();
  }
}

abstract class _WorkCompletedStete implements WorkDayState {
  const factory _WorkCompletedStete() = _$WorkCompletedSteteImpl;
}

/// @nodoc
abstract class _$$WorkTimeSavedSteteImplCopyWith<$Res> {
  factory _$$WorkTimeSavedSteteImplCopyWith(_$WorkTimeSavedSteteImpl value,
          $Res Function(_$WorkTimeSavedSteteImpl) then) =
      __$$WorkTimeSavedSteteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkTimeSavedSteteImplCopyWithImpl<$Res>
    extends _$WorkDayStateCopyWithImpl<$Res, _$WorkTimeSavedSteteImpl>
    implements _$$WorkTimeSavedSteteImplCopyWith<$Res> {
  __$$WorkTimeSavedSteteImplCopyWithImpl(_$WorkTimeSavedSteteImpl _value,
      $Res Function(_$WorkTimeSavedSteteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkTimeSavedSteteImpl implements _WorkTimeSavedStete {
  const _$WorkTimeSavedSteteImpl();

  @override
  String toString() {
    return 'WorkDayState.workTimeSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkTimeSavedSteteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return workTimeSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return workTimeSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    required TResult orElse(),
  }) {
    if (workTimeSaved != null) {
      return workTimeSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
    required TResult Function(_DataState value) data,
  }) {
    return workTimeSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
    TResult? Function(_DataState value)? data,
  }) {
    return workTimeSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (workTimeSaved != null) {
      return workTimeSaved(this);
    }
    return orElse();
  }
}

abstract class _WorkTimeSavedStete implements WorkDayState {
  const factory _WorkTimeSavedStete() = _$WorkTimeSavedSteteImpl;
}

/// @nodoc
abstract class _$$DateChangedStateImplCopyWith<$Res> {
  factory _$$DateChangedStateImplCopyWith(_$DateChangedStateImpl value,
          $Res Function(_$DateChangedStateImpl) then) =
      __$$DateChangedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateChangedStateImplCopyWithImpl<$Res>
    extends _$WorkDayStateCopyWithImpl<$Res, _$DateChangedStateImpl>
    implements _$$DateChangedStateImplCopyWith<$Res> {
  __$$DateChangedStateImplCopyWithImpl(_$DateChangedStateImpl _value,
      $Res Function(_$DateChangedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DateChangedStateImpl implements _DateChangedState {
  const _$DateChangedStateImpl();

  @override
  String toString() {
    return 'WorkDayState.dateChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DateChangedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return dateChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return dateChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChangedState implements WorkDayState {
  const factory _DateChangedState() = _$DateChangedStateImpl;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, List<CalendarData>? list});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$WorkDayStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? list = freezed,
  }) {
    return _then(_$DataStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalendarData>?,
    ));
  }
}

/// @nodoc

class _$DataStateImpl implements _DataState {
  const _$DataStateImpl(
      {required this.date, required final List<CalendarData>? list})
      : _list = list;

  @override
  final DateTime date;
  final List<CalendarData>? _list;
  @override
  List<CalendarData>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkDayState.data(date: $date, list: $list)';
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
    required TResult Function() workCompleted,
    required TResult Function() workTimeSaved,
    required TResult Function() dateChanged,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
  }) {
    return data(date, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? workCompleted,
    TResult? Function()? workTimeSaved,
    TResult? Function()? dateChanged,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
  }) {
    return data?.call(date, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? workCompleted,
    TResult Function()? workTimeSaved,
    TResult Function()? dateChanged,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
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
    required TResult Function(_WorkCompletedStete value) workCompleted,
    required TResult Function(_WorkTimeSavedStete value) workTimeSaved,
    required TResult Function(_DateChangedState value) dateChanged,
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
    TResult? Function(_WorkCompletedStete value)? workCompleted,
    TResult? Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult? Function(_DateChangedState value)? dateChanged,
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
    TResult Function(_WorkCompletedStete value)? workCompleted,
    TResult Function(_WorkTimeSavedStete value)? workTimeSaved,
    TResult Function(_DateChangedState value)? dateChanged,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements WorkDayState {
  const factory _DataState(
      {required final DateTime date,
      required final List<CalendarData>? list}) = _$DataStateImpl;

  DateTime get date;
  List<CalendarData>? get list;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
