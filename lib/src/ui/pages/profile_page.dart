import 'package:checkin/src/blocs/graduation/bloc.dart';
import 'package:checkin/src/blocs/graduation/graduation_bloc.dart';
import 'package:checkin/src/blocs/profile/bloc.dart';
import 'package:checkin/src/blocs/stats/bloc.dart';
import 'package:checkin/src/blocs/user_stats/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/grade.dart';
import 'package:checkin/src/models/timespan.dart';
import 'package:checkin/src/ui/components/base_app_bar.dart';
import 'package:checkin/src/ui/components/stats/graduate_fab.dart';
import 'package:checkin/src/ui/components/stats/stats_header.dart';
import 'package:checkin/src/ui/components/stats/user/attended_lessons_list.dart';
import 'package:checkin/src/ui/components/stats/user/class_progress_indicator_shrinkable.dart';
import 'package:checkin/src/ui/components/user_image.dart';
import 'package:checkin/src/ui/pages/stats_page.dart';
import 'package:checkin/src/util/debug_util.dart';
import 'package:checkin/src/util/graduation_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  final String userEmail;
  static const String classes = "Classes";
  static const String profile = "Profile";

  const ProfilePage({
    Key key,
    @required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: remove toggle when done
    return isInDebugMode
        ? MultiBlocProvider(
            providers: [
              BlocProvider<StatsBloc>(
                create: (context) => StatsBloc()..add(TimespanUpdate(timespan: Timespan.week)),
              ),
              BlocProvider<ProfileBloc>(
                create: (context) => ProfileBloc(
                  userRepository: context.read(),
                  storageRepository: context.read(),
                  imageRepository: context.read(),
                  nonCurrentUserEmail: userEmail,
                )..add(InitializeProfile()),
              ),
              BlocProvider<GraduationBloc>(
                create: (_) => GraduationBloc(
                  graduationSystemRepository: context.read(),
                  userRepository: context.read(),
                  statsRepository: context.read(),
                  graduationUtils: GraduationUtil(),
                  userToGraduateEmail: userEmail,
                )..add(InitializeGraduation()),
              ),
            ],
            child: Scaffold(
              appBar: BaseAppBar(
                title: profile.i18n,
                showUserImage: false,
              ),
              floatingActionButton: GraduateFab(),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              body: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: <Widget>[
                      Profile(),
                      SizedBox(
                        height: 25,
                      ),
                      StatsHeader(
                        headerText: classes.i18n,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(child: UserStats())
                    ],
                  ),
                ),
              ),
            ),
          )
        : StatsPage(userEmail: userEmail);
  }
}

class UserStats extends StatelessWidget {
  const UserStats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserStatsBloc(
        statsRepository: context.read(),
        statsBloc: context.read(),
        userEmail: "test@test.com",
        selectedGymId: "test",
      ),
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: ClassProgressionIndicatorShrinkable(
              min: 120,
              max: 200,
            ),
          ),
          AttendedLessonCards()
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  static const String beltColor = '%s Belt';

  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Jhon Doe";
    var grade = Grade.purple;
    var size = 90.0;
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: UserImage(
                width: size,
                height: size,
              ),
            ),
            Positioned(
              top: size - 5,
              right: size / 2,
              child: Container(
                  width: size / 2 - 10,
                  height: size / 2 - 10,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor.withAlpha(100),
                    shape: BoxShape.circle,
                  ),
                  child: grade.icon),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 2.5,
        ),
        Text(
          beltColor.i18n.fill([grade.name.i18n]),
          style:
              Theme.of(context).textTheme.headline5.apply(color: grade.color, fontWeightDelta: 2),
        ),
      ],
    );
  }
}