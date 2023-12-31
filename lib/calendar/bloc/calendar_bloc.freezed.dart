// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(EquipmentModel equipment) getEquipmentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(EquipmentModel equipment)? getEquipmentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(EquipmentModel equipment)? getEquipmentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_GetEquipmentListEvent value) getEquipmentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_GetEquipmentListEvent value)? getEquipmentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_GetEquipmentListEvent value)? getEquipmentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

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
    extends _$CalendarEventCopyWithImpl<$Res, _$InitialEventImpl>
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
    return 'CalendarEvent.initial()';
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
    required TResult Function(EquipmentModel equipment) getEquipmentList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(EquipmentModel equipment)? getEquipmentList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(EquipmentModel equipment)? getEquipmentList,
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
    required TResult Function(_GetEquipmentListEvent value) getEquipmentList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_GetEquipmentListEvent value)? getEquipmentList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_GetEquipmentListEvent value)? getEquipmentList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements CalendarEvent {
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
    extends _$CalendarEventCopyWithImpl<$Res, _$GetListEventImpl>
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
    return 'CalendarEvent.getList(date: $date)';
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
    required TResult Function(EquipmentModel equipment) getEquipmentList,
  }) {
    return getList(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(EquipmentModel equipment)? getEquipmentList,
  }) {
    return getList?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(EquipmentModel equipment)? getEquipmentList,
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
    required TResult Function(_GetEquipmentListEvent value) getEquipmentList,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_GetEquipmentListEvent value)? getEquipmentList,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_GetEquipmentListEvent value)? getEquipmentList,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _GetListEvent implements CalendarEvent {
  const factory _GetListEvent(final DateTime date) = _$GetListEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$GetListEventImplCopyWith<_$GetListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEquipmentListEventImplCopyWith<$Res> {
  factory _$$GetEquipmentListEventImplCopyWith(
          _$GetEquipmentListEventImpl value,
          $Res Function(_$GetEquipmentListEventImpl) then) =
      __$$GetEquipmentListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EquipmentModel equipment});

  $EquipmentModelCopyWith<$Res> get equipment;
}

/// @nodoc
class __$$GetEquipmentListEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$GetEquipmentListEventImpl>
    implements _$$GetEquipmentListEventImplCopyWith<$Res> {
  __$$GetEquipmentListEventImplCopyWithImpl(_$GetEquipmentListEventImpl _value,
      $Res Function(_$GetEquipmentListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipment = null,
  }) {
    return _then(_$GetEquipmentListEventImpl(
      null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as EquipmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EquipmentModelCopyWith<$Res> get equipment {
    return $EquipmentModelCopyWith<$Res>(_value.equipment, (value) {
      return _then(_value.copyWith(equipment: value));
    });
  }
}

/// @nodoc

class _$GetEquipmentListEventImpl implements _GetEquipmentListEvent {
  const _$GetEquipmentListEventImpl(this.equipment);

  @override
  final EquipmentModel equipment;

  @override
  String toString() {
    return 'CalendarEvent.getEquipmentList(equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEquipmentListEventImpl &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEquipmentListEventImplCopyWith<_$GetEquipmentListEventImpl>
      get copyWith => __$$GetEquipmentListEventImplCopyWithImpl<
          _$GetEquipmentListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime date) getList,
    required TResult Function(EquipmentModel equipment) getEquipmentList,
  }) {
    return getEquipmentList(equipment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime date)? getList,
    TResult? Function(EquipmentModel equipment)? getEquipmentList,
  }) {
    return getEquipmentList?.call(equipment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime date)? getList,
    TResult Function(EquipmentModel equipment)? getEquipmentList,
    required TResult orElse(),
  }) {
    if (getEquipmentList != null) {
      return getEquipmentList(equipment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GetListEvent value) getList,
    required TResult Function(_GetEquipmentListEvent value) getEquipmentList,
  }) {
    return getEquipmentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GetListEvent value)? getList,
    TResult? Function(_GetEquipmentListEvent value)? getEquipmentList,
  }) {
    return getEquipmentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GetListEvent value)? getList,
    TResult Function(_GetEquipmentListEvent value)? getEquipmentList,
    required TResult orElse(),
  }) {
    if (getEquipmentList != null) {
      return getEquipmentList(this);
    }
    return orElse();
  }
}

abstract class _GetEquipmentListEvent implements CalendarEvent {
  const factory _GetEquipmentListEvent(final EquipmentModel equipment) =
      _$GetEquipmentListEventImpl;

