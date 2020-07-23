import 'package:checkin/src/constants.dart' as constants;
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/lesson.dart';
import 'package:checkin/src/ui/components/attendees_preview.dart';
import 'package:checkin/src/ui/components/user_image.dart';
import 'package:checkin/src/util/dynamic_link_util.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;

  LessonCard({
    Key key,
    @required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var allAttendees = lesson.attendees.length + lesson.acceptedAttendees.length;
    return Container(
        height: 180,
        padding: EdgeInsets.only(top: 15.0),
        child: Card(
            key: Key(lesson.name),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("registry/${lesson.date}/${lesson.id}");
              },
              child: Padding(
                padding:
                    EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            UserImage(
                              userImage: lesson.masters.first.imageUrl,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _capitalize(lesson.name),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1,
                                ),
                                Text("${lesson.timeStart} - ${lesson.timeEnd}",
                                    style: Theme.of(context).textTheme.headline3)
                              ],
                            ),
                          ],
                        ),
                        IconButton(icon: Icon(Icons.share), onPressed: () async {
                          var link = await DynamicLinkUtil().getLink(date: lesson.date, lessonId: lesson.id);
                          Share.share(link);
                        },)
                      ],
                    ),
                    if (allAttendees > 0)
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: AttendeesPreview(
                          lesson: lesson,
                          maxAttendeesToDisplay: 5,
                        ),
                      ),
                    if (allAttendees == 0)
                      Text(
                        constants.emptyClass.i18n,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: _getFullPercentage(allAttendees, lesson.classCapacity),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Theme.of(context).primaryColor),
                            backgroundColor: Theme.of(context).primaryColor.withAlpha(70),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, left: 10),
                          child: Text("$allAttendees/${lesson.classCapacity}", style: Theme.of(context).textTheme.headline5,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}

String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);

double _getFullPercentage(int numberOfAttendees, int classCapacity) =>
    (numberOfAttendees * 100 / classCapacity) / 100;
