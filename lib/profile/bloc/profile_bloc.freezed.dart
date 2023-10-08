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
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$InitialEventImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl(this.key);

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
            other is _$InitialEventImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

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
  const factory _InitialEvent(final String key) = _$InitialEventImpl;

  String get key;
  @JsonKey(ignore: true)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoProfileScreenEventImplCopyWith<$Res> {
  factory _$$GotoProfileScreenEventImplCopyWith(
          _$GotoProfileScreenEventImpl value,
          $Res Function(_$GotoProfileScreenEventImpl) then) =
      __$$GotoProfileScreenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoProfileScreenEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GotoProfileScreenEventImpl>
    implements _$$GotoProfileScreenEventImplCopyWith<$Res> {
  __$$GotoProfileScreenEventImplCopyWithImpl(
      _$GotoProfileScreenEventImpl _value,
      $Res Function(_$GotoProfileScreenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoProfileScreenEventImpl implements _GotoProfileScreenEvent {
  const _$GotoProfileScreenEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.gotoProfileScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoProfileScreenEventImpl);
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
  const factory _GotoProfileScreenEvent() = _$GotoProfileScreenEventImpl;
}

/// @nodoc
abstract class _$$GotoLoginScreenEventImplCopyWith<$Res> {
  factory _$$GotoLoginScreenEventImplCopyWith(_$GotoLoginScreenEventImpl value,
          $Res Function(_$GotoLoginScreenEventImpl) then) =
      __$$GotoLoginScreenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoLoginScreenEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GotoLoginScreenEventImpl>
    implements _$$GotoLoginScreenEventImplCopyWith<$Res> {
  __$$GotoLoginScreenEventImplCopyWithImpl(_$GotoLoginScreenEventImpl _value,
      $Res Function(_$GotoLoginScreenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoLoginScreenEventImpl implements _GotoLoginScreenEvent {
  const _$GotoLoginScreenEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.gotoLoginScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoLoginScreenEventImpl);
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
  const factory _GotoLoginScreenEvent() = _$GotoLoginScreenEventImpl;
}

/// @nodoc
abstract class _$$GotoUserDataScreenEventImplCopyWith<$Res> {
  factory _$$GotoUserDataScreenEventImplCopyWith(
          _$GotoUserDataScreenEventImpl value,
          $Res Function(_$GotoUserDataScreenEventImpl) then) =
      __$$GotoUserDataScreenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoUserDataScreenEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GotoUserDataScreenEventImpl>
    implements _$$GotoUserDataScreenEventImplCopyWith<$Res> {
  __$$GotoUserDataScreenEventImplCopyWithImpl(
      _$GotoUserDataScreenEventImpl _value,
      $Res Function(_$GotoUserDataScreenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoUserDataScreenEventImpl implements _GotoUserDataScreenEvent {
  const _$GotoUserDataScreenEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.gotoUserDataScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoUserDataScreenEventImpl);
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
  const factory _GotoUserDataScreenEvent() = _$GotoUserDataScreenEventImpl;
}

/// @nodoc
abstract class _$$SaveUserDatalEventImplCopyWith<$Res> {
  factory _$$SaveUserDatalEventImplCopyWith(_$SaveUserDatalEventImpl value,
          $Res Function(_$SaveUserDatalEventImpl) then) =
      __$$SaveUserDatalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class __$$SaveUserDatalEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SaveUserDatalEventImpl>
    implements _$$SaveUserDatalEventImplCopyWith<$Res> {
  __$$SaveUserDatalEventImplCopyWithImpl(_$SaveUserDatalEventImpl _value,
      $Res Function(_$SaveUserDatalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$SaveUserDatalEventImpl(
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

class _$SaveUserDatalEventImpl implements _SaveUserDatalEvent {
  const _$SaveUserDatalEventImpl({required this.email, required this.phone});

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
            other is _$SaveUserDatalEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserDatalEventImplCopyWith<_$SaveUserDatalEventImpl> get copyWith =>
      __$$SaveUserDatalEventImplCopyWithImpl<_$SaveUserDatalEventImpl>(
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
      required final String phone}) = _$SaveUserDatalEventImpl;

  String get email;
  String get phone;
  @JsonKey(ignore: true)
  _$$SaveUserDatalEventImplCopyWith<_$SaveUserDatalEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePasswordEventImplCopyWith<$Res> {
  factory _$$SavePasswordEventImplCopyWith(_$SavePasswordEventImpl value,
          $Res Function(_$SavePasswordEventImpl) then) =
      __$$SavePasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$SavePasswordEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SavePasswordEventImpl>
    implements _$$SavePasswordEventImplCopyWith<$Res> {
  __$$SavePasswordEventImplCopyWithImpl(_$SavePasswordEventImpl _value,
      $Res Function(_$SavePasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$SavePasswordEventImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavePasswordEventImpl implements _SavePasswordEvent {
  const _$SavePasswordEventImpl({required this.password});

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
            other is _$SavePasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasswordEventImplCopyWith<_$SavePasswordEventImpl> get copyWith =>
      __$$SavePasswordEventImplCopyWithImpl<_$SavePasswordEventImpl>(
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
      _$SavePasswordEventImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$SavePasswordEventImplCopyWith<_$SavePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveTarifEventImplCopyWith<$Res> {
  factory _$$SaveTarifEventImplCopyWith(_$SaveTarifEventImpl value,
          $Res Function(_$SaveTarifEventImpl) then) =
      __$$SaveTarifEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tarif});
}

/// @nodoc
class __$$SaveTarifEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SaveTarifEventImpl>
    implements _$$SaveTarifEventImplCopyWith<$Res> {
  __$$SaveTarifEventImplCopyWithImpl(
      _$SaveTarifEventImpl _value, $Res Function(_$SaveTarifEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tarif = null,
  }) {
    return _then(_$SaveTarifEventImpl(
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveTarifEventImpl implements _SaveTarifEvent {
  const _$SaveTarifEventImpl({required this.tarif});

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
            other is _$SaveTarifEventImpl &&
            (identical(other.tarif, tarif) || other.tarif == tarif));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tarif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTarifEventImplCopyWith<_$SaveTarifEventImpl> get copyWith =>
      __$$SaveTarifEventImplCopyWithImpl<_$SaveTarifEventImpl>(
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
      _$SaveTarifEventImpl;

  String get tarif;
  @JsonKey(ignore: true)
  _$$SaveTarifEventImplCopyWith<_$SaveTarifEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoMainScreenlEventImplCopyWith<$Res> {
  factory _$$GotoMainScreenlEventImplCopyWith(_$GotoMainScreenlEventImpl value,
          $Res Function(_$GotoMainScreenlEventImpl) then) =
      __$$GotoMainScreenlEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoMainScreenlEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GotoMainScreenlEventImpl>
    implements _$$GotoMainScreenlEventImplCopyWith<$Res> {
  __$$GotoMainScreenlEventImplCopyWithImpl(_$GotoMainScreenlEventImpl _value,
      $Res Function(_$GotoMainScreenlEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoMainScreenlEventImpl implements _GotoMainScreenlEvent {
  const _$GotoMainScreenlEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.gotoMainScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoMainScreenlEventImpl);
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
  const factory _GotoMainScreenlEvent() = _$GotoMainScreenlEventImpl;
}

/// @nodoc
abstract class _$$SaveProfileEventImplCopyWith<$Res> {
  factory _$$SaveProfileEventImplCopyWith(_$SaveProfileEventImpl value,
          $Res Function(_$SaveProfileEventImpl) then) =
      __$$SaveProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String phone, String password});
}

/// @nodoc
class __$$SaveProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SaveProfileEventImpl>
    implements _$$SaveProfileEventImplCopyWith<$Res> {
  __$$SaveProfileEventImplCopyWithImpl(_$SaveProfileEventImpl _value,
      $Res Function(_$SaveProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$SaveProfileEventImpl(
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

class _$SaveProfileEventImpl implements _SaveProfileEvent {
  const _$SaveProfileEventImpl(
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
            other is _$SaveProfileEventImpl &&
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
  _$$SaveProfileEventImplCopyWith<_$SaveProfileEventImpl> get copyWith =>
      __$$SaveProfileEventImplCopyWithImpl<_$SaveProfileEventImpl>(
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
      required final String password}) = _$SaveProfileEventImpl;

  String get name;
  String get email;
  String get phone;
  String get password;
  @JsonKey(ignore: true)
  _$$SaveProfileEventImplCopyWith<_$SaveProfileEventImpl> get copyWith =>
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
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialStateImpl>
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
    return 'ProfileState.initial()';
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
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'ProfileState.loading()';
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
    extends _$ProfileStateCopyWithImpl<$Res, _$OkStateImpl>
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
    return 'ProfileState.ok()';
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
  const factory _OkState() = _$OkStateImpl;
}

/// @nodoc
abstract class _$$noDataStateImplCopyWith<$Res> {
  factory _$$noDataStateImplCopyWith(
          _$noDataStateImpl value, $Res Function(_$noDataStateImpl) then) =
      __$$noDataStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$noDataStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$noDataStateImpl>
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
    return 'ProfileState.noData()';
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
  const factory _noDataState() = _$noDataStateImpl;
}

/// @nodoc
abstract class _$$ProfileScreenImplCopyWith<$Res> {
  factory _$$ProfileScreenImplCopyWith(
          _$ProfileScreenImpl value, $Res Function(_$ProfileScreenImpl) then) =
      __$$ProfileScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileScreenImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileScreenImpl>
    implements _$$ProfileScreenImplCopyWith<$Res> {
  __$$ProfileScreenImplCopyWithImpl(
      _$ProfileScreenImpl _value, $Res Function(_$ProfileScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileScreenImpl implements _ProfileScreen {
  const _$ProfileScreenImpl();

  @override
  String toString() {
    return 'ProfileState.profileScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileScreenImpl);
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
  const factory _ProfileScreen() = _$ProfileScreenImpl;
}

/// @nodoc
abstract class _$$LoginScreenImplCopyWith<$Res> {
  factory _$$LoginScreenImplCopyWith(
          _$LoginScreenImpl value, $Res Function(_$LoginScreenImpl) then) =
      __$$LoginScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoginScreenImpl>
    implements _$$LoginScreenImplCopyWith<$Res> {
  __$$LoginScreenImplCopyWithImpl(
      _$LoginScreenImpl _value, $Res Function(_$LoginScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginScreenImpl implements _LoginScreen {
  const _$LoginScreenImpl();

  @override
  String toString() {
    return 'ProfileState.loginScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenImpl);
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
  const factory _LoginScreen() = _$LoginScreenImpl;
}

/// @nodoc
abstract class _$$MainScreenImplCopyWith<$Res> {
  factory _$$MainScreenImplCopyWith(
          _$MainScreenImpl value, $Res Function(_$MainScreenImpl) then) =
      __$$MainScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainScreenImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$MainScreenImpl>
    implements _$$MainScreenImplCopyWith<$Res> {
  __$$MainScreenImplCopyWithImpl(
      _$MainScreenImpl _value, $Res Function(_$MainScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainScreenImpl implements _MainScreen {
  const _$MainScreenImpl();

  @override
  String toString() {
    return 'ProfileState.mainScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainScreenImpl);
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
  const factory _MainScreen() = _$MainScreenImpl;
}

/// @nodoc
abstract class _$$UserDataScreenImplCopyWith<$Res> {
  factory _$$UserDataScreenImplCopyWith(_$UserDataScreenImpl value,
          $Res Function(_$UserDataScreenImpl) then) =
      __$$UserDataScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataScreenImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UserDataScreenImpl>
    implements _$$UserDataScreenImplCopyWith<$Res> {
  __$$UserDataScreenImplCopyWithImpl(
      _$UserDataScreenImpl _value, $Res Function(_$UserDataScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataScreenImpl implements _UserDataScreen {
  const _$UserDataScreenImpl();

  @override
  String toString() {
    return 'ProfileState.userDataScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataScreenImpl);
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
  const factory _UserDataScreen() = _$UserDataScreenImpl;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel? profile});

  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$DataStateImpl(
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

class _$DataStateImpl implements _DataState {
  const _$DataStateImpl({required this.profile});

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
            other is _$DataStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

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
      _$DataStateImpl;

  ProfileModel? get profile;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
