// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'membership_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MembershipEventTearOff {
  const _$MembershipEventTearOff();

  MembershipUpdated membershipUpdated(
      {required String customerEmail, required Membership membership}) {
    return MembershipUpdated(
      customerEmail: customerEmail,
      membership: membership,
    );
  }

  Unsubscribe unsubscribe() {
    return const Unsubscribe();
  }
}

/// @nodoc
const $MembershipEvent = _$MembershipEventTearOff();

/// @nodoc
mixin _$MembershipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerEmail, Membership membership)
        membershipUpdated,
    required TResult Function() unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerEmail, Membership membership)?
        membershipUpdated,
    TResult Function()? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MembershipUpdated value) membershipUpdated,
    required TResult Function(Unsubscribe value) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MembershipUpdated value)? membershipUpdated,
    TResult Function(Unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipEventCopyWith<$Res> {
  factory $MembershipEventCopyWith(
          MembershipEvent value, $Res Function(MembershipEvent) then) =
      _$MembershipEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MembershipEventCopyWithImpl<$Res>
    implements $MembershipEventCopyWith<$Res> {
  _$MembershipEventCopyWithImpl(this._value, this._then);

  final MembershipEvent _value;
  // ignore: unused_field
  final $Res Function(MembershipEvent) _then;
}

/// @nodoc
abstract class $MembershipUpdatedCopyWith<$Res> {
  factory $MembershipUpdatedCopyWith(
          MembershipUpdated value, $Res Function(MembershipUpdated) then) =
      _$MembershipUpdatedCopyWithImpl<$Res>;
  $Res call({String customerEmail, Membership membership});

  $MembershipCopyWith<$Res> get membership;
}

/// @nodoc
class _$MembershipUpdatedCopyWithImpl<$Res>
    extends _$MembershipEventCopyWithImpl<$Res>
    implements $MembershipUpdatedCopyWith<$Res> {
  _$MembershipUpdatedCopyWithImpl(
      MembershipUpdated _value, $Res Function(MembershipUpdated) _then)
      : super(_value, (v) => _then(v as MembershipUpdated));

  @override
  MembershipUpdated get _value => super._value as MembershipUpdated;

  @override
  $Res call({
    Object? customerEmail = freezed,
    Object? membership = freezed,
  }) {
    return _then(MembershipUpdated(
      customerEmail: customerEmail == freezed
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      membership: membership == freezed
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership,
    ));
  }

  @override
  $MembershipCopyWith<$Res> get membership {
    return $MembershipCopyWith<$Res>(_value.membership, (value) {
      return _then(_value.copyWith(membership: value));
    });
  }
}

/// @nodoc

class _$MembershipUpdated
    with DiagnosticableTreeMixin
    implements MembershipUpdated {
  const _$MembershipUpdated(
      {required this.customerEmail, required this.membership});

  @override
  final String customerEmail;
  @override
  final Membership membership;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MembershipEvent.membershipUpdated(customerEmail: $customerEmail, membership: $membership)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MembershipEvent.membershipUpdated'))
      ..add(DiagnosticsProperty('customerEmail', customerEmail))
      ..add(DiagnosticsProperty('membership', membership));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MembershipUpdated &&
            (identical(other.customerEmail, customerEmail) ||
                const DeepCollectionEquality()
                    .equals(other.customerEmail, customerEmail)) &&
            (identical(other.membership, membership) ||
                const DeepCollectionEquality()
                    .equals(other.membership, membership)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerEmail) ^
      const DeepCollectionEquality().hash(membership);

  @JsonKey(ignore: true)
  @override
  $MembershipUpdatedCopyWith<MembershipUpdated> get copyWith =>
      _$MembershipUpdatedCopyWithImpl<MembershipUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerEmail, Membership membership)
        membershipUpdated,
    required TResult Function() unsubscribe,
  }) {
    return membershipUpdated(customerEmail, membership);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerEmail, Membership membership)?
        membershipUpdated,
    TResult Function()? unsubscribe,
    required TResult orElse(),
  }) {
    if (membershipUpdated != null) {
      return membershipUpdated(customerEmail, membership);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MembershipUpdated value) membershipUpdated,
    required TResult Function(Unsubscribe value) unsubscribe,
  }) {
    return membershipUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MembershipUpdated value)? membershipUpdated,
    TResult Function(Unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (membershipUpdated != null) {
      return membershipUpdated(this);
    }
    return orElse();
  }
}

abstract class MembershipUpdated implements MembershipEvent {
  const factory MembershipUpdated(
      {required String customerEmail,
      required Membership membership}) = _$MembershipUpdated;

  String get customerEmail => throw _privateConstructorUsedError;
  Membership get membership => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipUpdatedCopyWith<MembershipUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsubscribeCopyWith<$Res> {
  factory $UnsubscribeCopyWith(
          Unsubscribe value, $Res Function(Unsubscribe) then) =
      _$UnsubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnsubscribeCopyWithImpl<$Res>
    extends _$MembershipEventCopyWithImpl<$Res>
    implements $UnsubscribeCopyWith<$Res> {
  _$UnsubscribeCopyWithImpl(
      Unsubscribe _value, $Res Function(Unsubscribe) _then)
      : super(_value, (v) => _then(v as Unsubscribe));

  @override
  Unsubscribe get _value => super._value as Unsubscribe;
}

/// @nodoc

class _$Unsubscribe with DiagnosticableTreeMixin implements Unsubscribe {
  const _$Unsubscribe();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MembershipEvent.unsubscribe()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MembershipEvent.unsubscribe'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unsubscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerEmail, Membership membership)
        membershipUpdated,
    required TResult Function() unsubscribe,
  }) {
    return unsubscribe();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerEmail, Membership membership)?
        membershipUpdated,
    TResult Function()? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MembershipUpdated value) membershipUpdated,
    required TResult Function(Unsubscribe value) unsubscribe,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MembershipUpdated value)? membershipUpdated,
    TResult Function(Unsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class Unsubscribe implements MembershipEvent {
  const factory Unsubscribe() = _$Unsubscribe;
}
