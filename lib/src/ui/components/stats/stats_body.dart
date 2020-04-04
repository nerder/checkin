import 'package:checkin/src/blocs/profile/bloc.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:checkin/src/ui/pages/lessons_stats_page.dart';
import 'package:checkin/src/ui/pages/user_stats_page.dart';
import 'package:checkin/src/util/debug_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatsBody extends StatelessWidget {
  final String userEmail;

  StatsBody({this.userEmail});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (BuildContext context, ProfileState state) {
        if (state is ProfileSuccess) {
          if (state.profileUser.isOwner && isInDebugMode) {
            return LessonsStatsPage();
          }

          return UserStatsPage(userEmail: userEmail);
        }

        if (state is ProfileLoading) {
          return LoadingIndicator();
        }

        return ErrorWidget('Unknow state in StatsPage $state');
      },
    );
  }
}