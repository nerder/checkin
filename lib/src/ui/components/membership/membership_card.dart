import 'package:checkin/src/blocs/membership/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../loading_indicator.dart';
import 'active_membership.dart';
import 'inactive_membership.dart';

class MembershipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 280),
        child: Card(
            color: Colors.white,
            child: BlocBuilder<MembershipBloc, MembershipState>(
                builder: (BuildContext context, MembershipState state) {

              if (state is MembershipLoading || state is MembershipInitial) {
                return LoadingIndicator();
              }

              if (state is MembershipInactive) {
                return InactiveMembershipView(email: state.email);
              }

              if (state is MembershipActive) {
                return ActiveMembershipView(membership: state.membership,);
              }

              return ErrorWidget("unkown state for membership_card");
            })
        )
    );
  }
}
