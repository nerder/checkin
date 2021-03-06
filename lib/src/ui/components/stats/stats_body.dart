// @dart=2.9

import 'package:checkin/src/blocs/profile/bloc.dart';
import 'package:checkin/src/models/master.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:checkin/src/ui/pages/lessons_stats_page.dart';
import 'package:checkin/src/ui/pages/user_stats_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<ProfileBloc, ProfileState>(
        builder: (BuildContext context, ProfileState state) => state.map(
          initialProfileState: (InitialProfileState state) => LoadingIndicator(),
          profileLoaded: (ProfileLoaded state) => state.profileUser.isOwner && state.isCurrentUser
              ? LessonsStatsPage(master: Master.fromUser(state.profileUser))
              : UserStatsPage(user: state.profileUser),
        ),
      );
}
