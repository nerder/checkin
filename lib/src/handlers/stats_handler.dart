import 'package:checkin/src/blocs/auth/auth_bloc.dart';
import 'package:checkin/src/blocs/user/bloc.dart';
import 'package:checkin/src/handlers/registerable_handler.dart';
import 'package:checkin/src/repositories/uploader_repository.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:checkin/src/ui/pages/stats_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatsHandler extends Handler implements RegisterableHandler {
  static final String userEmail = "userEmail";

  @override
  void registerRoute(Router router) {
    router.define(route, handler: this);
  }

  @override
  HandlerFunc get handlerFunc => (BuildContext context, Map<String, List<String>> params) {
    UserRepository userRepository = UserRepository();
    UploaderRepository uploaderRepository = UploaderRepository();

    return BlocProvider<UserBloc>(
        create: (BuildContext context) {
          return UserBloc(
            userRepository: userRepository,
            uploaderRepository: uploaderRepository,
            authBloc: BlocProvider.of<AuthBloc>(context),
          );
        },child: StatsPage(userEmail: params[userEmail][0],)
    );
  };

  String get route => "stats/:$userEmail";
}