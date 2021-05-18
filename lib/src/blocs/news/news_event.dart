import 'package:checkin/src/models/author.dart';
import 'package:checkin/src/models/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.freezed.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.initializeNews() = InitializeNews;

  const factory NewsEvent.newsUpdated({
    @required List<News> newsList,
  }) = NewsUpdated;

  const factory NewsEvent.addNews({
    @required String content,
    @required Author author,
  }) = AddNews;
}
