// @dart=2.9

import 'package:checkin/src/blocs/membership/bloc.dart';
import 'package:checkin/src/ui/components/empty_widget.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'active_membership.dart';
import 'inactive_membership.dart';

class MembershipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: BoxConstraints(minHeight: 150),
        child: BlocConsumer<MembershipBloc, MembershipState>(
            listener: (BuildContext context, MembershipState state) {
              if (state is MembershipError) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(
                        state.errorMessage,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      backgroundColor: Theme.of(context).colorScheme.secondary.withAlpha(150),
                      duration: Duration(seconds: 10),
                    ),
                  );
              }
            },
            buildWhen: (MembershipState previous, MembershipState current) =>
                !(current is MembershipError),
            builder: (BuildContext context, MembershipState state) {
              return state.when(
                initialMembershipState: () => LoadingIndicator(),
                membershipActive: (membership) => ActiveMembershipView(
                  membership: membership,
                ),
                membershipInactive: (customerEmail, customerId) => InactiveMembershipView(
                  email: customerEmail,
                  customerId: customerId,
                ),
                membershipLoading: () => LoadingIndicator(),
                membershipError: (error) => EmptyWidget(),
              );
            }),
      ),
    );
  }
}
