// @dart=2.9

import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/ui/components/cancel_button.dart';
import 'package:flutter/material.dart';

class RemoveStudentDialog extends StatelessWidget {
  const RemoveStudentDialog({
    Key key,
  }) : super(key: key);

  static const String removeStudentDisclaimer =
      'Are you sure you wish to remove this student from class?';
  static const String keepStudentInClass = 'Keep';
  static const String remove = 'Remove';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      content: Text(removeStudentDisclaimer.i18n,
          textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline3),
      actionsPadding: EdgeInsets.symmetric(horizontal: 10),
      actions: <Widget>[
        ElevatedButton(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              keepStudentInClass.i18n,
              style: Theme.of(context).textTheme.button,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        CancelButton(
          key: Key("removeStudentButton"),
          text: remove.i18n,
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        )
      ],
    );
  }
}