  EquipmentModel get equipment;
  @JsonKey(ignore: true)
  _$$GetEquipmentListEventImplCopyWith<_$GetEquipmentListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

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
    extends _$CalendarStateCopyWithImpl<$Res, _$InitialStateImpl>
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
    return 'CalendarState.initial()';
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
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
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
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements CalendarState {
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
    extends _$CalendarStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'CalendarState.loading()';
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
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
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
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CalendarState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$OkStateImplCopyWith<$Res> {
  factory _$$OkStateImplCopyWith(
          _$OkStateImpl value, $Res Function(_$OkStateImpl) then) =
      __$$OkStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OkStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$OkStateImpl>
    implements _$$OkStateImplCopyWith<$Res> {
  __$$OkStateImplCopyWithImpl(
      _$OkStateImpl _value, $Res Function(_$OkStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OkStateImpl implements _OkState {
  const _$OkStateImpl();

  @override
  String toString() {
    return 'CalendarState.ok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OkStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return ok?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _OkState implements CalendarState {
  const factory _OkState() = _$OkStateImpl;
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
    extends _$CalendarStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'CalendarState.error(error: $error)';
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
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
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
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements CalendarState {
  const factory _ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CalendarStateCopyWithImpl<$Res, _$DataStateImpl>
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
    return 'CalendarState.data(date: $date, list: $list)';
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
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return data(date, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return data?.call(date, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
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
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements CalendarState {
  const factory _DataState(
      {required final DateTime date,
      required final List<CalendarData>? list}) = _$DataStateImpl;

  DateTime get date;
  List<CalendarData>? get list;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EquipmentDataStateImplCopyWith<$Res> {
  factory _$$EquipmentDataStateImplCopyWith(_$EquipmentDataStateImpl value,
          $Res Function(_$EquipmentDataStateImpl) then) =
      __$$EquipmentDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EquipmentModel equipment, List<CalendarData>? list});

  $EquipmentModelCopyWith<$Res> get equipment;
}

/// @nodoc
class __$$EquipmentDataStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$EquipmentDataStateImpl>
    implements _$$EquipmentDataStateImplCopyWith<$Res> {
  __$$EquipmentDataStateImplCopyWithImpl(_$EquipmentDataStateImpl _value,
      $Res Function(_$EquipmentDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipment = null,
    Object? list = freezed,
  }) {
    return _then(_$EquipmentDataStateImpl(
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as EquipmentModel,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalendarData>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EquipmentModelCopyWith<$Res> get equipment {
    return $EquipmentModelCopyWith<$Res>(_value.equipment, (value) {
      return _then(_value.copyWith(equipment: value));
    });
  }
}

/// @nodoc

class _$EquipmentDataStateImpl implements _EquipmentDataState {
  const _$EquipmentDataStateImpl(
      {required this.equipment, required final List<CalendarData>? list})
      : _list = list;

  @override
  final EquipmentModel equipment;
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
    return 'CalendarState.equipmentData(equipment: $equipment, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentDataStateImpl &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, equipment, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentDataStateImplCopyWith<_$EquipmentDataStateImpl> get copyWith =>
      __$$EquipmentDataStateImplCopyWithImpl<_$EquipmentDataStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function(String error) error,
    required TResult Function(DateTime date, List<CalendarData>? list) data,
    required TResult Function(
            EquipmentModel equipment, List<CalendarData>? list)
        equipmentData,
  }) {
    return equipmentData(equipment, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function(String error)? error,
    TResult? Function(DateTime date, List<CalendarData>? list)? data,
    TResult? Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
  }) {
    return equipmentData?.call(equipment, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function(String error)? error,
    TResult Function(DateTime date, List<CalendarData>? list)? data,
    TResult Function(EquipmentModel equipment, List<CalendarData>? list)?
        equipmentData,
    required TResult orElse(),
  }) {
    if (equipmentData != null) {
      return equipmentData(equipment, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_DataState value) data,
    required TResult Function(_EquipmentDataState value) equipmentData,
  }) {
    return equipmentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_DataState value)? data,
    TResult? Function(_EquipmentDataState value)? equipmentData,
  }) {
    return equipmentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_ErrorState value)? error,
    TResult Function(_DataState value)? data,
    TResult Function(_EquipmentDataState value)? equipmentData,
    required TResult orElse(),
  }) {
    if (equipmentData != null) {
      return equipmentData(this);
    }
    return orElse();
  }
}

abstract class _EquipmentDataState implements CalendarState {
  const factory _EquipmentDataState(
      {required final EquipmentModel equipment,
      required final List<CalendarData>? list}) = _$EquipmentDataStateImpl;

  EquipmentModel get equipment;
  List<CalendarData>? get list;
  @JsonKey(ignore: true)
  _$$EquipmentDataStateImplCopyWith<_$EquipmentDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
