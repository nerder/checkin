// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'test_gym.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TestGym _$TestGymFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _TestGym.fromJson(json);
    case 'caseOne':
      return _CaseOne.fromJson(json);
    case 'caseTwo':
      return _CaseTwo.fromJson(json);
    case 'caseThree':
      return CaseThree.fromJson(json);
    case 'caseFour':
      return CaseFour.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$TestGymTearOff {
  const _$TestGymTearOff();

  _TestGym call(
      {String domain,
      String host,
      String stripePublicKey,
      @required String requiredField}) {
    return _TestGym(
      domain: domain,
      host: host,
      stripePublicKey: stripePublicKey,
      requiredField: requiredField,
    );
  }

  _CaseOne caseOne([String caseOne = 'caseOne']) {
    return _CaseOne(
      caseOne,
    );
  }

  _CaseTwo caseTwo(String caseTwo) {
    return _CaseTwo(
      caseTwo,
    );
  }

  CaseThree caseThree({@required String caseThree}) {
    return CaseThree(
      caseThree: caseThree,
    );
  }

  CaseFour caseFour({String caseFour}) {
    return CaseFour(
      caseFour: caseFour,
    );
  }
}

// ignore: unused_element
const $TestGym = _$TestGymTearOff();

mixin _$TestGym {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $TestGymCopyWith<$Res> {
  factory $TestGymCopyWith(TestGym value, $Res Function(TestGym) then) =
      _$TestGymCopyWithImpl<$Res>;
}

class _$TestGymCopyWithImpl<$Res> implements $TestGymCopyWith<$Res> {
  _$TestGymCopyWithImpl(this._value, this._then);

  final TestGym _value;
  // ignore: unused_field
  final $Res Function(TestGym) _then;
}

abstract class _$TestGymCopyWith<$Res> {
  factory _$TestGymCopyWith(_TestGym value, $Res Function(_TestGym) then) =
      __$TestGymCopyWithImpl<$Res>;
  $Res call(
      {String domain,
      String host,
      String stripePublicKey,
      String requiredField});
}

class __$TestGymCopyWithImpl<$Res> extends _$TestGymCopyWithImpl<$Res>
    implements _$TestGymCopyWith<$Res> {
  __$TestGymCopyWithImpl(_TestGym _value, $Res Function(_TestGym) _then)
      : super(_value, (v) => _then(v as _TestGym));

  @override
  _TestGym get _value => super._value as _TestGym;

  @override
  $Res call({
    Object domain = freezed,
    Object host = freezed,
    Object stripePublicKey = freezed,
    Object requiredField = freezed,
  }) {
    return _then(_TestGym(
      domain: domain == freezed ? _value.domain : domain as String,
      host: host == freezed ? _value.host : host as String,
      stripePublicKey: stripePublicKey == freezed
          ? _value.stripePublicKey
          : stripePublicKey as String,
      requiredField: requiredField == freezed
          ? _value.requiredField
          : requiredField as String,
    ));
  }
}

@JsonSerializable()
class _$_TestGym with DiagnosticableTreeMixin implements _TestGym {
  _$_TestGym(
      {this.domain,
      this.host,
      this.stripePublicKey,
      @required this.requiredField})
      : assert(requiredField != null);

  factory _$_TestGym.fromJson(Map<String, dynamic> json) =>
      _$_$_TestGymFromJson(json);

  @override
  final String domain;
  @override
  final String host;
  @override
  final String stripePublicKey;
  @override
  final String requiredField;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestGym(domain: $domain, host: $host, stripePublicKey: $stripePublicKey, requiredField: $requiredField)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestGym'))
      ..add(DiagnosticsProperty('domain', domain))
      ..add(DiagnosticsProperty('host', host))
      ..add(DiagnosticsProperty('stripePublicKey', stripePublicKey))
      ..add(DiagnosticsProperty('requiredField', requiredField));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestGym &&
            (identical(other.domain, domain) ||
                const DeepCollectionEquality().equals(other.domain, domain)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.stripePublicKey, stripePublicKey) ||
                const DeepCollectionEquality()
                    .equals(other.stripePublicKey, stripePublicKey)) &&
            (identical(other.requiredField, requiredField) ||
                const DeepCollectionEquality()
                    .equals(other.requiredField, requiredField)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(domain) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(stripePublicKey) ^
      const DeepCollectionEquality().hash(requiredField);

  @override
  _$TestGymCopyWith<_TestGym> get copyWith =>
      __$TestGymCopyWithImpl<_TestGym>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return $default(domain, host, stripePublicKey, requiredField);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(domain, host, stripePublicKey, requiredField);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TestGymToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _TestGym implements TestGym {
  factory _TestGym(
      {String domain,
      String host,
      String stripePublicKey,
      @required String requiredField}) = _$_TestGym;

  factory _TestGym.fromJson(Map<String, dynamic> json) = _$_TestGym.fromJson;

  String get domain;
  String get host;
  String get stripePublicKey;
  String get requiredField;
  _$TestGymCopyWith<_TestGym> get copyWith;
}

abstract class _$CaseOneCopyWith<$Res> {
  factory _$CaseOneCopyWith(_CaseOne value, $Res Function(_CaseOne) then) =
      __$CaseOneCopyWithImpl<$Res>;
  $Res call({String caseOne});
}

class __$CaseOneCopyWithImpl<$Res> extends _$TestGymCopyWithImpl<$Res>
    implements _$CaseOneCopyWith<$Res> {
  __$CaseOneCopyWithImpl(_CaseOne _value, $Res Function(_CaseOne) _then)
      : super(_value, (v) => _then(v as _CaseOne));

  @override
  _CaseOne get _value => super._value as _CaseOne;

  @override
  $Res call({
    Object caseOne = freezed,
  }) {
    return _then(_CaseOne(
      caseOne == freezed ? _value.caseOne : caseOne as String,
    ));
  }
}

@JsonSerializable()
class _$_CaseOne with DiagnosticableTreeMixin implements _CaseOne {
  const _$_CaseOne([this.caseOne = 'caseOne']) : assert(caseOne != null);

  factory _$_CaseOne.fromJson(Map<String, dynamic> json) =>
      _$_$_CaseOneFromJson(json);

  @JsonKey(defaultValue: 'caseOne')
  @override
  final String caseOne;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestGym.caseOne(caseOne: $caseOne)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestGym.caseOne'))
      ..add(DiagnosticsProperty('caseOne', caseOne));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CaseOne &&
            (identical(other.caseOne, caseOne) ||
                const DeepCollectionEquality().equals(other.caseOne, caseOne)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(caseOne);

  @override
  _$CaseOneCopyWith<_CaseOne> get copyWith =>
      __$CaseOneCopyWithImpl<_CaseOne>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseOne(this.caseOne);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseOne != null) {
      return caseOne(this.caseOne);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseOne(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseOne != null) {
      return caseOne(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CaseOneToJson(this)..['runtimeType'] = 'caseOne';
  }
}

abstract class _CaseOne implements TestGym {
  const factory _CaseOne([String caseOne]) = _$_CaseOne;

  factory _CaseOne.fromJson(Map<String, dynamic> json) = _$_CaseOne.fromJson;

  String get caseOne;
  _$CaseOneCopyWith<_CaseOne> get copyWith;
}

abstract class _$CaseTwoCopyWith<$Res> {
  factory _$CaseTwoCopyWith(_CaseTwo value, $Res Function(_CaseTwo) then) =
      __$CaseTwoCopyWithImpl<$Res>;
  $Res call({String caseTwo});
}

class __$CaseTwoCopyWithImpl<$Res> extends _$TestGymCopyWithImpl<$Res>
    implements _$CaseTwoCopyWith<$Res> {
  __$CaseTwoCopyWithImpl(_CaseTwo _value, $Res Function(_CaseTwo) _then)
      : super(_value, (v) => _then(v as _CaseTwo));

  @override
  _CaseTwo get _value => super._value as _CaseTwo;

  @override
  $Res call({
    Object caseTwo = freezed,
  }) {
    return _then(_CaseTwo(
      caseTwo == freezed ? _value.caseTwo : caseTwo as String,
    ));
  }
}

@JsonSerializable()
class _$_CaseTwo with DiagnosticableTreeMixin implements _CaseTwo {
  const _$_CaseTwo(this.caseTwo) : assert(caseTwo != null);

  factory _$_CaseTwo.fromJson(Map<String, dynamic> json) =>
      _$_$_CaseTwoFromJson(json);

  @override
  final String caseTwo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestGym.caseTwo(caseTwo: $caseTwo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestGym.caseTwo'))
      ..add(DiagnosticsProperty('caseTwo', caseTwo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CaseTwo &&
            (identical(other.caseTwo, caseTwo) ||
                const DeepCollectionEquality().equals(other.caseTwo, caseTwo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(caseTwo);

  @override
  _$CaseTwoCopyWith<_CaseTwo> get copyWith =>
      __$CaseTwoCopyWithImpl<_CaseTwo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseTwo(this.caseTwo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseTwo != null) {
      return caseTwo(this.caseTwo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseTwo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseTwo != null) {
      return caseTwo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CaseTwoToJson(this)..['runtimeType'] = 'caseTwo';
  }
}

abstract class _CaseTwo implements TestGym {
  const factory _CaseTwo(String caseTwo) = _$_CaseTwo;

  factory _CaseTwo.fromJson(Map<String, dynamic> json) = _$_CaseTwo.fromJson;

  String get caseTwo;
  _$CaseTwoCopyWith<_CaseTwo> get copyWith;
}

abstract class $CaseThreeCopyWith<$Res> {
  factory $CaseThreeCopyWith(CaseThree value, $Res Function(CaseThree) then) =
      _$CaseThreeCopyWithImpl<$Res>;
  $Res call({String caseThree});
}

class _$CaseThreeCopyWithImpl<$Res> extends _$TestGymCopyWithImpl<$Res>
    implements $CaseThreeCopyWith<$Res> {
  _$CaseThreeCopyWithImpl(CaseThree _value, $Res Function(CaseThree) _then)
      : super(_value, (v) => _then(v as CaseThree));

  @override
  CaseThree get _value => super._value as CaseThree;

  @override
  $Res call({
    Object caseThree = freezed,
  }) {
    return _then(CaseThree(
      caseThree: caseThree == freezed ? _value.caseThree : caseThree as String,
    ));
  }
}

@JsonSerializable()
class _$CaseThree with DiagnosticableTreeMixin implements CaseThree {
  const _$CaseThree({@required this.caseThree}) : assert(caseThree != null);

  factory _$CaseThree.fromJson(Map<String, dynamic> json) =>
      _$_$CaseThreeFromJson(json);

  @override
  final String caseThree;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestGym.caseThree(caseThree: $caseThree)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestGym.caseThree'))
      ..add(DiagnosticsProperty('caseThree', caseThree));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CaseThree &&
            (identical(other.caseThree, caseThree) ||
                const DeepCollectionEquality()
                    .equals(other.caseThree, caseThree)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(caseThree);

  @override
  $CaseThreeCopyWith<CaseThree> get copyWith =>
      _$CaseThreeCopyWithImpl<CaseThree>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseThree(this.caseThree);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseThree != null) {
      return caseThree(this.caseThree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseThree(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseThree != null) {
      return caseThree(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CaseThreeToJson(this)..['runtimeType'] = 'caseThree';
  }
}

abstract class CaseThree implements TestGym {
  const factory CaseThree({@required String caseThree}) = _$CaseThree;

  factory CaseThree.fromJson(Map<String, dynamic> json) = _$CaseThree.fromJson;

  String get caseThree;
  $CaseThreeCopyWith<CaseThree> get copyWith;
}

abstract class $CaseFourCopyWith<$Res> {
  factory $CaseFourCopyWith(CaseFour value, $Res Function(CaseFour) then) =
      _$CaseFourCopyWithImpl<$Res>;
  $Res call({String caseFour});
}

class _$CaseFourCopyWithImpl<$Res> extends _$TestGymCopyWithImpl<$Res>
    implements $CaseFourCopyWith<$Res> {
  _$CaseFourCopyWithImpl(CaseFour _value, $Res Function(CaseFour) _then)
      : super(_value, (v) => _then(v as CaseFour));

  @override
  CaseFour get _value => super._value as CaseFour;

  @override
  $Res call({
    Object caseFour = freezed,
  }) {
    return _then(CaseFour(
      caseFour: caseFour == freezed ? _value.caseFour : caseFour as String,
    ));
  }
}

@JsonSerializable()
class _$CaseFour with DiagnosticableTreeMixin implements CaseFour {
  const _$CaseFour({this.caseFour});

  factory _$CaseFour.fromJson(Map<String, dynamic> json) =>
      _$_$CaseFourFromJson(json);

  @override
  final String caseFour;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestGym.caseFour(caseFour: $caseFour)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestGym.caseFour'))
      ..add(DiagnosticsProperty('caseFour', caseFour));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CaseFour &&
            (identical(other.caseFour, caseFour) ||
                const DeepCollectionEquality()
                    .equals(other.caseFour, caseFour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(caseFour);

  @override
  $CaseFourCopyWith<CaseFour> get copyWith =>
      _$CaseFourCopyWithImpl<CaseFour>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    @required Result caseOne(String caseOne),
    @required Result caseTwo(String caseTwo),
    @required Result caseThree(String caseThree),
    @required Result caseFour(String caseFour),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseFour(this.caseFour);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String domain, String host, String stripePublicKey,
        String requiredField), {
    Result caseOne(String caseOne),
    Result caseTwo(String caseTwo),
    Result caseThree(String caseThree),
    Result caseFour(String caseFour),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseFour != null) {
      return caseFour(this.caseFour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TestGym value), {
    @required Result caseOne(_CaseOne value),
    @required Result caseTwo(_CaseTwo value),
    @required Result caseThree(CaseThree value),
    @required Result caseFour(CaseFour value),
  }) {
    assert($default != null);
    assert(caseOne != null);
    assert(caseTwo != null);
    assert(caseThree != null);
    assert(caseFour != null);
    return caseFour(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TestGym value), {
    Result caseOne(_CaseOne value),
    Result caseTwo(_CaseTwo value),
    Result caseThree(CaseThree value),
    Result caseFour(CaseFour value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (caseFour != null) {
      return caseFour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CaseFourToJson(this)..['runtimeType'] = 'caseFour';
  }
}

abstract class CaseFour implements TestGym {
  const factory CaseFour({String caseFour}) = _$CaseFour;

  factory CaseFour.fromJson(Map<String, dynamic> json) = _$CaseFour.fromJson;

  String get caseFour;
  $CaseFourCopyWith<CaseFour> get copyWith;
}