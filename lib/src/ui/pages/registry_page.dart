// @dart=2.9

import 'package:checkin/src/blocs/registry/bloc.dart';
import 'package:checkin/src/blocs/registry/registry_bloc.dart';
import 'package:checkin/src/ui/components/base_app_bar.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:checkin/src/ui/components/registry/lesson_actions/lesson_actions.dart';
import 'package:checkin/src/ui/components/registry/lesson_infos.dart';
import 'package:checkin/src/ui/components/registry/registry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class RegistryPage extends StatelessWidget {
  final String lessonId;
  final String date;

  static const String registry = 'Registry';

  RegistryPage({
    Key key,
    @required this.lessonId,
    @required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: DateFormat('d MMMM').format(DateTime.parse(this.date)),
      ),
      body: MultiBlocProvider(
          providers: [
            BlocProvider<RegistryBloc>(
              create: (context) => RegistryBloc(
                lessonId: lessonId,
                lessonDate: date,
                lessonApi: context.read(),
                lessonRepository: context.read(),
                imageRepository: context.read(),
                storageRepository: context.read(),
                userRepository: context.read(),
                dateUtil: context.read(),
              )..add(InitializeRegistry()),
            ),
          ],
          // todo this logic can be used when we extract a LoadingDialogBloc https://trello.com/c/YqSqs0tl
          child: BlocListener<RegistryBloc, RegistryState>(
            listener: (BuildContext context, RegistryState state) {
              if (state is RegistryLoading) {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    routeSettings: RouteSettings(name: "dialog"),
                    builder: (BuildContext context) => LoadingIndicator());
              }
              if (state is RegistryLoaded) {
                Navigator.of(context).popUntil((route) => route.settings.name != "dialog");
              }
            },
            child: SafeArea(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Expanded(child: LessonInfos()), LessonActions()],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Registry(),
                    )),
                  ]),
                ),
              ),
            ),
          )),
    );
  }
}
