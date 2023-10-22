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
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
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
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, String equipmentid});
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? equipmentid = null,
  }) {
    return _then(_$InitialEventImpl(
      null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl(this.pprType, this.equipmentid);

  @override
  final PprType pprType;
  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprEvent.initial(pprType: $pprType, equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEventImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return initial(pprType, equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return initial?.call(pprType, equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pprType, equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
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
  const factory _InitialEvent(final PprType pprType, final String equipmentid) =
      _$InitialEventImpl;

  PprType get pprType;
  String get equipmentid;
  @JsonKey(ignore: true)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoAddPprScreenEventImplCopyWith<$Res> {
  factory _$$GotoAddPprScreenEventImplCopyWith(
          _$GotoAddPprScreenEventImpl value,
          $Res Function(_$GotoAddPprScreenEventImpl) then) =
      __$$GotoAddPprScreenEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, String equipmentid});
}

/// @nodoc
class __$$GotoAddPprScreenEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$GotoAddPprScreenEventImpl>
    implements _$$GotoAddPprScreenEventImplCopyWith<$Res> {
  __$$GotoAddPprScreenEventImplCopyWithImpl(_$GotoAddPprScreenEventImpl _value,
      $Res Function(_$GotoAddPprScreenEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? equipmentid = null,
  }) {
    return _then(_$GotoAddPprScreenEventImpl(
      null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GotoAddPprScreenEventImpl implements _GotoAddPprScreenEvent {
  const _$GotoAddPprScreenEventImpl(this.pprType, this.equipmentid);

  @override
  final PprType pprType;
  @override
  final String equipmentid;

  @override
  String toString() {
    return 'PprEvent.gotoAddPprScreen(pprType: $pprType, equipmentid: $equipmentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoAddPprScreenEventImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoAddPprScreenEventImplCopyWith<_$GotoAddPprScreenEventImpl>
      get copyWith => __$$GotoAddPprScreenEventImplCopyWithImpl<
          _$GotoAddPprScreenEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return gotoAddPprScreen(pprType, equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return gotoAddPprScreen?.call(pprType, equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (gotoAddPprScreen != null) {
      return gotoAddPprScreen(pprType, equipmentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return gotoAddPprScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return gotoAddPprScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
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
  const factory _GotoAddPprScreenEvent(
          final PprType pprType, final String equipmentid) =
      _$GotoAddPprScreenEventImpl;

  PprType get pprType;
  String get equipmentid;
  @JsonKey(ignore: true)
  _$$GotoAddPprScreenEventImplCopyWith<_$GotoAddPprScreenEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoEditPprScreenEventImplCopyWith<$Res> {
  factory _$$GotoEditPprScreenEventImplCopyWith(
          _$GotoEditPprScreenEventImpl value,
          $Res Function(_$GotoEditPprScreenEventImpl) then) =
      __$$GotoEditPprScreenEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$GotoEditPprScreenEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$GotoEditPprScreenEventImpl>
    implements _$$GotoEditPprScreenEventImplCopyWith<$Res> {
  __$$GotoEditPprScreenEventImplCopyWithImpl(
      _$GotoEditPprScreenEventImpl _value,
      $Res Function(_$GotoEditPprScreenEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ppr = null,
  }) {
    return _then(_$GotoEditPprScreenEventImpl(
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

class _$GotoEditPprScreenEventImpl implements _GotoEditPprScreenEvent {
  const _$GotoEditPprScreenEventImpl(this.ppr);

  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprEvent.gotoEditPprScreen(ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoEditPprScreenEventImpl &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoEditPprScreenEventImplCopyWith<_$GotoEditPprScreenEventImpl>
      get copyWith => __$$GotoEditPprScreenEventImplCopyWithImpl<
          _$GotoEditPprScreenEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return gotoEditPprScreen(ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return gotoEditPprScreen?.call(ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (gotoEditPprScreen != null) {
      return gotoEditPprScreen(ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return gotoEditPprScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return gotoEditPprScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (gotoEditPprScreen != null) {
      return gotoEditPprScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoEditPprScreenEvent implements PprEvent {
  const factory _GotoEditPprScreenEvent(final PprModel ppr) =
      _$GotoEditPprScreenEventImpl;

  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$GotoEditPprScreenEventImplCopyWith<_$GotoEditPprScreenEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPprEventImplCopyWith<$Res> {
  factory _$$AddPprEventImplCopyWith(
          _$AddPprEventImpl value, $Res Function(_$AddPprEventImpl) then) =
      __$$AddPprEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, PprModel ppr, EquipmentModel equipment});

  $PprModelCopyWith<$Res> get ppr;
  $EquipmentModelCopyWith<$Res> get equipment;
}

/// @nodoc
class __$$AddPprEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$AddPprEventImpl>
    implements _$$AddPprEventImplCopyWith<$Res> {
  __$$AddPprEventImplCopyWithImpl(
      _$AddPprEventImpl _value, $Res Function(_$AddPprEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? ppr = null,
    Object? equipment = null,
  }) {
    return _then(_$AddPprEventImpl(
      null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
      null == ppr
          ? _value.ppr
          : ppr // ignore: cast_nullable_to_non_nullable
              as PprModel,
      null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as EquipmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PprModelCopyWith<$Res> get ppr {
    return $PprModelCopyWith<$Res>(_value.ppr, (value) {
      return _then(_value.copyWith(ppr: value));
    });
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

class _$AddPprEventImpl implements _AddPprEvent {
  const _$AddPprEventImpl(this.pprType, this.ppr, this.equipment);

  @override
  final PprType pprType;
  @override
  final PprModel ppr;
  @override
  final EquipmentModel equipment;

  @override
  String toString() {
    return 'PprEvent.addPpr(pprType: $pprType, ppr: $ppr, equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPprEventImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.ppr, ppr) || other.ppr == ppr) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, ppr, equipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPprEventImplCopyWith<_$AddPprEventImpl> get copyWith =>
      __$$AddPprEventImplCopyWithImpl<_$AddPprEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return addPpr(pprType, ppr, equipment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return addPpr?.call(pprType, ppr, equipment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (addPpr != null) {
      return addPpr(pprType, ppr, equipment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return addPpr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return addPpr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
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
  const factory _AddPprEvent(final PprType pprType, final PprModel ppr,
      final EquipmentModel equipment) = _$AddPprEventImpl;

  PprType get pprType;
  PprModel get ppr;
  EquipmentModel get equipment;
  @JsonKey(ignore: true)
  _$$AddPprEventImplCopyWith<_$AddPprEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePprEventImplCopyWith<$Res> {
  factory _$$DeletePprEventImplCopyWith(_$DeletePprEventImpl value,
          $Res Function(_$DeletePprEventImpl) then) =
      __$$DeletePprEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$DeletePprEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$DeletePprEventImpl>
    implements _$$DeletePprEventImplCopyWith<$Res> {
  __$$DeletePprEventImplCopyWithImpl(
      _$DeletePprEventImpl _value, $Res Function(_$DeletePprEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? ppr = null,
  }) {
    return _then(_$DeletePprEventImpl(
      null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
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

class _$DeletePprEventImpl implements _DeletePprEvent {
  const _$DeletePprEventImpl(this.pprType, this.ppr);

  @override
  final PprType pprType;
  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprEvent.deletePpr(pprType: $pprType, ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePprEventImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePprEventImplCopyWith<_$DeletePprEventImpl> get copyWith =>
      __$$DeletePprEventImplCopyWithImpl<_$DeletePprEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return deletePpr(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return deletePpr?.call(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (deletePpr != null) {
      return deletePpr(pprType, ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return deletePpr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return deletePpr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (deletePpr != null) {
      return deletePpr(this);
    }
    return orElse();
  }
}

abstract class _DeletePprEvent implements PprEvent {
  const factory _DeletePprEvent(final PprType pprType, final PprModel ppr) =
      _$DeletePprEventImpl;

  PprType get pprType;
  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$DeletePprEventImplCopyWith<_$DeletePprEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePprEventImplCopyWith<$Res> {
  factory _$$UpdatePprEventImplCopyWith(_$UpdatePprEventImpl value,
          $Res Function(_$UpdatePprEventImpl) then) =
      __$$UpdatePprEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$UpdatePprEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$UpdatePprEventImpl>
    implements _$$UpdatePprEventImplCopyWith<$Res> {
  __$$UpdatePprEventImplCopyWithImpl(
      _$UpdatePprEventImpl _value, $Res Function(_$UpdatePprEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? ppr = null,
  }) {
    return _then(_$UpdatePprEventImpl(
      null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
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

class _$UpdatePprEventImpl implements _UpdatePprEvent {
  const _$UpdatePprEventImpl(this.pprType, this.ppr);

  @override
  final PprType pprType;
  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprEvent.updatePpr(pprType: $pprType, ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePprEventImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePprEventImplCopyWith<_$UpdatePprEventImpl> get copyWith =>
      __$$UpdatePprEventImplCopyWithImpl<_$UpdatePprEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return updatePpr(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return updatePpr?.call(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult Function(LastState lastState)? back,
    required TResult orElse(),
  }) {
    if (updatePpr != null) {
      return updatePpr(pprType, ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoAddPprScreenEvent value) gotoAddPprScreen,
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return updatePpr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return updatePpr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
    TResult Function(_BackEvent value)? back,
    required TResult orElse(),
  }) {
    if (updatePpr != null) {
      return updatePpr(this);
    }
    return orElse();
  }
}

abstract class _UpdatePprEvent implements PprEvent {
  const factory _UpdatePprEvent(final PprType pprType, final PprModel ppr) =
      _$UpdatePprEventImpl;

  PprType get pprType;
  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$UpdatePprEventImplCopyWith<_$UpdatePprEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackEventImplCopyWith<$Res> {
  factory _$$BackEventImplCopyWith(
          _$BackEventImpl value, $Res Function(_$BackEventImpl) then) =
      __$$BackEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LastState lastState});
}

/// @nodoc
class __$$BackEventImplCopyWithImpl<$Res>
    extends _$PprEventCopyWithImpl<$Res, _$BackEventImpl>
    implements _$$BackEventImplCopyWith<$Res> {
  __$$BackEventImplCopyWithImpl(
      _$BackEventImpl _value, $Res Function(_$BackEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastState = null,
  }) {
    return _then(_$BackEventImpl(
      null == lastState
          ? _value.lastState
          : lastState // ignore: cast_nullable_to_non_nullable
              as LastState,
    ));
  }
}

/// @nodoc

class _$BackEventImpl implements _BackEvent {
  const _$BackEventImpl(this.lastState);

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
            other is _$BackEventImpl &&
            (identical(other.lastState, lastState) ||
                other.lastState == lastState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackEventImplCopyWith<_$BackEventImpl> get copyWith =>
      __$$BackEventImplCopyWithImpl<_$BackEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PprType pprType, String equipmentid) initial,
    required TResult Function(PprType pprType, String equipmentid)
        gotoAddPprScreen,
    required TResult Function(PprModel ppr) gotoEditPprScreen,
    required TResult Function(
            PprType pprType, PprModel ppr, EquipmentModel equipment)
        addPpr,
    required TResult Function(PprType pprType, PprModel ppr) deletePpr,
    required TResult Function(PprType pprType, PprModel ppr) updatePpr,
    required TResult Function(LastState lastState) back,
  }) {
    return back(lastState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PprType pprType, String equipmentid)? initial,
    TResult? Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult? Function(PprModel ppr)? gotoEditPprScreen,
    TResult? Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult? Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult? Function(PprType pprType, PprModel ppr)? updatePpr,
    TResult? Function(LastState lastState)? back,
  }) {
    return back?.call(lastState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PprType pprType, String equipmentid)? initial,
    TResult Function(PprType pprType, String equipmentid)? gotoAddPprScreen,
    TResult Function(PprModel ppr)? gotoEditPprScreen,
    TResult Function(PprType pprType, PprModel ppr, EquipmentModel equipment)?
        addPpr,
    TResult Function(PprType pprType, PprModel ppr)? deletePpr,
    TResult Function(PprType pprType, PprModel ppr)? updatePpr,
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
    required TResult Function(_GotoEditPprScreenEvent value) gotoEditPprScreen,
    required TResult Function(_AddPprEvent value) addPpr,
    required TResult Function(_DeletePprEvent value) deletePpr,
    required TResult Function(_UpdatePprEvent value) updatePpr,
    required TResult Function(_BackEvent value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult? Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult? Function(_AddPprEvent value)? addPpr,
    TResult? Function(_DeletePprEvent value)? deletePpr,
    TResult? Function(_UpdatePprEvent value)? updatePpr,
    TResult? Function(_BackEvent value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoAddPprScreenEvent value)? gotoAddPprScreen,
    TResult Function(_GotoEditPprScreenEvent value)? gotoEditPprScreen,
    TResult Function(_AddPprEvent value)? addPpr,
    TResult Function(_DeletePprEvent value)? deletePpr,
    TResult Function(_UpdatePprEvent value)? updatePpr,
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
  const factory _BackEvent(final LastState lastState) = _$BackEventImpl;

  LastState get lastState;
  @JsonKey(ignore: true)
  _$$BackEventImplCopyWith<_$BackEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PprState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$InitialStateImpl(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl(this.equipmentid);

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
            other is _$InitialStateImpl &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      __$$InitialStateImplCopyWithImpl<_$InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return initial(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return initial?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
  const factory _InitialState(final String equipmentid) = _$InitialStateImpl;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$PprStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'PprState.error(error: $error)';
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
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements PprState {
  const factory _ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddScreenStateImplCopyWith<$Res> {
  factory _$$AddScreenStateImplCopyWith(_$AddScreenStateImpl value,
          $Res Function(_$AddScreenStateImpl) then) =
      __$$AddScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$AddScreenStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$AddScreenStateImpl>
    implements _$$AddScreenStateImplCopyWith<$Res> {
  __$$AddScreenStateImplCopyWithImpl(
      _$AddScreenStateImpl _value, $Res Function(_$AddScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$AddScreenStateImpl(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddScreenStateImpl implements _AddScreenState {
  const _$AddScreenStateImpl(this.equipmentid);

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
            other is _$AddScreenStateImpl &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddScreenStateImplCopyWith<_$AddScreenStateImpl> get copyWith =>
      __$$AddScreenStateImplCopyWithImpl<_$AddScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return addScreen(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return addScreen?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return addScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return addScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
  const factory _AddScreenState(final String equipmentid) =
      _$AddScreenStateImpl;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$AddScreenStateImplCopyWith<_$AddScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditScreenStateImplCopyWith<$Res> {
  factory _$$EditScreenStateImplCopyWith(_$EditScreenStateImpl value,
          $Res Function(_$EditScreenStateImpl) then) =
      __$$EditScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$EditScreenStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$EditScreenStateImpl>
    implements _$$EditScreenStateImplCopyWith<$Res> {
  __$$EditScreenStateImplCopyWithImpl(
      _$EditScreenStateImpl _value, $Res Function(_$EditScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ppr = null,
  }) {
    return _then(_$EditScreenStateImpl(
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

class _$EditScreenStateImpl implements _EditScreenState {
  const _$EditScreenStateImpl(this.ppr);

  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprState.editScreen(ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditScreenStateImpl &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditScreenStateImplCopyWith<_$EditScreenStateImpl> get copyWith =>
      __$$EditScreenStateImplCopyWithImpl<_$EditScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return editScreen(ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return editScreen?.call(ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
    required TResult orElse(),
  }) {
    if (editScreen != null) {
      return editScreen(ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return editScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return editScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (editScreen != null) {
      return editScreen(this);
    }
    return orElse();
  }
}

abstract class _EditScreenState implements PprState {
  const factory _EditScreenState(final PprModel ppr) = _$EditScreenStateImpl;

  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$EditScreenStateImplCopyWith<_$EditScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Ppr3ScreenStateImplCopyWith<$Res> {
  factory _$$Ppr3ScreenStateImplCopyWith(_$Ppr3ScreenStateImpl value,
          $Res Function(_$Ppr3ScreenStateImpl) then) =
      __$$Ppr3ScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String equipmentid});
}

/// @nodoc
class __$$Ppr3ScreenStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$Ppr3ScreenStateImpl>
    implements _$$Ppr3ScreenStateImplCopyWith<$Res> {
  __$$Ppr3ScreenStateImplCopyWithImpl(
      _$Ppr3ScreenStateImpl _value, $Res Function(_$Ppr3ScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentid = null,
  }) {
    return _then(_$Ppr3ScreenStateImpl(
      null == equipmentid
          ? _value.equipmentid
          : equipmentid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Ppr3ScreenStateImpl implements _Ppr3ScreenState {
  const _$Ppr3ScreenStateImpl(this.equipmentid);

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
            other is _$Ppr3ScreenStateImpl &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equipmentid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Ppr3ScreenStateImplCopyWith<_$Ppr3ScreenStateImpl> get copyWith =>
      __$$Ppr3ScreenStateImplCopyWithImpl<_$Ppr3ScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return ppr3Screen(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return ppr3Screen?.call(equipmentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return ppr3Screen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return ppr3Screen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
  const factory _Ppr3ScreenState(final String equipmentid) =
      _$Ppr3ScreenStateImpl;

  String get equipmentid;
  @JsonKey(ignore: true)
  _$$Ppr3ScreenStateImplCopyWith<_$Ppr3ScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackStateImplCopyWith<$Res> {
  factory _$$BackStateImplCopyWith(
          _$BackStateImpl value, $Res Function(_$BackStateImpl) then) =
      __$$BackStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$BackStateImpl>
    implements _$$BackStateImplCopyWith<$Res> {
  __$$BackStateImplCopyWithImpl(
      _$BackStateImpl _value, $Res Function(_$BackStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackStateImpl implements _BackState {
  const _$BackStateImpl();

  @override
  String toString() {
    return 'PprState.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
  const factory _BackState() = _$BackStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'PprState.loading()';
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
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
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
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$OkStateImplCopyWith<$Res> {
  factory _$$OkStateImplCopyWith(
          _$OkStateImpl value, $Res Function(_$OkStateImpl) then) =
      __$$OkStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$OkStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$OkStateImpl>
    implements _$$OkStateImplCopyWith<$Res> {
  __$$OkStateImplCopyWithImpl(
      _$OkStateImpl _value, $Res Function(_$OkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? ppr = null,
  }) {
    return _then(_$OkStateImpl(
      pprType: null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
      ppr: null == ppr
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

class _$OkStateImpl implements _OkState {
  const _$OkStateImpl({required this.pprType, required this.ppr});

  @override
  final PprType pprType;
  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprState.ok(pprType: $pprType, ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkStateImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkStateImplCopyWith<_$OkStateImpl> get copyWith =>
      __$$OkStateImplCopyWithImpl<_$OkStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return ok(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return ok?.call(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(pprType, ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _OkState implements PprState {
  const factory _OkState(
      {required final PprType pprType,
      required final PprModel ppr}) = _$OkStateImpl;

  PprType get pprType;
  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$OkStateImplCopyWith<_$OkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OkDeleteStateImplCopyWith<$Res> {
  factory _$$OkDeleteStateImplCopyWith(
          _$OkDeleteStateImpl value, $Res Function(_$OkDeleteStateImpl) then) =
      __$$OkDeleteStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType pprType, PprModel ppr});

  $PprModelCopyWith<$Res> get ppr;
}

/// @nodoc
class __$$OkDeleteStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$OkDeleteStateImpl>
    implements _$$OkDeleteStateImplCopyWith<$Res> {
  __$$OkDeleteStateImplCopyWithImpl(
      _$OkDeleteStateImpl _value, $Res Function(_$OkDeleteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = null,
    Object? ppr = null,
  }) {
    return _then(_$OkDeleteStateImpl(
      pprType: null == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType,
      ppr: null == ppr
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

class _$OkDeleteStateImpl implements _OkDeleteState {
  const _$OkDeleteStateImpl({required this.pprType, required this.ppr});

  @override
  final PprType pprType;
  @override
  final PprModel ppr;

  @override
  String toString() {
    return 'PprState.okDelete(pprType: $pprType, ppr: $ppr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkDeleteStateImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.ppr, ppr) || other.ppr == ppr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, ppr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkDeleteStateImplCopyWith<_$OkDeleteStateImpl> get copyWith =>
      __$$OkDeleteStateImplCopyWithImpl<_$OkDeleteStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return okDelete(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return okDelete?.call(pprType, ppr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
    required TResult orElse(),
  }) {
    if (okDelete != null) {
      return okDelete(pprType, ppr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return okDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return okDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (okDelete != null) {
      return okDelete(this);
    }
    return orElse();
  }
}

abstract class _OkDeleteState implements PprState {
  const factory _OkDeleteState(
      {required final PprType pprType,
      required final PprModel ppr}) = _$OkDeleteStateImpl;

  PprType get pprType;
  PprModel get ppr;
  @JsonKey(ignore: true)
  _$$OkDeleteStateImplCopyWith<_$OkDeleteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PprType? pprType, String? equipmentid, List<PprModel>? list});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$PprStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pprType = freezed,
    Object? equipmentid = freezed,
    Object? list = freezed,
  }) {
    return _then(_$DataStateImpl(
      pprType: freezed == pprType
          ? _value.pprType
          : pprType // ignore: cast_nullable_to_non_nullable
              as PprType?,
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

class _$DataStateImpl implements _DataState {
  const _$DataStateImpl(
      {required this.pprType,
      required this.equipmentid,
      required final List<PprModel>? list})
      : _list = list;

  @override
  final PprType? pprType;
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
    return 'PprState.data(pprType: $pprType, equipmentid: $equipmentid, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl &&
            (identical(other.pprType, pprType) || other.pprType == pprType) &&
            (identical(other.equipmentid, equipmentid) ||
                other.equipmentid == equipmentid) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pprType, equipmentid,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      __$$DataStateImplCopyWithImpl<_$DataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String equipmentid) initial,
    required TResult Function(String error) error,
    required TResult Function(String equipmentid) addScreen,
    required TResult Function(PprModel ppr) editScreen,
    required TResult Function(String equipmentid) ppr3Screen,
    required TResult Function() back,
    required TResult Function() loading,
    required TResult Function(PprType pprType, PprModel ppr) ok,
    required TResult Function(PprType pprType, PprModel ppr) okDelete,
    required TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)
        data,
  }) {
    return data(pprType, equipmentid, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String equipmentid)? initial,
    TResult? Function(String error)? error,
    TResult? Function(String equipmentid)? addScreen,
    TResult? Function(PprModel ppr)? editScreen,
    TResult? Function(String equipmentid)? ppr3Screen,
    TResult? Function()? back,
    TResult? Function()? loading,
    TResult? Function(PprType pprType, PprModel ppr)? ok,
    TResult? Function(PprType pprType, PprModel ppr)? okDelete,
    TResult? Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
  }) {
    return data?.call(pprType, equipmentid, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String equipmentid)? initial,
    TResult Function(String error)? error,
    TResult Function(String equipmentid)? addScreen,
    TResult Function(PprModel ppr)? editScreen,
    TResult Function(String equipmentid)? ppr3Screen,
    TResult Function()? back,
    TResult Function()? loading,
    TResult Function(PprType pprType, PprModel ppr)? ok,
    TResult Function(PprType pprType, PprModel ppr)? okDelete,
    TResult Function(
            PprType? pprType, String? equipmentid, List<PprModel>? list)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pprType, equipmentid, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddScreenState value) addScreen,
    required TResult Function(_EditScreenState value) editScreen,
    required TResult Function(_Ppr3ScreenState value) ppr3Screen,
    required TResult Function(_BackState value) back,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_OkDeleteState value) okDelete,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddScreenState value)? addScreen,
    TResult? Function(_EditScreenState value)? editScreen,
    TResult? Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult? Function(_BackState value)? back,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_OkDeleteState value)? okDelete,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddScreenState value)? addScreen,
    TResult Function(_EditScreenState value)? editScreen,
    TResult Function(_Ppr3ScreenState value)? ppr3Screen,
    TResult Function(_BackState value)? back,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_OkDeleteState value)? okDelete,
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
      {required final PprType? pprType,
      required final String? equipmentid,
      required final List<PprModel>? list}) = _$DataStateImpl;

  PprType? get pprType;
  String? get equipmentid;
  List<PprModel>? get list;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
