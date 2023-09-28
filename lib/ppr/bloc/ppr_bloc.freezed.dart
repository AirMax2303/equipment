// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PprEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) gotoAddPprScreen,
    required TResult Function(PprModel ppr) addPpr,
    required TResult Function(LastState lastState) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? addPpr,
    TResult? Function(LastState lastState)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? addPpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_BackEvent value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_BackEvent value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PprEventCopyWith<$Res> {
  factory $PprEventCopyWith(PprEvent value, $Res Function(PprEvent) then) =
      _$PprEventCopyWithImpl<$Res, PprEvent>;
}

/// @nodoc
class _$PprEventCopyWithImpl<$Res, $Val extends PprEvent>
    implements $PprEventCopyWith<$Res> {
  _$PprEventCopyWithImpl(this._value, this._then);

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
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_InitialEvent(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprEvent.initial(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialEvent &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      __$$_InitialEventCopyWithImpl<_$_InitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) gotoAddPprScreen,
    required TResult Function(PprModel ppr) addPpr,
    required TResult Function(LastState lastState) back,
  }) {
    return initial(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? addPpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return initial?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? addPpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements PprEvent {
  const factory _InitialEvent(final String equipmentid) = _$_InitialEvent;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotoAddPprScreenEventCopyWith<$Res> {
  factory _$$_GotoAddPprScreenEventCopyWith(_$_GotoAddPprScreenEvent value,
          $Res Function(_$_GotoAddPprScreenEvent) then) =
      __$$_GotoAddPprScreenEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_GotoAddPprScreenEventCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$_GotoAddPprScreenEvent>
    implements _$$_GotoAddPprScreenEventCopyWith<$Res> {
  __$$_GotoAddPprScreenEventCopyWithImpl(_$_GotoAddPprScreenEvent _value,
      $Res Function(_$_GotoAddPprScreenEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_GotoAddPprScreenEvent(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GotoAddPprScreenEvent implements _GotoAddPprScreenEvent {
  const _$_GotoAddPprScreenEvent(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprEvent.gotoAddPprScreen(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotoAddPprScreenEvent &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotoAddPprScreenEventCopyWith<_$_GotoAddPprScreenEvent> get copyWith =>
      __$$_GotoAddPprScreenEventCopyWithImpl<_$_GotoAddPprScreenEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) gotoAddPprScreen,
    required TResult Function(PprModel ppr) addPpr,
    required TResult Function(LastState lastState) back,
  }) {
    return gotoAddPprScreen(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? addPpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return gotoAddPprScreen?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? addPpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (gotoAddPprScreen != null) {
      return gotoAddPprScreen(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return gotoAddPprScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return gotoAddPprScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (gotoAddPprScreen != null) {
      return gotoAddPprScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoAddPprScreenEvent implements PprEvent {
  const factory _GotoAddPprScreenEvent(final String equipmentid) =
      _$_GotoAddPprScreenEvent;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_GotoAddPprScreenEventCopyWith<_$_GotoAddPprScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddPprEventCopyWith<$Res> {
  factory _$$_AddPprEventCopyWith(
          _$_AddPprEvent value, $Res Function(_$_AddPprEvent) then) =
      __$$_AddPprEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$_AddPprEventCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$_AddPprEvent>
    implements _$$_AddPprEventCopyWith<$Res> {
  __$$_AddPprEventCopyWithImpl(
      _$_AddPprEvent _value, $Res Function(_$_AddPprEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ppr = null,
  }) {
    return _then(_$_AddPprEvent(
      null == ppr
          ? _value.ppr
          : ppr // ignore: cast_nullable_to_non_nullable
              as PprModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PprModelCopyWith<$Res> get ppr {
    return $PprModelCopyWith<$Res>(_value.ppr, (value) {
      return _then(_value.copyWith(ppr: value));
    });
  }
}

/// @nodoc

class _$_AddPprEvent implements _AddPprEvent {
  const _$_AddPprEvent(this.ppr);

  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprEvent.addPpr(ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPprEvent &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPprEventCopyWith<_$_AddPprEvent> get copyWith =>
      __$$_AddPprEventCopyWithImpl<_$_AddPprEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) gotoAddPprScreen,
    required TResult Function(PprModel ppr) addPpr,
    required TResult Function(LastState lastState) back,
  }) {
    return addPpr(ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? addPpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return addPpr?.call(ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? addPpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (addPpr != null) {
      return addPpr(ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return addPpr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return addPpr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (addPpr != null) {
      return addPpr(this);
    }
    return orElse();
  }
}

abstract class _AddPprEvent implements PprEvent {
  const factory _AddPprEvent(final PprModel ppr) = _$_AddPprEvent;

  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$_AddPprEventCopyWith<_$_AddPprEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackEventCopyWith<$Res> {
  factory _$$_BackEventCopyWith(
          _$_BackEvent value, $Res Function(_$_BackEvent) then) =
      __$$_BackEventCopyWithImpl<$Res>;
  @useResult
  $Res call({LastState lastState});
}

/// @nodoc
class __$$_BackEventCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$_BackEvent>
    implements _$$_BackEventCopyWith<$Res> {
  __$$_BackEventCopyWithImpl(
      _$_BackEvent _value, $Res Function(_$_BackEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastState = null,
  }) {
    return _then(_$_BackEvent(
      null == lastState
          ? _value.lastState
          : lastState // ignore: cast_nullable_to_non_nullable
              as LastState,
    ));
  }
}

/// @nodoc

class _$_BackEvent implements _BackEvent {
  const _$_BackEvent(this.lastState);

  @override
  final LastState lastState;

  @override
  String toString() {
    return 'PprEvent.back(lastState: $lastState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackEvent &&
            (identical(other.lastState, lastState) ||
                other.lastState == lastState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackEventCopyWith<_$_BackEvent> get copyWith =>
      __$$_BackEventCopyWithImpl<_$_BackEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) gotoAddPprScreen,
    required TResult Function(PprModel ppr) addPpr,
    required TResult Function(LastState lastState) back,
  }) {
    return back(lastState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? addPpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return back?.call(lastState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? addPpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(lastState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _BackEvent implements PprEvent {
  const factory _BackEvent(final LastState lastState) = _$_BackEvent;

  LastState get lastState;
  @JsonKey(ignore: true)
  _$$_BackEventCopyWith<_$_BackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PprState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PprStateCopyWith<$Res> {
  factory $PprStateCopyWith(PprState value, $Res Function(PprState) then) =
      _$PprStateCopyWithImpl<$Res, PprState>;
}

/// @nodoc
class _$PprStateCopyWithImpl<$Res, $Val extends PprState>
    implements $PprStateCopyWith<$Res> {
  _$PprStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_InitialState(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprState.initial(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return initial(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return initial?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements PprState {
  const factory _InitialState(final String equipmentid) = _$_InitialState;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddScreenStateCopyWith<$Res> {
  factory _$$_AddScreenStateCopyWith(
          _$_AddScreenState value, $Res Function(_$_AddScreenState) then) =
      __$$_AddScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_AddScreenStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_AddScreenState>
    implements _$$_AddScreenStateCopyWith<$Res> {
  __$$_AddScreenStateCopyWithImpl(
      _$_AddScreenState _value, $Res Function(_$_AddScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_AddScreenState(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddScreenState implements _AddScreenState {
  const _$_AddScreenState(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprState.addScreen(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddScreenState &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddScreenStateCopyWith<_$_AddScreenState> get copyWith =>
      __$$_AddScreenStateCopyWithImpl<_$_AddScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return addScreen(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return addScreen?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (addScreen != null) {
      return addScreen(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return addScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return addScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (addScreen != null) {
      return addScreen(this);
    }
    return orElse();
  }
}

abstract class _AddScreenState implements PprState {
  const factory _AddScreenState(final String equipmentid) = _$_AddScreenState;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_AddScreenStateCopyWith<_$_AddScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_Ppr3ScreenStateCopyWith<$Res> {
  factory _$$_Ppr3ScreenStateCopyWith(
          _$_Ppr3ScreenState value, $Res Function(_$_Ppr3ScreenState) then) =
      __$$_Ppr3ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_Ppr3ScreenStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_Ppr3ScreenState>
    implements _$$_Ppr3ScreenStateCopyWith<$Res> {
  __$$_Ppr3ScreenStateCopyWithImpl(
      _$_Ppr3ScreenState _value, $Res Function(_$_Ppr3ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_Ppr3ScreenState(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Ppr3ScreenState implements _Ppr3ScreenState {
  const _$_Ppr3ScreenState(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprState.ppr3Screen(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ppr3ScreenState &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Ppr3ScreenStateCopyWith<_$_Ppr3ScreenState> get copyWith =>
      __$$_Ppr3ScreenStateCopyWithImpl<_$_Ppr3ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return ppr3Screen(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return ppr3Screen?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (ppr3Screen != null) {
      return ppr3Screen(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return ppr3Screen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return ppr3Screen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (ppr3Screen != null) {
      return ppr3Screen(this);
    }
    return orElse();
  }
}

abstract class _Ppr3ScreenState implements PprState {
  const factory _Ppr3ScreenState(final String equipmentid) = _$_Ppr3ScreenState;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_Ppr3ScreenStateCopyWith<_$_Ppr3ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackStateCopyWith<$Res> {
  factory _$$_BackStateCopyWith(
          _$_BackState value, $Res Function(_$_BackState) then) =
      __$$_BackStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_BackState>
    implements _$$_BackStateCopyWith<$Res> {
  __$$_BackStateCopyWithImpl(
      _$_BackState _value, $Res Function(_$_BackState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackState implements _BackState {
  const _$_BackState();

  @override
  String toString() {
    return 'PprState.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BackState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _BackState implements PprState {
  const factory _BackState() = _$_BackState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'PprState.loading()';
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
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
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
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements PprState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_OkAddStateCopyWith<$Res> {
  factory _$$_OkAddStateCopyWith(
          _$_OkAddState value, $Res Function(_$_OkAddState) then) =
      __$$_OkAddStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$_OkAddStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_OkAddState>
    implements _$$_OkAddStateCopyWith<$Res> {
  __$$_OkAddStateCopyWithImpl(
      _$_OkAddState _value, $Res Function(_$_OkAddState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$_OkAddState(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OkAddState implements _OkAddState {
  const _$_OkAddState(this.equipmentid);

  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprState.okAdd(equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OkAddState &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OkAddStateCopyWith<_$_OkAddState> get copyWith =>
      __$$_OkAddStateCopyWithImpl<_$_OkAddState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return okAdd(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return okAdd?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (okAdd != null) {
      return okAdd(equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return okAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return okAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (okAdd != null) {
      return okAdd(this);
    }
    return orElse();
  }
}

abstract class _OkAddState implements PprState {
  const factory _OkAddState(final String equipmentid) = _$_OkAddState;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$_OkAddStateCopyWith<_$_OkAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? equipmentid, List<PprModel>? list});
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_DataState(
      equipmentid: freezed == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PprModel>?,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState(
      {required this.equipmentid, required final List<PprModel>? list})
      : _list = list;

  @override
  final String? equipmentid;
  final List<PprModel>? _list;
  @override
  List<PprModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PprState.data(equipmentid: $equipmentid, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, equipmentid, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      __$$_DataStateCopyWithImpl<_$_DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(String equipmentid) okAdd,
    required TResult Function(String? equipmentid, List<PprModel>? list) data,
  }) {
    return data(equipmentid, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(String equipmentid)? okAdd,
    TResult? Function(String? equipmentid, List<PprModel>? list)? data,
  }) {
    return data?.call(equipmentid, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(String equipmentid)? okAdd,
    TResult Function(String? equipmentid, List<PprModel>? list)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(equipmentid, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkAddState value) okAdd,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkAddState value)? okAdd,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkAddState value)? okAdd,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements PprState {
  const factory _DataState(
      {required final String? equipmentid,
      required final List<PprModel>? list}) = _$_DataState;

  String? get equipmentid;
  List<PprModel>? get list;
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
