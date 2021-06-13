// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'subscription_plans_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SubscriptionPlansEventTearOff {
  const _$SubscriptionPlansEventTearOff();

// ignore: unused_element
  SubscriptionPlansUpdated subscriptionPlansUpdated(
      {@required List<SubscriptionPlan> subscriptionPlans}) {
    return SubscriptionPlansUpdated(
      subscriptionPlans: subscriptionPlans,
    );
  }

// ignore: unused_element
  LoadSubscriptionPlans loadSubscriptionPlans({@required String planId}) {
    return LoadSubscriptionPlans(
      planId: planId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubscriptionPlansEvent = _$SubscriptionPlansEventTearOff();

/// @nodoc
mixin _$SubscriptionPlansEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult subscriptionPlansUpdated(
            List<SubscriptionPlan> subscriptionPlans),
    @required TResult loadSubscriptionPlans(String planId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult subscriptionPlansUpdated(List<SubscriptionPlan> subscriptionPlans),
    TResult loadSubscriptionPlans(String planId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    @required TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SubscriptionPlansEventCopyWith<$Res> {
  factory $SubscriptionPlansEventCopyWith(SubscriptionPlansEvent value,
          $Res Function(SubscriptionPlansEvent) then) =
      _$SubscriptionPlansEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionPlansEventCopyWithImpl<$Res>
    implements $SubscriptionPlansEventCopyWith<$Res> {
  _$SubscriptionPlansEventCopyWithImpl(this._value, this._then);

  final SubscriptionPlansEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionPlansEvent) _then;
}

/// @nodoc
abstract class $SubscriptionPlansUpdatedCopyWith<$Res> {
  factory $SubscriptionPlansUpdatedCopyWith(SubscriptionPlansUpdated value,
          $Res Function(SubscriptionPlansUpdated) then) =
      _$SubscriptionPlansUpdatedCopyWithImpl<$Res>;
  $Res call({List<SubscriptionPlan> subscriptionPlans});
}

/// @nodoc
class _$SubscriptionPlansUpdatedCopyWithImpl<$Res>
    extends _$SubscriptionPlansEventCopyWithImpl<$Res>
    implements $SubscriptionPlansUpdatedCopyWith<$Res> {
  _$SubscriptionPlansUpdatedCopyWithImpl(SubscriptionPlansUpdated _value,
      $Res Function(SubscriptionPlansUpdated) _then)
      : super(_value, (v) => _then(v as SubscriptionPlansUpdated));

  @override
  SubscriptionPlansUpdated get _value =>
      super._value as SubscriptionPlansUpdated;

  @override
  $Res call({
    Object subscriptionPlans = freezed,
  }) {
    return _then(SubscriptionPlansUpdated(
      subscriptionPlans: subscriptionPlans == freezed
          ? _value.subscriptionPlans
          : subscriptionPlans as List<SubscriptionPlan>,
    ));
  }
}

/// @nodoc
class _$SubscriptionPlansUpdated
    with DiagnosticableTreeMixin
    implements SubscriptionPlansUpdated {
  const _$SubscriptionPlansUpdated({@required this.subscriptionPlans})
      : assert(subscriptionPlans != null);

  @override
  final List<SubscriptionPlan> subscriptionPlans;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionPlansEvent.subscriptionPlansUpdated(subscriptionPlans: $subscriptionPlans)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SubscriptionPlansEvent.subscriptionPlansUpdated'))
      ..add(DiagnosticsProperty('subscriptionPlans', subscriptionPlans));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscriptionPlansUpdated &&
            (identical(other.subscriptionPlans, subscriptionPlans) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionPlans, subscriptionPlans)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionPlans);

  @JsonKey(ignore: true)
  @override
  $SubscriptionPlansUpdatedCopyWith<SubscriptionPlansUpdated> get copyWith =>
      _$SubscriptionPlansUpdatedCopyWithImpl<SubscriptionPlansUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult subscriptionPlansUpdated(
            List<SubscriptionPlan> subscriptionPlans),
    @required TResult loadSubscriptionPlans(String planId),
  }) {
    assert(subscriptionPlansUpdated != null);
    assert(loadSubscriptionPlans != null);
    return subscriptionPlansUpdated(subscriptionPlans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult subscriptionPlansUpdated(List<SubscriptionPlan> subscriptionPlans),
    TResult loadSubscriptionPlans(String planId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subscriptionPlansUpdated != null) {
      return subscriptionPlansUpdated(subscriptionPlans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    @required TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
  }) {
    assert(subscriptionPlansUpdated != null);
    assert(loadSubscriptionPlans != null);
    return subscriptionPlansUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subscriptionPlansUpdated != null) {
      return subscriptionPlansUpdated(this);
    }
    return orElse();
  }
}

abstract class SubscriptionPlansUpdated implements SubscriptionPlansEvent {
  const factory SubscriptionPlansUpdated(
          {@required List<SubscriptionPlan> subscriptionPlans}) =
      _$SubscriptionPlansUpdated;

  List<SubscriptionPlan> get subscriptionPlans;
  @JsonKey(ignore: true)
  $SubscriptionPlansUpdatedCopyWith<SubscriptionPlansUpdated> get copyWith;
}

/// @nodoc
abstract class $LoadSubscriptionPlansCopyWith<$Res> {
  factory $LoadSubscriptionPlansCopyWith(LoadSubscriptionPlans value,
          $Res Function(LoadSubscriptionPlans) then) =
      _$LoadSubscriptionPlansCopyWithImpl<$Res>;
  $Res call({String planId});
}

/// @nodoc
class _$LoadSubscriptionPlansCopyWithImpl<$Res>
    extends _$SubscriptionPlansEventCopyWithImpl<$Res>
    implements $LoadSubscriptionPlansCopyWith<$Res> {
  _$LoadSubscriptionPlansCopyWithImpl(
      LoadSubscriptionPlans _value, $Res Function(LoadSubscriptionPlans) _then)
      : super(_value, (v) => _then(v as LoadSubscriptionPlans));

  @override
  LoadSubscriptionPlans get _value => super._value as LoadSubscriptionPlans;

  @override
  $Res call({
    Object planId = freezed,
  }) {
    return _then(LoadSubscriptionPlans(
      planId: planId == freezed ? _value.planId : planId as String,
    ));
  }
}

/// @nodoc
class _$LoadSubscriptionPlans
    with DiagnosticableTreeMixin
    implements LoadSubscriptionPlans {
  const _$LoadSubscriptionPlans({@required this.planId})
      : assert(planId != null);

  @override
  final String planId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionPlansEvent.loadSubscriptionPlans(planId: $planId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SubscriptionPlansEvent.loadSubscriptionPlans'))
      ..add(DiagnosticsProperty('planId', planId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSubscriptionPlans &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(planId);

  @JsonKey(ignore: true)
  @override
  $LoadSubscriptionPlansCopyWith<LoadSubscriptionPlans> get copyWith =>
      _$LoadSubscriptionPlansCopyWithImpl<LoadSubscriptionPlans>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult subscriptionPlansUpdated(
            List<SubscriptionPlan> subscriptionPlans),
    @required TResult loadSubscriptionPlans(String planId),
  }) {
    assert(subscriptionPlansUpdated != null);
    assert(loadSubscriptionPlans != null);
    return loadSubscriptionPlans(planId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult subscriptionPlansUpdated(List<SubscriptionPlan> subscriptionPlans),
    TResult loadSubscriptionPlans(String planId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSubscriptionPlans != null) {
      return loadSubscriptionPlans(planId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    @required TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
  }) {
    assert(subscriptionPlansUpdated != null);
    assert(loadSubscriptionPlans != null);
    return loadSubscriptionPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult subscriptionPlansUpdated(SubscriptionPlansUpdated value),
    TResult loadSubscriptionPlans(LoadSubscriptionPlans value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSubscriptionPlans != null) {
      return loadSubscriptionPlans(this);
    }
    return orElse();
  }
}

abstract class LoadSubscriptionPlans implements SubscriptionPlansEvent {
  const factory LoadSubscriptionPlans({@required String planId}) =
      _$LoadSubscriptionPlans;

  String get planId;
  @JsonKey(ignore: true)
  $LoadSubscriptionPlansCopyWith<LoadSubscriptionPlans> get copyWith;
}
