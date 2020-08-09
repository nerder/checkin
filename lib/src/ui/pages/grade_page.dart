import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/ui/components/grade_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GradePage extends StatelessWidget {
  static const String selectYourBelt = 'Select your belt';

  GradePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  selectYourBelt.i18n,
                  style: Theme.of(context).textTheme.headline2.apply(
                        fontSizeDelta: 3,
                        color: Theme.of(context)
                            .textTheme
                            .headline2
                            .color
                            .withAlpha(100),
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: GradeButtons()),
            ],
          ),
        ),
      ),
    ));
  }
}
