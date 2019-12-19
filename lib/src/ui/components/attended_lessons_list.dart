import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/lesson.dart';
import 'package:checkin/src/ui/components/lesson_info_card.dart';
import 'package:flutter/material.dart';

class AttendedLessonsList extends StatelessWidget {

  final List<Lesson> attendedLessons;

  const AttendedLessonsList({
    Key key,
    @required this.attendedLessons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        Localization.of(context).attendedClasses,
        style: Theme.of(context)
            .textTheme
            .headline
            .apply(color: Colors.black87),
      ),
      ...attendedLessons
          .map((lesson) => LessonInfoCard(lesson: lesson))
          .toList(),
    ],);
  }
}
