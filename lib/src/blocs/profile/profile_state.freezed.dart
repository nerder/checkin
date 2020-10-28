// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  InitialProfileState initialProfileState() {
    return const InitialProfileState();
  }

// ignore: unused_element
  ProfileLoaded profileLoaded(
      {@required User profileUser, @required bool isCurrentUser}) {
    return ProfileLoaded(
      profileUser: profileUser,
      isCurrentUser: isCurrentUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialProfileState(),
    @required Result profileLoaded(User profileUser, bool isCurrentUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialProfileState(),
    Result profileLoaded(User profileUser, bool isCurrentUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialProfileState(InitialProfileState value),
    @required Result profileLoaded(ProfileLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialProfileState(InitialProfileState value),
    Result profileLoaded(ProfileLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitialProfileStateCopyWith<$Res> {
  factory $InitialProfileStateCopyWith(
          InitialProfileState value, $Res Function(InitialProfileState) then) =
      _$InitialProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialProfileStateCopyWith<$Res> {
  _$InitialProfileStateCopyWithImpl(
      InitialProfileState _value, $Res Function(InitialProfileState) _then)
      : super(_value, (v) => _then(v as InitialProfileState));

  @override
  InitialProfileState get _value => super._value as InitialProfileState;
}

/// @nodoc
class _$InitialProfileState
    with DiagnosticableTreeMixin
    implements InitialProfileState {
  const _$InitialProfileState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.initialProfileState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.initialProfileState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialProfileState(),
    @required Result profileLoaded(User profileUser, bool isCurrentUser),
  }) {
    assert(initialProfileState != null);
    assert(profileLoaded != null);
    return initialProfileState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialProfileState(),
    Result profileLoaded(User profileUser, bool isCurrentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialProfileState != null) {
      return initialProfileState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialProfileState(InitialProfileState value),
    @required Result profileLoaded(ProfileLoaded value),
  }) {
    assert(initialProfileState != null);
    assert(profileLoaded != null);
    return initialProfileState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialProfileState(InitialProfileState value),
    Result profileLoaded(ProfileLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialProfileState != null) {
      return initialProfileState(this);
    }
    return orElse();
  }
}

abstract class InitialProfileState implements ProfileState {
  const factory InitialProfileState() = _$InitialProfileState;
}

/// @nodoc
abstract class $ProfileLoadedCopyWith<$Res> {
  factory $ProfileLoadedCopyWith(
          ProfileLoaded value, $Res Function(ProfileLoaded) then) =
      _$ProfileLoadedCopyWithImpl<$Res>;
  $Res call({User profileUser, bool isCurrentUser});
}

/// @nodoc
class _$ProfileLoadedCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadedCopyWith<$Res> {
  _$ProfileLoadedCopyWithImpl(
      ProfileLoaded _value, $Res Function(ProfileLoaded) _then)
      : super(_value, (v) => _then(v as ProfileLoaded));

  @override
  ProfileLoaded get _value => super._value as ProfileLoaded;

  @override
  $Res call({
    Object profileUser = freezed,
    Object isCurrentUser = freezed,
  }) {
    return _then(ProfileLoaded(
      profileUser:
          profileUser == freezed ? _value.profileUser : profileUser as User,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser as bool,
    ));
  }
}

/// @nodoc
class _$ProfileLoaded with DiagnosticableTreeMixin implements ProfileLoaded {
  const _$ProfileLoaded(
      {@required this.profileUser, @required this.isCurrentUser})
      : assert(profileUser != null),
        assert(isCurrentUser != null);

  @override
  final User profileUser;
  @override
  final bool isCurrentUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.profileLoaded(profileUser: $profileUser, isCurrentUser: $isCurrentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.profileLoaded'))
      ..add(DiagnosticsProperty('profileUser', profileUser))
      ..add(DiagnosticsProperty('isCurrentUser', isCurrentUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileLoaded &&
            (identical(other.profileUser, profileUser) ||
                const DeepCollectionEquality()
                    .equals(other.profileUser, profileUser)) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentUser, isCurrentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileUser) ^
      const DeepCollectionEquality().hash(isCurrentUser);

  @override
  $ProfileLoadedCopyWith<ProfileLoaded> get copyWith =>
      _$ProfileLoadedCopyWithImpl<ProfileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialProfileState(),
    @required Result profileLoaded(User profileUser, bool isCurrentUser),
  }) {
    assert(initialProfileState != null);
    assert(profileLoaded != null);
    return profileLoaded(profileUser, isCurrentUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialProfileState(),
    Result profileLoaded(User profileUser, bool isCurrentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileLoaded != null) {
      return profileLoaded(profileUser, isCurrentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialProfileState(InitialProfileState value),
    @required Result profileLoaded(ProfileLoaded value),
  }) {
    assert(initialProfileState != null);
    assert(profileLoaded != null);
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialProfileState(InitialProfileState value),
    Result profileLoaded(ProfileLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded(
      {@required User profileUser,
      @required bool isCurrentUser}) = _$ProfileLoaded;

  User get profileUser;
  bool get isCurrentUser;
  $ProfileLoadedCopyWith<ProfileLoaded> get copyWith;
}