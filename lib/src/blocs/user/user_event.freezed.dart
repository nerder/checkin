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
  UpdateName updateName({String newName}) {
    return UpdateName(
      newName: newName,
    );
  }

// ignore: unused_element
  UpdateImageUrl updateImageUrl({String userEmail}) {
    return UpdateImageUrl(
      userEmail: userEmail,
    );
  }

// ignore: unused_element
  UpdateGrade updateGrade({Grade newGrade}) {
    return UpdateGrade(
      newGrade: newGrade,
    );
  }

// ignore: unused_element
  UpdateReferredGym updateReferredGym({String userEmail, String currentGymId}) {
    return UpdateReferredGym(
      userEmail: userEmail,
      currentGymId: currentGymId,
    );
  }

// ignore: unused_element
  UpdateFcmToken updateFcmToken({String userEmail, String newToken}) {
    return UpdateFcmToken(
      userEmail: userEmail,
      newToken: newToken,
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
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
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
  factory $UserUpdatedCopyWith(UserUpdated value, $Res Function(UserUpdated) then) =
      _$UserUpdatedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserUpdatedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UserUpdatedCopyWith<$Res> {
  _$UserUpdatedCopyWithImpl(UserUpdated _value, $Res Function(UserUpdated) _then)
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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserUpdatedCopyWith<UserUpdated> get copyWith =>
      _$UserUpdatedCopyWithImpl<UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
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
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
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
  $UserUpdatedCopyWith<UserUpdated> get copyWith;
}

/// @nodoc
abstract class $UpdateNameCopyWith<$Res> {
  factory $UpdateNameCopyWith(UpdateName value, $Res Function(UpdateName) then) =
      _$UpdateNameCopyWithImpl<$Res>;
  $Res call({String newName});
}

/// @nodoc
class _$UpdateNameCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateNameCopyWith<$Res> {
  _$UpdateNameCopyWithImpl(UpdateName _value, $Res Function(UpdateName) _then)
      : super(_value, (v) => _then(v as UpdateName));

  @override
  UpdateName get _value => super._value as UpdateName;

  @override
  $Res call({
    Object newName = freezed,
  }) {
    return _then(UpdateName(
      newName: newName == freezed ? _value.newName : newName as String,
    ));
  }
}

/// @nodoc
class _$UpdateName with DiagnosticableTreeMixin implements UpdateName {
  const _$UpdateName({this.newName});

  @override
  final String newName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateName(newName: $newName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateName'))
      ..add(DiagnosticsProperty('newName', newName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateName &&
            (identical(other.newName, newName) ||
                const DeepCollectionEquality().equals(other.newName, newName)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(newName);

  @override
  $UpdateNameCopyWith<UpdateName> get copyWith =>
      _$UpdateNameCopyWithImpl<UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateName(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateName != null) {
      return updateName(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class UpdateName implements UserEvent {
  const factory UpdateName({String newName}) = _$UpdateName;

  String get newName;
  $UpdateNameCopyWith<UpdateName> get copyWith;
}

/// @nodoc
abstract class $UpdateImageUrlCopyWith<$Res> {
  factory $UpdateImageUrlCopyWith(UpdateImageUrl value, $Res Function(UpdateImageUrl) then) =
      _$UpdateImageUrlCopyWithImpl<$Res>;
  $Res call({String userEmail});
}

/// @nodoc
class _$UpdateImageUrlCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateImageUrlCopyWith<$Res> {
  _$UpdateImageUrlCopyWithImpl(UpdateImageUrl _value, $Res Function(UpdateImageUrl) _then)
      : super(_value, (v) => _then(v as UpdateImageUrl));

  @override
  UpdateImageUrl get _value => super._value as UpdateImageUrl;

  @override
  $Res call({
    Object userEmail = freezed,
  }) {
    return _then(UpdateImageUrl(
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
    ));
  }
}

/// @nodoc
class _$UpdateImageUrl with DiagnosticableTreeMixin implements UpdateImageUrl {
  const _$UpdateImageUrl({this.userEmail});

  @override
  final String userEmail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateImageUrl(userEmail: $userEmail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateImageUrl'))
      ..add(DiagnosticsProperty('userEmail', userEmail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateImageUrl &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality().equals(other.userEmail, userEmail)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEmail);

  @override
  $UpdateImageUrlCopyWith<UpdateImageUrl> get copyWith =>
      _$UpdateImageUrlCopyWithImpl<UpdateImageUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateImageUrl(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateImageUrl != null) {
      return updateImageUrl(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateImageUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateImageUrl != null) {
      return updateImageUrl(this);
    }
    return orElse();
  }
}

abstract class UpdateImageUrl implements UserEvent {
  const factory UpdateImageUrl({String userEmail}) = _$UpdateImageUrl;

  String get userEmail;
  $UpdateImageUrlCopyWith<UpdateImageUrl> get copyWith;
}

/// @nodoc
abstract class $UpdateGradeCopyWith<$Res> {
  factory $UpdateGradeCopyWith(UpdateGrade value, $Res Function(UpdateGrade) then) =
      _$UpdateGradeCopyWithImpl<$Res>;
  $Res call({Grade newGrade});
}

/// @nodoc
class _$UpdateGradeCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateGradeCopyWith<$Res> {
  _$UpdateGradeCopyWithImpl(UpdateGrade _value, $Res Function(UpdateGrade) _then)
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
                const DeepCollectionEquality().equals(other.newGrade, newGrade)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(newGrade);

  @override
  $UpdateGradeCopyWith<UpdateGrade> get copyWith =>
      _$UpdateGradeCopyWithImpl<UpdateGrade>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateGrade(newGrade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
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
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
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
  $UpdateGradeCopyWith<UpdateGrade> get copyWith;
}

/// @nodoc
abstract class $UpdateReferredGymCopyWith<$Res> {
  factory $UpdateReferredGymCopyWith(
          UpdateReferredGym value, $Res Function(UpdateReferredGym) then) =
      _$UpdateReferredGymCopyWithImpl<$Res>;
  $Res call({String userEmail, String currentGymId});
}

/// @nodoc
class _$UpdateReferredGymCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateReferredGymCopyWith<$Res> {
  _$UpdateReferredGymCopyWithImpl(UpdateReferredGym _value, $Res Function(UpdateReferredGym) _then)
      : super(_value, (v) => _then(v as UpdateReferredGym));

  @override
  UpdateReferredGym get _value => super._value as UpdateReferredGym;

  @override
  $Res call({
    Object userEmail = freezed,
    Object currentGymId = freezed,
  }) {
    return _then(UpdateReferredGym(
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      currentGymId: currentGymId == freezed ? _value.currentGymId : currentGymId as String,
    ));
  }
}

/// @nodoc
class _$UpdateReferredGym with DiagnosticableTreeMixin implements UpdateReferredGym {
  const _$UpdateReferredGym({this.userEmail, this.currentGymId});

  @override
  final String userEmail;
  @override
  final String currentGymId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateReferredGym(userEmail: $userEmail, currentGymId: $currentGymId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateReferredGym'))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('currentGymId', currentGymId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateReferredGym &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality().equals(other.userEmail, userEmail)) &&
            (identical(other.currentGymId, currentGymId) ||
                const DeepCollectionEquality().equals(other.currentGymId, currentGymId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(currentGymId);

  @override
  $UpdateReferredGymCopyWith<UpdateReferredGym> get copyWith =>
      _$UpdateReferredGymCopyWithImpl<UpdateReferredGym>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateReferredGym(userEmail, currentGymId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReferredGym != null) {
      return updateReferredGym(userEmail, currentGymId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateReferredGym(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReferredGym != null) {
      return updateReferredGym(this);
    }
    return orElse();
  }
}

abstract class UpdateReferredGym implements UserEvent {
  const factory UpdateReferredGym({String userEmail, String currentGymId}) = _$UpdateReferredGym;

  String get userEmail;
  String get currentGymId;
  $UpdateReferredGymCopyWith<UpdateReferredGym> get copyWith;
}

/// @nodoc
abstract class $UpdateFcmTokenCopyWith<$Res> {
  factory $UpdateFcmTokenCopyWith(UpdateFcmToken value, $Res Function(UpdateFcmToken) then) =
      _$UpdateFcmTokenCopyWithImpl<$Res>;
  $Res call({String userEmail, String newToken});
}

/// @nodoc
class _$UpdateFcmTokenCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateFcmTokenCopyWith<$Res> {
  _$UpdateFcmTokenCopyWithImpl(UpdateFcmToken _value, $Res Function(UpdateFcmToken) _then)
      : super(_value, (v) => _then(v as UpdateFcmToken));

  @override
  UpdateFcmToken get _value => super._value as UpdateFcmToken;

  @override
  $Res call({
    Object userEmail = freezed,
    Object newToken = freezed,
  }) {
    return _then(UpdateFcmToken(
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      newToken: newToken == freezed ? _value.newToken : newToken as String,
    ));
  }
}

/// @nodoc
class _$UpdateFcmToken with DiagnosticableTreeMixin implements UpdateFcmToken {
  const _$UpdateFcmToken({this.userEmail, this.newToken});

  @override
  final String userEmail;
  @override
  final String newToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateFcmToken(userEmail: $userEmail, newToken: $newToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateFcmToken'))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('newToken', newToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFcmToken &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality().equals(other.userEmail, userEmail)) &&
            (identical(other.newToken, newToken) ||
                const DeepCollectionEquality().equals(other.newToken, newToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(newToken);

  @override
  $UpdateFcmTokenCopyWith<UpdateFcmToken> get copyWith =>
      _$UpdateFcmTokenCopyWithImpl<UpdateFcmToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userUpdated(User user),
    @required TResult updateName(String newName),
    @required TResult updateImageUrl(String userEmail),
    @required TResult updateGrade(Grade newGrade),
    @required TResult updateReferredGym(String userEmail, String currentGymId),
    @required TResult updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateFcmToken(userEmail, newToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userUpdated(User user),
    TResult updateName(String newName),
    TResult updateImageUrl(String userEmail),
    TResult updateGrade(Grade newGrade),
    TResult updateReferredGym(String userEmail, String currentGymId),
    TResult updateFcmToken(String userEmail, String newToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFcmToken != null) {
      return updateFcmToken(userEmail, newToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userUpdated(UserUpdated value),
    @required TResult updateName(UpdateName value),
    @required TResult updateImageUrl(UpdateImageUrl value),
    @required TResult updateGrade(UpdateGrade value),
    @required TResult updateReferredGym(UpdateReferredGym value),
    @required TResult updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateReferredGym != null);
    assert(updateFcmToken != null);
    return updateFcmToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userUpdated(UserUpdated value),
    TResult updateName(UpdateName value),
    TResult updateImageUrl(UpdateImageUrl value),
    TResult updateGrade(UpdateGrade value),
    TResult updateReferredGym(UpdateReferredGym value),
    TResult updateFcmToken(UpdateFcmToken value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFcmToken != null) {
      return updateFcmToken(this);
    }
    return orElse();
  }
}

abstract class UpdateFcmToken implements UserEvent {
  const factory UpdateFcmToken({String userEmail, String newToken}) = _$UpdateFcmToken;

  String get userEmail;
  String get newToken;
  $UpdateFcmTokenCopyWith<UpdateFcmToken> get copyWith;
}
