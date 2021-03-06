import 'package:checkin/src/models/author.dart';
import 'package:checkin/src/util/crypto_util.dart';
import 'package:checkin/src/util/date_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News implements _$News, Comparable<News> {
  const News._();
  factory News({
    required final String id,
    required final String content,
    required final Author author,
    required final int timestamp,
    required final bool isPinned,
    final String? imageUrl,
  }) = _News;

  factory News.create(String content, Author author) {
    return News(
      id: CryptoUtil.generateUUID(),
      content: content,
      author: author,
      timestamp: DateUtil.getCurrentTimestamp(),
      isPinned: false,
    );
  }

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  @override
  int compareTo(News other) {
    return this.timestamp.compareTo(other.timestamp);
  }
}
