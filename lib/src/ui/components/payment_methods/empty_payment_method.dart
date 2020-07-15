import 'package:checkin/src/blocs/gym/bloc.dart';
import 'package:checkin/src/blocs/payment_methods/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/gym.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../loading_indicator.dart';

class EmptyPaymentMethod extends StatelessWidget {
  static const String connectBankAccount = 'Connect Bank Account';
  static const String noRegisteredPaymentMethod = 'There are no registered payment methods';

  final String customerEmail;

  const EmptyPaymentMethod({Key key, @required this.customerEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          noRegisteredPaymentMethod.i18n,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3.apply(fontSizeDelta: 1),
        ),
        BlocBuilder<GymBloc, GymState>(
            builder: (BuildContext context, GymState state) => state.when(
                initialGymState: () => LoadingIndicator(),
                gymLoaded: (Gym gym) => RaisedButton(
                      child: Text(
                        connectBankAccount.i18n,
                        style: Theme.of(context).textTheme.button,
                      ),
                      onPressed: () {
                        BlocProvider.of<PaymentMethodsBloc>(context).add(
                            RegisterBankAccount(
                                gym: gym, billingEmail: customerEmail));
                      },
                    )))
      ],
    );
  }
}
