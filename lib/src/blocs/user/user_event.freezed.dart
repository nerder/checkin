// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  UserUpdated userUpdated({User user}) {
    return UserUpdated(
      user: user,
    );
  }

// ignore: unused_element
  UpdateGrade updateGrade({Grade newGrade}) {
    return UpdateGrade(
      newGrade: newGrade,
    );
  }

// ignore: unused_element
  UpdateSelectedGym updateSelectedGym({String userEmail, String newGymId}) {
    return UpdateSelectedGym(
      userEmail: userEmail,
      newGymId: newGymId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateSelectedGym(String userEmail, String newGymId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateGrade(Grade newGrade),
    TResult updateSelectedGym(String userEmail, String newGymId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateSelectedGym(UpdateSelectedGym value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateGrade(UpdateGrade value),
    TResult updateSelectedGym(UpdateSelectedGym value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $UserUpdatedCopyWith<$Res> {
  factory $UserUpdatedCopyWith(
          UserUpdated value, $Res Function(UserUpdated) then) =
      _$UserUpdatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserUpdatedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UserUpdatedCopyWith<$Res> {
  _$UserUpdatedCopyWithImpl(
      UserUpdated _value, $Res Function(UserUpdated) _then)
      : super(_value, (v) => _then(v as UserUpdated));

  @override
  UserUpdated get _value => super._value as UserUpdated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserUpdated(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$UserUpdated with DiagnosticableTreeMixin implements UserUpdated {
  const _$UserUpdated({this.user});

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.userUpdated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.userUpdated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserUpdatedCopyWith<UserUpdated> get copyWith =>
      _$UserUpdatedCopyWithImpl<UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateSelectedGym(String userEmail, String newGymId),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateGrade(Grade newGrade),
    TResult updateSelectedGym(String userEmail, String newGymId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateSelectedGym(UpdateSelectedGym value),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateGrade(UpdateGrade value),
    TResult updateSelectedGym(UpdateSelectedGym value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements UserEvent {
  const factory UserUpdated({User user}) = _$UserUpdated;

  User get user;
  @JsonKey(ignore: true)
  $UserUpdatedCopyWith<UserUpdated> get copyWith;
}

/// @nodoc
abstract class $UpdateGradeCopyWith<$Res> {
  factory $UpdateGradeCopyWith(
          UpdateGrade value, $Res Function(UpdateGrade) then) =
      _$UpdateGradeCopyWithImpl<$Res>;
  $Res call({Grade newGrade});
}

/// @nodoc
class _$UpdateGradeCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateGradeCopyWith<$Res> {
  _$UpdateGradeCopyWithImpl(
      UpdateGrade _value, $Res Function(UpdateGrade) _then)
      : super(_value, (v) => _then(v as UpdateGrade));

  @override
  UpdateGrade get _value => super._value as UpdateGrade;

  @override
  $Res call({
    Object newGrade = freezed,
  }) {
    return _then(UpdateGrade(
      newGrade: newGrade == freezed ? _value.newGrade : newGrade as Grade,
    ));
  }
}

/// @nodoc
class _$UpdateGrade with DiagnosticableTreeMixin implements UpdateGrade {
  const _$UpdateGrade({this.newGrade});

  @override
  final Grade newGrade;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateGrade(newGrade: $newGrade)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateGrade'))
      ..add(DiagnosticsProperty('newGrade', newGrade));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateGrade &&
            (identical(other.newGrade, newGrade) ||
                const DeepCollectionEquality()
                    .equals(other.newGrade, newGrade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newGrade);

  @JsonKey(ignore: true)
  @override
  $UpdateGradeCopyWith<UpdateGrade> get copyWith =>
      _$UpdateGradeCopyWithImpl<UpdateGrade>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateSelectedGym(String userEmail, String newGymId),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return updateGrade(newGrade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateGrade(Grade newGrade),
    TResult updateSelectedGym(String userEmail, String newGymId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGrade != null) {
      return updateGrade(newGrade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateSelectedGym(UpdateSelectedGym value),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return updateGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateGrade(UpdateGrade value),
    TResult updateSelectedGym(UpdateSelectedGym value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGrade != null) {
      return updateGrade(this);
    }
    return orElse();
  }
}

abstract class UpdateGrade implements UserEvent {
  const factory UpdateGrade({Grade newGrade}) = _$UpdateGrade;

  Grade get newGrade;
  @JsonKey(ignore: true)
  $UpdateGradeCopyWith<UpdateGrade> get copyWith;
}

/// @nodoc
abstract class $UpdateSelectedGymCopyWith<$Res> {
  factory $UpdateSelectedGymCopyWith(
          UpdateSelectedGym value, $Res Function(UpdateSelectedGym) then) =
      _$UpdateSelectedGymCopyWithImpl<$Res>;
  $Res call({String userEmail, String newGymId});
}

/// @nodoc
class _$UpdateSelectedGymCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateSelectedGymCopyWith<$Res> {
  _$UpdateSelectedGymCopyWithImpl(
      UpdateSelectedGym _value, $Res Function(UpdateSelectedGym) _then)
      : super(_value, (v) => _then(v as UpdateSelectedGym));

  @override
  UpdateSelectedGym get _value => super._value as UpdateSelectedGym;

  @override
  $Res call({
    Object userEmail = freezed,
    Object newGymId = freezed,
  }) {
    return _then(UpdateSelectedGym(
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      newGymId: newGymId == freezed ? _value.newGymId : newGymId as String,
    ));
  }
}

/// @nodoc
class _$UpdateSelectedGym
    with DiagnosticableTreeMixin
    implements UpdateSelectedGym {
  const _$UpdateSelectedGym({this.userEmail, this.newGymId});

  @override
  final String userEmail;
  @override
  final String newGymId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateSelectedGym(userEmail: $userEmail, newGymId: $newGymId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateSelectedGym'))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('newGymId', newGymId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSelectedGym &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.newGymId, newGymId) ||
                const DeepCollectionEquality()
                    .equals(other.newGymId, newGymId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(newGymId);

  @JsonKey(ignore: true)
  @override
  $UpdateSelectedGymCopyWith<UpdateSelectedGym> get copyWith =>
      _$UpdateSelectedGymCopyWithImpl<UpdateSelectedGym>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateSelectedGym(String userEmail, String newGymId),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return updateSelectedGym(userEmail, newGymId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateGrade(Grade newGrade),
    TResult updateSelectedGym(String userEmail, String newGymId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedGym != null) {
      return updateSelectedGym(userEmail, newGymId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateSelectedGym(UpdateSelectedGym value),
  }) {
    assert(userUpdated != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    return updateSelectedGym(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateGrade(UpdateGrade value),
    TResult updateSelectedGym(UpdateSelectedGym value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedGym != null) {
      return updateSelectedGym(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedGym implements UserEvent {
  const factory UpdateSelectedGym({String userEmail, String newGymId}) =
      _$UpdateSelectedGym;

  String get userEmail;
  String get newGymId;
  @JsonKey(ignore: true)
  $UpdateSelectedGymCopyWith<UpdateSelectedGym> get copyWith;
}
