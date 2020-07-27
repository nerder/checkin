import 'package:checkin/src/blocs/subscription_plans/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/subscription_plan.dart';
import 'package:checkin/src/ui/components/plans/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../loading_indicator.dart';

class PlansList extends StatelessWidget {
  const PlansList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionPlansBloc, SubscriptionPlansState>(
      builder: (BuildContext context, SubscriptionPlansState state) {
        return state.when(
            subscriptionPlansInitial: () => LoadingIndicator(),
            subscriptionPlansLoaded: (List<SubscriptionPlan> subscriptionPlans,
                    String basePaymentUrl, String gymId) =>
                Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height,
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    children: [
                      ...subscriptionPlans
                          .map(
                            (plan) => GenericCard(plan: plan),
                          )
                          .toList(),
                    ],
                  ),
                ),
            subscriptionPlansEmpty: () => Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    // todo planWithPrices: fix i18n
                    Center(
                      child: Text("noPlansYet".i18n,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline3),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ));
      },
    );
  }
}
