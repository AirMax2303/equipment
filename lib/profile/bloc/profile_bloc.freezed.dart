// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
  $Res call({String key});
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_InitialEvent(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'ProfileEvent.initial(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialEvent &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      __$$_InitialEventCopyWithImpl<_$_InitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return initial(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return initial?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements ProfileEvent {
  const factory _InitialEvent(final String key) = _$_InitialEvent;

  String get key;
  @JsonKey(ignore: true)
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotoProfileScreenEventCopyWith<$Res> {
  factory _$$_GotoProfileScreenEventCopyWith(_$_GotoProfileScreenEvent value,
          $Res Function(_$_GotoProfileScreenEvent) then) =
      __$$_GotoProfileScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoProfileScreenEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GotoProfileScreenEvent>
    implements _$$_GotoProfileScreenEventCopyWith<$Res> {
  __$$_GotoProfileScreenEventCopyWithImpl(_$_GotoProfileScreenEvent _value,
      $Res Function(_$_GotoProfileScreenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoProfileScreenEvent implements _GotoProfileScreenEvent {
  const _$_GotoProfileScreenEvent();

  @override
  String toString() {
    return 'ProfileEvent.gotoProfileScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotoProfileScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return gotoProfileScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return gotoProfileScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (gotoProfileScreen != null) {
      return gotoProfileScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return gotoProfileScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return gotoProfileScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (gotoProfileScreen != null) {
      return gotoProfileScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoProfileScreenEvent implements ProfileEvent {
  const factory _GotoProfileScreenEvent() = _$_GotoProfileScreenEvent;
}

/// @nodoc
abstract class _$$_GotoLoginScreenEventCopyWith<$Res> {
  factory _$$_GotoLoginScreenEventCopyWith(_$_GotoLoginScreenEvent value,
          $Res Function(_$_GotoLoginScreenEvent) then) =
      __$$_GotoLoginScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoLoginScreenEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GotoLoginScreenEvent>
    implements _$$_GotoLoginScreenEventCopyWith<$Res> {
  __$$_GotoLoginScreenEventCopyWithImpl(_$_GotoLoginScreenEvent _value,
      $Res Function(_$_GotoLoginScreenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoLoginScreenEvent implements _GotoLoginScreenEvent {
  const _$_GotoLoginScreenEvent();

  @override
  String toString() {
    return 'ProfileEvent.gotoLoginScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GotoLoginScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return gotoLoginScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return gotoLoginScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (gotoLoginScreen != null) {
      return gotoLoginScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return gotoLoginScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return gotoLoginScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (gotoLoginScreen != null) {
      return gotoLoginScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoLoginScreenEvent implements ProfileEvent {
  const factory _GotoLoginScreenEvent() = _$_GotoLoginScreenEvent;
}

/// @nodoc
abstract class _$$_GotoUserDataScreenEventCopyWith<$Res> {
  factory _$$_GotoUserDataScreenEventCopyWith(_$_GotoUserDataScreenEvent value,
          $Res Function(_$_GotoUserDataScreenEvent) then) =
      __$$_GotoUserDataScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoUserDataScreenEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GotoUserDataScreenEvent>
    implements _$$_GotoUserDataScreenEventCopyWith<$Res> {
  __$$_GotoUserDataScreenEventCopyWithImpl(_$_GotoUserDataScreenEvent _value,
      $Res Function(_$_GotoUserDataScreenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoUserDataScreenEvent implements _GotoUserDataScreenEvent {
  const _$_GotoUserDataScreenEvent();

  @override
  String toString() {
    return 'ProfileEvent.gotoUserDataScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotoUserDataScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return gotoUserDataScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return gotoUserDataScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (gotoUserDataScreen != null) {
      return gotoUserDataScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return gotoUserDataScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return gotoUserDataScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (gotoUserDataScreen != null) {
      return gotoUserDataScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoUserDataScreenEvent implements ProfileEvent {
  const factory _GotoUserDataScreenEvent() = _$_GotoUserDataScreenEvent;
}

/// @nodoc
abstract class _$$_SaveUserDatalEventCopyWith<$Res> {
  factory _$$_SaveUserDatalEventCopyWith(_$_SaveUserDatalEvent value,
          $Res Function(_$_SaveUserDatalEvent) then) =
      __$$_SaveUserDatalEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class __$$_SaveUserDatalEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SaveUserDatalEvent>
    implements _$$_SaveUserDatalEventCopyWith<$Res> {
  __$$_SaveUserDatalEventCopyWithImpl(
      _$_SaveUserDatalEvent _value, $Res Function(_$_SaveUserDatalEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$_SaveUserDatalEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveUserDatalEvent implements _SaveUserDatalEvent {
  const _$_SaveUserDatalEvent({required this.email, required this.phone});

  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'ProfileEvent.saveUserData(email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveUserDatalEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveUserDatalEventCopyWith<_$_SaveUserDatalEvent> get copyWith =>
      __$$_SaveUserDatalEventCopyWithImpl<_$_SaveUserDatalEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return saveUserData(email, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return saveUserData?.call(email, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (saveUserData != null) {
      return saveUserData(email, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return saveUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return saveUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (saveUserData != null) {
      return saveUserData(this);
    }
    return orElse();
  }
}

abstract class _SaveUserDatalEvent implements ProfileEvent {
  const factory _SaveUserDatalEvent(
      {required final String email,
      required final String phone}) = _$_SaveUserDatalEvent;

  String get email;
  String get phone;
  @JsonKey(ignore: true)
  _$$_SaveUserDatalEventCopyWith<_$_SaveUserDatalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavePasswordEventCopyWith<$Res> {
  factory _$$_SavePasswordEventCopyWith(_$_SavePasswordEvent value,
          $Res Function(_$_SavePasswordEvent) then) =
      __$$_SavePasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_SavePasswordEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SavePasswordEvent>
    implements _$$_SavePasswordEventCopyWith<$Res> {
  __$$_SavePasswordEventCopyWithImpl(
      _$_SavePasswordEvent _value, $Res Function(_$_SavePasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_SavePasswordEvent(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SavePasswordEvent implements _SavePasswordEvent {
  const _$_SavePasswordEvent({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEvent.savePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePasswordEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePasswordEventCopyWith<_$_SavePasswordEvent> get copyWith =>
      __$$_SavePasswordEventCopyWithImpl<_$_SavePasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return savePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return savePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (savePassword != null) {
      return savePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return savePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return savePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (savePassword != null) {
      return savePassword(this);
    }
    return orElse();
  }
}

abstract class _SavePasswordEvent implements ProfileEvent {
  const factory _SavePasswordEvent({required final String password}) =
      _$_SavePasswordEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$_SavePasswordEventCopyWith<_$_SavePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveTarifEventCopyWith<$Res> {
  factory _$$_SaveTarifEventCopyWith(
          _$_SaveTarifEvent value, $Res Function(_$_SaveTarifEvent) then) =
      __$$_SaveTarifEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String tarif});
}

/// @nodoc
class __$$_SaveTarifEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SaveTarifEvent>
    implements _$$_SaveTarifEventCopyWith<$Res> {
  __$$_SaveTarifEventCopyWithImpl(
      _$_SaveTarifEvent _value, $Res Function(_$_SaveTarifEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tarif = null,
  }) {
    return _then(_$_SaveTarifEvent(
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveTarifEvent implements _SaveTarifEvent {
  const _$_SaveTarifEvent({required this.tarif});

  @override
  final String tarif;

  @override
  String toString() {
    return 'ProfileEvent.saveTarif(tarif: $tarif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTarifEvent &&
            (identical(other.tarif, tarif) || other.tarif == tarif));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tarif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTarifEventCopyWith<_$_SaveTarifEvent> get copyWith =>
      __$$_SaveTarifEventCopyWithImpl<_$_SaveTarifEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return saveTarif(tarif);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return saveTarif?.call(tarif);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (saveTarif != null) {
      return saveTarif(tarif);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return saveTarif(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return saveTarif?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (saveTarif != null) {
      return saveTarif(this);
    }
    return orElse();
  }
}

abstract class _SaveTarifEvent implements ProfileEvent {
  const factory _SaveTarifEvent({required final String tarif}) =
      _$_SaveTarifEvent;

  String get tarif;
  @JsonKey(ignore: true)
  _$$_SaveTarifEventCopyWith<_$_SaveTarifEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotoMainScreenlEventCopyWith<$Res> {
  factory _$$_GotoMainScreenlEventCopyWith(_$_GotoMainScreenlEvent value,
          $Res Function(_$_GotoMainScreenlEvent) then) =
      __$$_GotoMainScreenlEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoMainScreenlEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GotoMainScreenlEvent>
    implements _$$_GotoMainScreenlEventCopyWith<$Res> {
  __$$_GotoMainScreenlEventCopyWithImpl(_$_GotoMainScreenlEvent _value,
      $Res Function(_$_GotoMainScreenlEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoMainScreenlEvent implements _GotoMainScreenlEvent {
  const _$_GotoMainScreenlEvent();

  @override
  String toString() {
    return 'ProfileEvent.gotoMainScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GotoMainScreenlEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return gotoMainScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return gotoMainScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (gotoMainScreen != null) {
      return gotoMainScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return gotoMainScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return gotoMainScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (gotoMainScreen != null) {
      return gotoMainScreen(this);
    }
    return orElse();
  }
}

abstract class _GotoMainScreenlEvent implements ProfileEvent {
  const factory _GotoMainScreenlEvent() = _$_GotoMainScreenlEvent;
}

/// @nodoc
abstract class _$$_SaveProfileEventCopyWith<$Res> {
  factory _$$_SaveProfileEventCopyWith(
          _$_SaveProfileEvent value, $Res Function(_$_SaveProfileEvent) then) =
      __$$_SaveProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String phone, String password});
}

/// @nodoc
class __$$_SaveProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SaveProfileEvent>
    implements _$$_SaveProfileEventCopyWith<$Res> {
  __$$_SaveProfileEventCopyWithImpl(
      _$_SaveProfileEvent _value, $Res Function(_$_SaveProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$_SaveProfileEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveProfileEvent implements _SaveProfileEvent {
  const _$_SaveProfileEvent(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEvent.saveProfile(name: $name, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveProfileEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveProfileEventCopyWith<_$_SaveProfileEvent> get copyWith =>
      __$$_SaveProfileEventCopyWithImpl<_$_SaveProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function() gotoProfileScreen,
    required TResult Function() gotoLoginScreen,
    required TResult Function() gotoUserDataScreen,
    required TResult Function(String email, String phone) saveUserData,
    required TResult Function(String password) savePassword,
    required TResult Function(String tarif) saveTarif,
    required TResult Function() gotoMainScreen,
    required TResult Function(
            String name, String email, String phone, String password)
        saveProfile,
  }) {
    return saveProfile(name, email, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function()? gotoProfileScreen,
    TResult? Function()? gotoLoginScreen,
    TResult? Function()? gotoUserDataScreen,
    TResult? Function(String email, String phone)? saveUserData,
    TResult? Function(String password)? savePassword,
    TResult? Function(String tarif)? saveTarif,
    TResult? Function()? gotoMainScreen,
    TResult? Function(String name, String email, String phone, String password)?
        saveProfile,
  }) {
    return saveProfile?.call(name, email, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function()? gotoProfileScreen,
    TResult Function()? gotoLoginScreen,
    TResult Function()? gotoUserDataScreen,
    TResult Function(String email, String phone)? saveUserData,
    TResult Function(String password)? savePassword,
    TResult Function(String tarif)? saveTarif,
    TResult Function()? gotoMainScreen,
    TResult Function(String name, String email, String phone, String password)?
        saveProfile,
    required TResult orElse(),
  }) {
    if (saveProfile != null) {
      return saveProfile(name, email, phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_GotoProfileScreenEvent value) gotoProfileScreen,
    required TResult Function(_GotoLoginScreenEvent value) gotoLoginScreen,
    required TResult Function(_GotoUserDataScreenEvent value)
        gotoUserDataScreen,
    required TResult Function(_SaveUserDatalEvent value) saveUserData,
    required TResult Function(_SavePasswordEvent value) savePassword,
    required TResult Function(_SaveTarifEvent value) saveTarif,
    required TResult Function(_GotoMainScreenlEvent value) gotoMainScreen,
    required TResult Function(_SaveProfileEvent value) saveProfile,
  }) {
    return saveProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult? Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult? Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult? Function(_SaveUserDatalEvent value)? saveUserData,
    TResult? Function(_SavePasswordEvent value)? savePassword,
    TResult? Function(_SaveTarifEvent value)? saveTarif,
    TResult? Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult? Function(_SaveProfileEvent value)? saveProfile,
  }) {
    return saveProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_GotoProfileScreenEvent value)? gotoProfileScreen,
    TResult Function(_GotoLoginScreenEvent value)? gotoLoginScreen,
    TResult Function(_GotoUserDataScreenEvent value)? gotoUserDataScreen,
    TResult Function(_SaveUserDatalEvent value)? saveUserData,
    TResult Function(_SavePasswordEvent value)? savePassword,
    TResult Function(_SaveTarifEvent value)? saveTarif,
    TResult Function(_GotoMainScreenlEvent value)? gotoMainScreen,
    TResult Function(_SaveProfileEvent value)? saveProfile,
    required TResult orElse(),
  }) {
    if (saveProfile != null) {
      return saveProfile(this);
    }
    return orElse();
  }
}

abstract class _SaveProfileEvent implements ProfileEvent {
  const factory _SaveProfileEvent(
      {required final String name,
      required final String email,
      required final String phone,
      required final String password}) = _$_SaveProfileEvent;

  String get name;
  String get email;
  String get phone;
  String get password;
  @JsonKey(ignore: true)
  _$$_SaveProfileEventCopyWith<_$_SaveProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ProfileState.initial()';
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
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
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
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ProfileState {
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
    extends _$ProfileStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'ProfileState.loading()';
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
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
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
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ProfileState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_OkStateCopyWith<$Res> {
  factory _$$_OkStateCopyWith(
          _$_OkState value, $Res Function(_$_OkState) then) =
      __$$_OkStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OkStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_OkState>
    implements _$$_OkStateCopyWith<$Res> {
  __$$_OkStateCopyWithImpl(_$_OkState _value, $Res Function(_$_OkState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OkState implements _OkState {
  const _$_OkState();

  @override
  String toString() {
    return 'ProfileState.ok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OkState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return ok?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
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
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _OkState implements ProfileState {
  const factory _OkState() = _$_OkState;
}

/// @nodoc
abstract class _$$_noDataStateCopyWith<$Res> {
  factory _$$_noDataStateCopyWith(
          _$_noDataState value, $Res Function(_$_noDataState) then) =
      __$$_noDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_noDataStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_noDataState>
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
    return 'ProfileState.noData()';
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
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
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
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _noDataState implements ProfileState {
  const factory _noDataState() = _$_noDataState;
}

/// @nodoc
abstract class _$$_ProfileScreenCopyWith<$Res> {
  factory _$$_ProfileScreenCopyWith(
          _$_ProfileScreen value, $Res Function(_$_ProfileScreen) then) =
      __$$_ProfileScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileScreenCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileScreen>
    implements _$$_ProfileScreenCopyWith<$Res> {
  __$$_ProfileScreenCopyWithImpl(
      _$_ProfileScreen _value, $Res Function(_$_ProfileScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileScreen implements _ProfileScreen {
  const _$_ProfileScreen();

  @override
  String toString() {
    return 'ProfileState.profileScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return profileScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return profileScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) {
    if (profileScreen != null) {
      return profileScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return profileScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return profileScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (profileScreen != null) {
      return profileScreen(this);
    }
    return orElse();
  }
}

abstract class _ProfileScreen implements ProfileState {
  const factory _ProfileScreen() = _$_ProfileScreen;
}

/// @nodoc
abstract class _$$_LoginScreenCopyWith<$Res> {
  factory _$$_LoginScreenCopyWith(
          _$_LoginScreen value, $Res Function(_$_LoginScreen) then) =
      __$$_LoginScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginScreenCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_LoginScreen>
    implements _$$_LoginScreenCopyWith<$Res> {
  __$$_LoginScreenCopyWithImpl(
      _$_LoginScreen _value, $Res Function(_$_LoginScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginScreen implements _LoginScreen {
  const _$_LoginScreen();

  @override
  String toString() {
    return 'ProfileState.loginScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return loginScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return loginScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) {
    if (loginScreen != null) {
      return loginScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return loginScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return loginScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loginScreen != null) {
      return loginScreen(this);
    }
    return orElse();
  }
}

abstract class _LoginScreen implements ProfileState {
  const factory _LoginScreen() = _$_LoginScreen;
}

/// @nodoc
abstract class _$$_MainScreenCopyWith<$Res> {
  factory _$$_MainScreenCopyWith(
          _$_MainScreen value, $Res Function(_$_MainScreen) then) =
      __$$_MainScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainScreenCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_MainScreen>
    implements _$$_MainScreenCopyWith<$Res> {
  __$$_MainScreenCopyWithImpl(
      _$_MainScreen _value, $Res Function(_$_MainScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainScreen implements _MainScreen {
  const _$_MainScreen();

  @override
  String toString() {
    return 'ProfileState.mainScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return mainScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return mainScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) {
    if (mainScreen != null) {
      return mainScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return mainScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return mainScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (mainScreen != null) {
      return mainScreen(this);
    }
    return orElse();
  }
}

abstract class _MainScreen implements ProfileState {
  const factory _MainScreen() = _$_MainScreen;
}

/// @nodoc
abstract class _$$_UserDataScreenCopyWith<$Res> {
  factory _$$_UserDataScreenCopyWith(
          _$_UserDataScreen value, $Res Function(_$_UserDataScreen) then) =
      __$$_UserDataScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDataScreenCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_UserDataScreen>
    implements _$$_UserDataScreenCopyWith<$Res> {
  __$$_UserDataScreenCopyWithImpl(
      _$_UserDataScreen _value, $Res Function(_$_UserDataScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserDataScreen implements _UserDataScreen {
  const _$_UserDataScreen();

  @override
  String toString() {
    return 'ProfileState.userDataScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserDataScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return userDataScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return userDataScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) {
    if (userDataScreen != null) {
      return userDataScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return userDataScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return userDataScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (userDataScreen != null) {
      return userDataScreen(this);
    }
    return orElse();
  }
}

abstract class _UserDataScreen implements ProfileState {
  const factory _UserDataScreen() = _$_UserDataScreen;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel? profile});

  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$_DataState(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState({required this.profile});

  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'ProfileState.data(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

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
    required TResult Function() ok,
    required TResult Function() noData,
    required TResult Function() profileScreen,
    required TResult Function() loginScreen,
    required TResult Function() mainScreen,
    required TResult Function() userDataScreen,
    required TResult Function(ProfileModel? profile) data,
  }) {
    return data(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ok,
    TResult? Function()? noData,
    TResult? Function()? profileScreen,
    TResult? Function()? loginScreen,
    TResult? Function()? mainScreen,
    TResult? Function()? userDataScreen,
    TResult? Function(ProfileModel? profile)? data,
  }) {
    return data?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? noData,
    TResult Function()? profileScreen,
    TResult Function()? loginScreen,
    TResult Function()? mainScreen,
    TResult Function()? userDataScreen,
    TResult Function(ProfileModel? profile)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OkState value) ok,
    required TResult Function(_noDataState value) noData,
    required TResult Function(_ProfileScreen value) profileScreen,
    required TResult Function(_LoginScreen value) loginScreen,
    required TResult Function(_MainScreen value) mainScreen,
    required TResult Function(_UserDataScreen value) userDataScreen,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OkState value)? ok,
    TResult? Function(_noDataState value)? noData,
    TResult? Function(_ProfileScreen value)? profileScreen,
    TResult? Function(_LoginScreen value)? loginScreen,
    TResult? Function(_MainScreen value)? mainScreen,
    TResult? Function(_UserDataScreen value)? userDataScreen,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OkState value)? ok,
    TResult Function(_noDataState value)? noData,
    TResult Function(_ProfileScreen value)? profileScreen,
    TResult Function(_LoginScreen value)? loginScreen,
    TResult Function(_MainScreen value)? mainScreen,
    TResult Function(_UserDataScreen value)? userDataScreen,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements ProfileState {
  const factory _DataState({required final ProfileModel? profile}) =
      _$_DataState;

  ProfileModel? get profile;
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
