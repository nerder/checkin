// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String email,
      required String imageUrl,
      String? name,
      String? uid,
      double? weight,
      String? selectedGymId,
      @JsonKey(ignore: true) DateTime? birthday,
      @GradeConverter() Grade? grade,
      List<String> knownGymIds = const [],
      bool isOwner = false}) {
    return _User(
      email: email,
      imageUrl: imageUrl,
      name: name,
      uid: uid,
      weight: weight,
      selectedGymId: selectedGymId,
      birthday: birthday,
      grade: grade,
      knownGymIds: knownGymIds,
      isOwner: isOwner,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get selectedGymId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  DateTime? get birthday => throw _privateConstructorUsedError;
  @GradeConverter()
  Grade? get grade => throw _privateConstructorUsedError;
  List<String> get knownGymIds => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String imageUrl,
      String? name,
      String? uid,
      double? weight,
      String? selectedGymId,
      @JsonKey(ignore: true) DateTime? birthday,
      @GradeConverter() Grade? grade,
      List<String> knownGymIds,
      bool isOwner});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? uid = freezed,
    Object? weight = freezed,
    Object? selectedGymId = freezed,
    Object? birthday = freezed,
    Object? grade = freezed,
    Object? knownGymIds = freezed,
    Object? isOwner = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGymId: selectedGymId == freezed
          ? _value.selectedGymId
          : selectedGymId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      knownGymIds: knownGymIds == freezed
          ? _value.knownGymIds
          : knownGymIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) = __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String imageUrl,
      String? name,
      String? uid,
      double? weight,
      String? selectedGymId,
      @JsonKey(ignore: true) DateTime? birthday,
      @GradeConverter() Grade? grade,
      List<String> knownGymIds,
      bool isOwner});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? uid = freezed,
    Object? weight = freezed,
    Object? selectedGymId = freezed,
    Object? birthday = freezed,
    Object? grade = freezed,
    Object? knownGymIds = freezed,
    Object? isOwner = freezed,
  }) {
    return _then(_User(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGymId: selectedGymId == freezed
          ? _value.selectedGymId
          : selectedGymId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      knownGymIds: knownGymIds == freezed
          ? _value.knownGymIds
          : knownGymIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.email,
      required this.imageUrl,
      this.name,
      this.uid,
      this.weight,
      this.selectedGymId,
      @JsonKey(ignore: true) this.birthday,
      @GradeConverter() this.grade,
      this.knownGymIds = const [],
      this.isOwner = false});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$_$_UserFromJson(json);

  @override
  final String email;
  @override
  final String imageUrl;
  @override
  final String? name;
  @override
  final String? uid;
  @override
  final double? weight;
  @override
  final String? selectedGymId;
  @override
  @JsonKey(ignore: true)
  final DateTime? birthday;
  @override
  @GradeConverter()
  final Grade? grade;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> knownGymIds;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwner;

  @override
  String toString() {
    return 'User(email: $email, imageUrl: $imageUrl, name: $name, uid: $uid, weight: $weight, selectedGymId: $selectedGymId, birthday: $birthday, grade: $grade, knownGymIds: $knownGymIds, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.uid, uid) || const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.selectedGymId, selectedGymId) ||
                const DeepCollectionEquality().equals(other.selectedGymId, selectedGymId)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality().equals(other.birthday, birthday)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.knownGymIds, knownGymIds) ||
                const DeepCollectionEquality().equals(other.knownGymIds, knownGymIds)) &&
            (identical(other.isOwner, isOwner) ||
                const DeepCollectionEquality().equals(other.isOwner, isOwner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(selectedGymId) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(knownGymIds) ^
      const DeepCollectionEquality().hash(isOwner);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required String email,
      required String imageUrl,
      String? name,
      String? uid,
      double? weight,
      String? selectedGymId,
      @JsonKey(ignore: true) DateTime? birthday,
      @GradeConverter() Grade? grade,
      List<String> knownGymIds,
      bool isOwner}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  String? get selectedGymId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  DateTime? get birthday => throw _privateConstructorUsedError;
  @override
  @GradeConverter()
  Grade? get grade => throw _privateConstructorUsedError;
  @override
  List<String> get knownGymIds => throw _privateConstructorUsedError;
  @override
  bool get isOwner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
