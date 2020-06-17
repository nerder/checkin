// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserEventTearOff {
  const _$UserEventTearOff();

  UserUpdated userUpdated({User user}) {
    return UserUpdated(
      user: user,
    );
  }

  UpdateName updateName({String newName}) {
    return UpdateName(
      newName: newName,
    );
  }

  UpdateImageUrl updateImageUrl({String userEmail}) {
    return UpdateImageUrl(
      userEmail: userEmail,
    );
  }

  UpdateGrade updateGrade({String newGrade}) {
    return UpdateGrade(
      newGrade: newGrade,
    );
  }

  UpdateSelectedGym updateSelectedGym(
      {String userEmail, String newSelectedGym}) {
    return UpdateSelectedGym(
      userEmail: userEmail,
      newSelectedGym: newSelectedGym,
    );
  }

  UpdateFcmToken updateFcmToken({String userEmail, String newToken}) {
    return UpdateFcmToken(
      userEmail: userEmail,
      newToken: newToken,
    );
  }
}

// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

mixin _$UserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
  });
}

abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

abstract class $UserUpdatedCopyWith<$Res> {
  factory $UserUpdatedCopyWith(
          UserUpdated value, $Res Function(UserUpdated) then) =
      _$UserUpdatedCopyWithImpl<$Res>;
  $Res call({User user});
}

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
}

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

  @override
  $UserUpdatedCopyWith<UserUpdated> get copyWith =>
      _$UserUpdatedCopyWithImpl<UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
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

abstract class $UpdateNameCopyWith<$Res> {
  factory $UpdateNameCopyWith(
          UpdateName value, $Res Function(UpdateName) then) =
      _$UpdateNameCopyWithImpl<$Res>;
  $Res call({String newName});
}

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
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newName);

  @override
  $UpdateNameCopyWith<UpdateName> get copyWith =>
      _$UpdateNameCopyWithImpl<UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateName(newName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateName != null) {
      return updateName(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
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

abstract class $UpdateImageUrlCopyWith<$Res> {
  factory $UpdateImageUrlCopyWith(
          UpdateImageUrl value, $Res Function(UpdateImageUrl) then) =
      _$UpdateImageUrlCopyWithImpl<$Res>;
  $Res call({String userEmail});
}

class _$UpdateImageUrlCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateImageUrlCopyWith<$Res> {
  _$UpdateImageUrlCopyWithImpl(
      UpdateImageUrl _value, $Res Function(UpdateImageUrl) _then)
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
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEmail);

  @override
  $UpdateImageUrlCopyWith<UpdateImageUrl> get copyWith =>
      _$UpdateImageUrlCopyWithImpl<UpdateImageUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateImageUrl(userEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateImageUrl != null) {
      return updateImageUrl(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateImageUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
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

abstract class $UpdateGradeCopyWith<$Res> {
  factory $UpdateGradeCopyWith(
          UpdateGrade value, $Res Function(UpdateGrade) then) =
      _$UpdateGradeCopyWithImpl<$Res>;
  $Res call({String newGrade});
}

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
      newGrade: newGrade == freezed ? _value.newGrade : newGrade as String,
    ));
  }
}

class _$UpdateGrade with DiagnosticableTreeMixin implements UpdateGrade {
  const _$UpdateGrade({this.newGrade});

  @override
  final String newGrade;

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

  @override
  $UpdateGradeCopyWith<UpdateGrade> get copyWith =>
      _$UpdateGradeCopyWithImpl<UpdateGrade>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateGrade(newGrade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateGrade != null) {
      return updateGrade(newGrade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateGrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateGrade != null) {
      return updateGrade(this);
    }
    return orElse();
  }
}

abstract class UpdateGrade implements UserEvent {
  const factory UpdateGrade({String newGrade}) = _$UpdateGrade;

  String get newGrade;
  $UpdateGradeCopyWith<UpdateGrade> get copyWith;
}

abstract class $UpdateSelectedGymCopyWith<$Res> {
  factory $UpdateSelectedGymCopyWith(
          UpdateSelectedGym value, $Res Function(UpdateSelectedGym) then) =
      _$UpdateSelectedGymCopyWithImpl<$Res>;
  $Res call({String userEmail, String newSelectedGym});
}

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
    Object newSelectedGym = freezed,
  }) {
    return _then(UpdateSelectedGym(
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      newSelectedGym: newSelectedGym == freezed
          ? _value.newSelectedGym
          : newSelectedGym as String,
    ));
  }
}

