// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get tarif => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? phone,
      String? password,
      String? tarif});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? tarif = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? phone,
      String? password,
      String? tarif});
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? tarif = freezed,
  }) {
    return _then(_$_ProfileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {this.id = '',
      this.name = '',
      this.email = '',
      this.phone = '',
      this.password = '',
      this.tarif = 'Начальный'});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? password;
  @override
  @JsonKey()
  final String? tarif;

  @override
  String toString() {
    return 'ProfileModel(id: $id, name: $name, email: $email, phone: $phone, password: $password, tarif: $tarif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.tarif, tarif) || other.tarif == tarif));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, phone, password, tarif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final String? id,
      final String? name,
      final String? email,
      final String? phone,
      final String? password,
      final String? tarif}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  String? get tarif;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
