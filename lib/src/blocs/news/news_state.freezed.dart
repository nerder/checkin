// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  NewsInitial newsInitial() {
    return const NewsInitial();
  }

// ignore: unused_element
  NewsLoaded newsLoaded(
      {@required List<News> newsList, @required bool hasPinnedNews, @required bool hasMoreNews}) {
    return NewsLoaded(
      newsList: newsList,
      hasPinnedNews: hasPinnedNews,
      hasMoreNews: hasMoreNews,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult newsInitial(),
    @required TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult newsInitial(),
    TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult newsInitial(NewsInitial value),
    @required TResult newsLoaded(NewsLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult newsInitial(NewsInitial value),
    TResult newsLoaded(NewsLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class $NewsInitialCopyWith<$Res> {
  factory $NewsInitialCopyWith(NewsInitial value, $Res Function(NewsInitial) then) =
      _$NewsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsInitialCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsInitialCopyWith<$Res> {
  _$NewsInitialCopyWithImpl(NewsInitial _value, $Res Function(NewsInitial) _then)
      : super(_value, (v) => _then(v as NewsInitial));

  @override
  NewsInitial get _value => super._value as NewsInitial;
}

/// @nodoc
class _$NewsInitial with DiagnosticableTreeMixin implements NewsInitial {
  const _$NewsInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsState.newsInitial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NewsState.newsInitial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult newsInitial(),
    @required TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
  }) {
    assert(newsInitial != null);
    assert(newsLoaded != null);
    return newsInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult newsInitial(),
    TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsInitial != null) {
      return newsInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult newsInitial(NewsInitial value),
    @required TResult newsLoaded(NewsLoaded value),
  }) {
    assert(newsInitial != null);
    assert(newsLoaded != null);
    return newsInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult newsInitial(NewsInitial value),
    TResult newsLoaded(NewsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsInitial != null) {
      return newsInitial(this);
    }
    return orElse();
  }
}

abstract class NewsInitial implements NewsState {
  const factory NewsInitial() = _$NewsInitial;
}

/// @nodoc
abstract class $NewsLoadedCopyWith<$Res> {
  factory $NewsLoadedCopyWith(NewsLoaded value, $Res Function(NewsLoaded) then) =
      _$NewsLoadedCopyWithImpl<$Res>;
  $Res call({List<News> newsList, bool hasPinnedNews, bool hasMoreNews});
}

/// @nodoc
class _$NewsLoadedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadedCopyWith<$Res> {
  _$NewsLoadedCopyWithImpl(NewsLoaded _value, $Res Function(NewsLoaded) _then)
      : super(_value, (v) => _then(v as NewsLoaded));

  @override
  NewsLoaded get _value => super._value as NewsLoaded;

  @override
  $Res call({
    Object newsList = freezed,
    Object hasPinnedNews = freezed,
    Object hasMoreNews = freezed,
  }) {
    return _then(NewsLoaded(
      newsList: newsList == freezed ? _value.newsList : newsList as List<News>,
      hasPinnedNews: hasPinnedNews == freezed ? _value.hasPinnedNews : hasPinnedNews as bool,
      hasMoreNews: hasMoreNews == freezed ? _value.hasMoreNews : hasMoreNews as bool,
    ));
  }
}

/// @nodoc
class _$NewsLoaded with DiagnosticableTreeMixin implements NewsLoaded {
  const _$NewsLoaded(
      {@required this.newsList, @required this.hasPinnedNews, @required this.hasMoreNews})
      : assert(newsList != null),
        assert(hasPinnedNews != null),
        assert(hasMoreNews != null);

  @override
  final List<News> newsList;
  @override
  final bool hasPinnedNews;
  @override
  final bool hasMoreNews;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsState.newsLoaded(newsList: $newsList, hasPinnedNews: $hasPinnedNews, hasMoreNews: $hasMoreNews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsState.newsLoaded'))
      ..add(DiagnosticsProperty('newsList', newsList))
      ..add(DiagnosticsProperty('hasPinnedNews', hasPinnedNews))
      ..add(DiagnosticsProperty('hasMoreNews', hasMoreNews));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewsLoaded &&
            (identical(other.newsList, newsList) ||
                const DeepCollectionEquality().equals(other.newsList, newsList)) &&
            (identical(other.hasPinnedNews, hasPinnedNews) ||
                const DeepCollectionEquality().equals(other.hasPinnedNews, hasPinnedNews)) &&
            (identical(other.hasMoreNews, hasMoreNews) ||
                const DeepCollectionEquality().equals(other.hasMoreNews, hasMoreNews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsList) ^
      const DeepCollectionEquality().hash(hasPinnedNews) ^
      const DeepCollectionEquality().hash(hasMoreNews);

  @JsonKey(ignore: true)
  @override
  $NewsLoadedCopyWith<NewsLoaded> get copyWith =>
      _$NewsLoadedCopyWithImpl<NewsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult newsInitial(),
    @required TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
  }) {
    assert(newsInitial != null);
    assert(newsLoaded != null);
    return newsLoaded(newsList, hasPinnedNews, hasMoreNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult newsInitial(),
    TResult newsLoaded(List<News> newsList, bool hasPinnedNews, bool hasMoreNews),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsLoaded != null) {
      return newsLoaded(newsList, hasPinnedNews, hasMoreNews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult newsInitial(NewsInitial value),
    @required TResult newsLoaded(NewsLoaded value),
  }) {
    assert(newsInitial != null);
    assert(newsLoaded != null);
    return newsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult newsInitial(NewsInitial value),
    TResult newsLoaded(NewsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsLoaded != null) {
      return newsLoaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoaded implements NewsState {
  const factory NewsLoaded(
      {@required List<News> newsList,
      @required bool hasPinnedNews,
      @required bool hasMoreNews}) = _$NewsLoaded;

  List<News> get newsList;
  bool get hasPinnedNews;
  bool get hasMoreNews;
  @JsonKey(ignore: true)
  $NewsLoadedCopyWith<NewsLoaded> get copyWith;
}
