// @dart=2.9

import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:flutter/material.dart';

class EmptyRegistry extends StatelessWidget {
  static const String emptyClass = 'Nobody in class yet';

  final bool isLoading;
  final bool isDisabled;

  const EmptyRegistry({
    Key key,
    this.isLoading = false,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('emptyClassCard'),
      alignment: Alignment(0, 0),
      child: isLoading
          ? LoadingIndicator()
          : Text(
              emptyClass.i18n,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .apply(color: isDisabled ? Theme.of(context).disabledColor : null),
            ),
    );
  }
}
