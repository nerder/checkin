import 'package:checkin/src/models/lesson.dart';
import 'package:equatable/equatable.dart';

class UserHistory extends Equatable {
  final String email;
  final List<Lesson>? attendedLessons;

  UserHistory({required this.email, required this.attendedLessons});

  @override
  List<Object?> get props => [attendedLessons];

  @override
  String toString() => 'UserHistory{attendedLessons: $attendedLessons}';
}
