import 'package:flutter/material.dart';
import 'package:checkin/src/localization/localization.dart';

class PaymentSuccessPage extends StatelessWidget {
  static const String paymentSuccessful = 'Payment Successful';
  static const String disclaimerSubscription30Min = 'It can take up to 30 minutes for your order to appear in your account';
  static const String goToAccount = 'Go to account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 150,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    paymentSuccessful.i18n,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    disclaimerSubscription30Min.i18n,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .apply(color: Colors.white60),
                  ),
                ],
              ),
              RaisedButton(onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil("account", ModalRoute.withName('/'),);
              }, child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(goToAccount.i18n, style: Theme.of(context).textTheme.button.apply(fontSizeDelta: 4),),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
