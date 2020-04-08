import 'package:checkin/src/blocs/registry/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/master.dart';
import 'package:checkin/src/ui/components/user_image.dart';
import 'package:flutter/material.dart';
import 'package:checkin/src/constants.dart' as constants;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../loading_indicator.dart';

class LessonInfos extends StatelessWidget {
  static const String and = 'and';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistryBloc, RegistryState>(
      builder: (BuildContext context, RegistryState state) {
        if (state is RegistryUninitialized || state is RegistryLoading) {
          return LoadingIndicator();
        }

        if (state is RegistryLoaded) {
          return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: UserImage(
                  userImage: state.currentLesson.masters.first.imageUrl,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${state.currentLesson.timeStart} - ${state.currentLesson.timeEnd}",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .apply(color: Colors.black87),
                  ),
                  Text(
                    "${constants.by.i18n} ${state.currentLesson.masters.first.name}",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  if (state.currentLesson.masters.length > 1)
                    Text("${and.i18n} ${_getOtherMasterNames(state.currentLesson.masters)}",
                        style: Theme.of(context).textTheme.headline3),
                ],
              )
            ],
          );
        }
        return ErrorWidget('Unknown State [$state] received in: registry_page');
      },
    );
  }

  String _getOtherMasterNames(List<Master> masters) =>
      masters.skip(1).map((master) => master.name).join(", ");
}