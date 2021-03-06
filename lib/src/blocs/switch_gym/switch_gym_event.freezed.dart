// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'switch_gym_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwitchGymsEventTearOff {
  const _$SwitchGymsEventTearOff();

  InitializeSwitchGym initializeSwitchGym() {
    return const InitializeSwitchGym();
  }

  SwitchGymUpdated switchGymUpdated(
      {required Gym selectedGym,
      required User currentUser,
      required List<String> knowGymsIds}) {
    return SwitchGymUpdated(
      selectedGym: selectedGym,
      currentUser: currentUser,
      knowGymsIds: knowGymsIds,
    );
  }
}

/// @nodoc
const $SwitchGymsEvent = _$SwitchGymsEventTearOff();

/// @nodoc
mixin _$SwitchGymsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeSwitchGym,
    required TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)
        switchGymUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeSwitchGym,
    TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)?
        switchGymUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeSwitchGym value) initializeSwitchGym,
    required TResult Function(SwitchGymUpdated value) switchGymUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeSwitchGym value)? initializeSwitchGym,
    TResult Function(SwitchGymUpdated value)? switchGymUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchGymsEventCopyWith<$Res> {
  factory $SwitchGymsEventCopyWith(
          SwitchGymsEvent value, $Res Function(SwitchGymsEvent) then) =
      _$SwitchGymsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchGymsEventCopyWithImpl<$Res>
    implements $SwitchGymsEventCopyWith<$Res> {
  _$SwitchGymsEventCopyWithImpl(this._value, this._then);

  final SwitchGymsEvent _value;
  // ignore: unused_field
  final $Res Function(SwitchGymsEvent) _then;
}

/// @nodoc
abstract class $InitializeSwitchGymCopyWith<$Res> {
  factory $InitializeSwitchGymCopyWith(
          InitializeSwitchGym value, $Res Function(InitializeSwitchGym) then) =
      _$InitializeSwitchGymCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeSwitchGymCopyWithImpl<$Res>
    extends _$SwitchGymsEventCopyWithImpl<$Res>
    implements $InitializeSwitchGymCopyWith<$Res> {
  _$InitializeSwitchGymCopyWithImpl(
      InitializeSwitchGym _value, $Res Function(InitializeSwitchGym) _then)
      : super(_value, (v) => _then(v as InitializeSwitchGym));

  @override
  InitializeSwitchGym get _value => super._value as InitializeSwitchGym;
}

/// @nodoc

class _$InitializeSwitchGym implements InitializeSwitchGym {
  const _$InitializeSwitchGym();

  @override
  String toString() {
    return 'SwitchGymsEvent.initializeSwitchGym()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeSwitchGym);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeSwitchGym,
    required TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)
        switchGymUpdated,
  }) {
    return initializeSwitchGym();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeSwitchGym,
    TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)?
        switchGymUpdated,
    required TResult orElse(),
  }) {
    if (initializeSwitchGym != null) {
      return initializeSwitchGym();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeSwitchGym value) initializeSwitchGym,
    required TResult Function(SwitchGymUpdated value) switchGymUpdated,
  }) {
    return initializeSwitchGym(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeSwitchGym value)? initializeSwitchGym,
    TResult Function(SwitchGymUpdated value)? switchGymUpdated,
    required TResult orElse(),
  }) {
    if (initializeSwitchGym != null) {
      return initializeSwitchGym(this);
    }
    return orElse();
  }
}

abstract class InitializeSwitchGym implements SwitchGymsEvent {
  const factory InitializeSwitchGym() = _$InitializeSwitchGym;
}

/// @nodoc
abstract class $SwitchGymUpdatedCopyWith<$Res> {
  factory $SwitchGymUpdatedCopyWith(
          SwitchGymUpdated value, $Res Function(SwitchGymUpdated) then) =
      _$SwitchGymUpdatedCopyWithImpl<$Res>;
  $Res call({Gym selectedGym, User currentUser, List<String> knowGymsIds});

  $GymCopyWith<$Res> get selectedGym;
  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$SwitchGymUpdatedCopyWithImpl<$Res>
    extends _$SwitchGymsEventCopyWithImpl<$Res>
    implements $SwitchGymUpdatedCopyWith<$Res> {
  _$SwitchGymUpdatedCopyWithImpl(
      SwitchGymUpdated _value, $Res Function(SwitchGymUpdated) _then)
      : super(_value, (v) => _then(v as SwitchGymUpdated));

  @override
  SwitchGymUpdated get _value => super._value as SwitchGymUpdated;

  @override
  $Res call({
    Object? selectedGym = freezed,
    Object? currentUser = freezed,
    Object? knowGymsIds = freezed,
  }) {
    return _then(SwitchGymUpdated(
      selectedGym: selectedGym == freezed
          ? _value.selectedGym
          : selectedGym // ignore: cast_nullable_to_non_nullable
              as Gym,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      knowGymsIds: knowGymsIds == freezed
          ? _value.knowGymsIds
          : knowGymsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $GymCopyWith<$Res> get selectedGym {
    return $GymCopyWith<$Res>(_value.selectedGym, (value) {
      return _then(_value.copyWith(selectedGym: value));
    });
  }

  @override
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$SwitchGymUpdated implements SwitchGymUpdated {
  const _$SwitchGymUpdated(
      {required this.selectedGym,
      required this.currentUser,
      required this.knowGymsIds});

  @override
  final Gym selectedGym;
  @override
  final User currentUser;
  @override
  final List<String> knowGymsIds;

  @override
  String toString() {
    return 'SwitchGymsEvent.switchGymUpdated(selectedGym: $selectedGym, currentUser: $currentUser, knowGymsIds: $knowGymsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchGymUpdated &&
            (identical(other.selectedGym, selectedGym) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGym, selectedGym)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.knowGymsIds, knowGymsIds) ||
                const DeepCollectionEquality()
                    .equals(other.knowGymsIds, knowGymsIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedGym) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(knowGymsIds);

  @JsonKey(ignore: true)
  @override
  $SwitchGymUpdatedCopyWith<SwitchGymUpdated> get copyWith =>
      _$SwitchGymUpdatedCopyWithImpl<SwitchGymUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeSwitchGym,
    required TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)
        switchGymUpdated,
  }) {
    return switchGymUpdated(selectedGym, currentUser, knowGymsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeSwitchGym,
    TResult Function(
            Gym selectedGym, User currentUser, List<String> knowGymsIds)?
        switchGymUpdated,
    required TResult orElse(),
  }) {
    if (switchGymUpdated != null) {
      return switchGymUpdated(selectedGym, currentUser, knowGymsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeSwitchGym value) initializeSwitchGym,
    required TResult Function(SwitchGymUpdated value) switchGymUpdated,
  }) {
    return switchGymUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeSwitchGym value)? initializeSwitchGym,
    TResult Function(SwitchGymUpdated value)? switchGymUpdated,
    required TResult orElse(),
  }) {
    if (switchGymUpdated != null) {
      return switchGymUpdated(this);
    }
    return orElse();
  }
}

abstract class SwitchGymUpdated implements SwitchGymsEvent {
  const factory SwitchGymUpdated(
      {required Gym selectedGym,
      required User currentUser,
      required List<String> knowGymsIds}) = _$SwitchGymUpdated;

  Gym get selectedGym => throw _privateConstructorUsedError;
  User get currentUser => throw _privateConstructorUsedError;
  List<String> get knowGymsIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchGymUpdatedCopyWith<SwitchGymUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
