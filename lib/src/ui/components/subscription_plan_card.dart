import 'package:checkin/src/api/http_client.dart';
import 'package:checkin/src/api/payment_api.dart';
import 'package:checkin/src/models/subscription_plan.dart';
import 'package:checkin/src/resources/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final SubscriptionPlan plan;
  final String customerEmail;
  final String basePaymentUrl;

  SubscriptionPlanCard({
    @required this.plan,
    @required this.customerEmail,
    @required this.basePaymentUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: Card(
          child: InkWell(
            onTap: () => _launchPayment(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        plan.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .apply(fontSizeFactor: 1.2, color: Colors.black87),
                      ),
                      Text(
                        plan.description,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "€${_formatPrice(plan.price)}",
                        style: Theme.of(context).textTheme.headline1.apply(
                            fontSizeFactor: 1.7,
                            color: Theme.of(context).accentColor),
                      ),
                      Text(
                        "/${_getIntervalShort(plan.interval)}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .apply(color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  String _getIntervalShort(String interval) =>
      interval == "Monthly" ? "mo" : "yr";

  String _formatPrice(int price) {
    final f = NumberFormat("###.00");
    final s = f.format(price / 100);
    return s.endsWith('00') ? s.substring(0, s.length - 3) : s;
  }

  void _launchPayment(BuildContext context) async {
    await PaymentApi(
        httpClient:
        HttpClient(authRepository: AuthProvider()))
        .createSubscription(gymId: "test", customerId: "cus_HZcWU3P5qbD5MB", priceId: "price_1H0TPrLAVB3C1lDI0uwSN3X5");
    // todo sepa should also start loading indicator
    // todo sepa handle error
    Navigator.of(context)
        .pushNamed("payment/success");
//    var url = Uri.encodeFull(
//        "$basePaymentUrl&customerEmail=$customerEmail&plan=${plan.code}&nocache=${DateTime.now()}");
//
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
  }
}
