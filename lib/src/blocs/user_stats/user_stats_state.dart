import 'package:checkin/src/models/lesson.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class UserStatsState extends Equatable {
  const UserStatsState();

  @override
  List<Object> get props => [];
}

class StatsUninitialized extends UserStatsState {
  @override
  String toString() => 'StatsInitial';
}

class StatsLoaded extends UserStatsState {
  final List<Lesson> attendedLessons;
  final String timespan;

  StatsLoaded({
    @required this.attendedLessons,
    @required this.timespan,
  });

  @override
  List<Object> get props => [attendedLessons, timespan];

  @override
  String toString() => 'StatsLoaded{attendedLessons: $attendedLessons}';


}