class _$UpdateSelectedGym
    with DiagnosticableTreeMixin
    implements UpdateSelectedGym {
  const _$UpdateSelectedGym({this.userEmail, this.newSelectedGym});

  @override
  final String userEmail;
  @override
  final String newSelectedGym;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateSelectedGym(userEmail: $userEmail, newSelectedGym: $newSelectedGym)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateSelectedGym'))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('newSelectedGym', newSelectedGym));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSelectedGym &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.newSelectedGym, newSelectedGym) ||
                const DeepCollectionEquality()
                    .equals(other.newSelectedGym, newSelectedGym)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(newSelectedGym);

  @override
  $UpdateSelectedGymCopyWith<UpdateSelectedGym> get copyWith =>
      _$UpdateSelectedGymCopyWithImpl<UpdateSelectedGym>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateSelectedGym(userEmail, newSelectedGym);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedGym != null) {
      return updateSelectedGym(userEmail, newSelectedGym);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateSelectedGym(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedGym != null) {
      return updateSelectedGym(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedGym implements UserEvent {
  const factory UpdateSelectedGym({String userEmail, String newSelectedGym}) =
      _$UpdateSelectedGym;

  String get userEmail;
  String get newSelectedGym;
  $UpdateSelectedGymCopyWith<UpdateSelectedGym> get copyWith;
}

abstract class $UpdateFcmTokenCopyWith<$Res> {
  factory $UpdateFcmTokenCopyWith(
          UpdateFcmToken value, $Res Function(UpdateFcmToken) then) =
      _$UpdateFcmTokenCopyWithImpl<$Res>;
  $Res call({String userEmail, String newToken});
}

class _$UpdateFcmTokenCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateFcmTokenCopyWith<$Res> {
  _$UpdateFcmTokenCopyWithImpl(
      UpdateFcmToken _value, $Res Function(UpdateFcmToken) _then)
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
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.newToken, newToken) ||
                const DeepCollectionEquality()
                    .equals(other.newToken, newToken)));
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
  Result when<Result extends Object>({
    @required Result userUpdated(User user),
    @required Result updateName(String newName),
    @required Result updateImageUrl(String userEmail),
    @required Result updateGrade(String newGrade),
    @required Result updateSelectedGym(String userEmail, String newSelectedGym),
    @required Result updateFcmToken(String userEmail, String newToken),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateFcmToken(userEmail, newToken);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userUpdated(User user),
    Result updateName(String newName),
    Result updateImageUrl(String userEmail),
    Result updateGrade(String newGrade),
    Result updateSelectedGym(String userEmail, String newSelectedGym),
    Result updateFcmToken(String userEmail, String newToken),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFcmToken != null) {
      return updateFcmToken(userEmail, newToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userUpdated(UserUpdated value),
    @required Result updateName(UpdateName value),
    @required Result updateImageUrl(UpdateImageUrl value),
    @required Result updateGrade(UpdateGrade value),
    @required Result updateSelectedGym(UpdateSelectedGym value),
    @required Result updateFcmToken(UpdateFcmToken value),
  }) {
    assert(userUpdated != null);
    assert(updateName != null);
    assert(updateImageUrl != null);
    assert(updateGrade != null);
    assert(updateSelectedGym != null);
    assert(updateFcmToken != null);
    return updateFcmToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userUpdated(UserUpdated value),
    Result updateName(UpdateName value),
    Result updateImageUrl(UpdateImageUrl value),
    Result updateGrade(UpdateGrade value),
    Result updateSelectedGym(UpdateSelectedGym value),
    Result updateFcmToken(UpdateFcmToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFcmToken != null) {
      return updateFcmToken(this);
    }
    return orElse();
  }
}

abstract class UpdateFcmToken implements UserEvent {
  const factory UpdateFcmToken({String userEmail, String newToken}) =
      _$UpdateFcmToken;

  String get userEmail;
  String get newToken;
  $UpdateFcmTokenCopyWith<UpdateFcmToken> get copyWith;
}