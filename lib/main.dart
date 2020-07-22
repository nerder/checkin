import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:checkin/src/api/api.dart';
import 'package:checkin/src/blocs/auth/bloc.dart';
import 'package:checkin/src/blocs/dynamic_link/bloc.dart';
import 'package:checkin/src/blocs/theme/bloc.dart';
import 'package:checkin/src/blocs/version/bloc.dart';
import 'package:checkin/src/repositories/analytics_repository.dart';
import 'package:checkin/src/repositories/auth_repository.dart';
import 'package:checkin/src/repositories/image_repository.dart';
import 'package:checkin/src/repositories/lesson_repository.dart';
import 'package:checkin/src/repositories/stats_repository.dart';
import 'package:checkin/src/repositories/storage_repository.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:checkin/src/repositories/version_repository.dart';
import 'package:checkin/src/resources/analytics_provider.dart';
import 'package:checkin/src/resources/auth_provider.dart';
import 'package:checkin/src/resources/lesson_instances_provider.dart';
import 'package:checkin/src/resources/stats_provider.dart';
import 'package:checkin/src/routes/application.dart';
import 'package:checkin/src/routes/routes.dart';
import 'package:checkin/src/simple_bloc_delegate.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';
import 'src/blocs/dynamic_link/dynamic_link_event.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // init bloc delegate
  BlocSupervisor.delegate = SimpleBlocDelegate();

  // setup crashlytics
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  // init routes
  Routes.configureRoutes(Application.router);

  // init repositories
  final AuthRepository authRepository = AuthProvider();
  final UserRepository userRepository = UserRepository();
  final StorageRepository storageRepository = StorageRepository();
  final ImageRepository imageRepository = ImageRepository();
  final FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  runZonedGuarded<Future<void>>(() async {
    runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<LessonRepository>(
            create: (context) => LessonInstancesProvider(),
          ),
          RepositoryProvider<LessonApi>(
            create: (context) => LessonApi(),
          ),
          RepositoryProvider<AnalyticsRepository>(
            create: (context) => AnalyticsProvider(),
          ),
          RepositoryProvider<StatsRepository>(
            create: (context) => StatsProvider(),
          )
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<ThemeBloc>(
              create: (context) => ThemeBloc(),
            ),
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                authRepository: authRepository,
                analyticsRepository: RepositoryProvider.of<AnalyticsRepository>(context),
              )..add(AppStarted()),
            ),
            BlocProvider<DynamicLinkBloc>(
              create: (context) => DynamicLinkBloc(dynamicLinks: dynamicLinks)
                ..add(DeepLinkSetup()),
            ),
            BlocProvider<VersionBloc>(
                create: (context) =>
                    VersionBloc(versionRepository: VersionRepository())),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (BuildContext context, ThemeState state) => App(
                    themeData: state.themeData,
                    userRepository: userRepository,
                    authRepository: authRepository,
                    storageRepository: storageRepository,
                    imageRepository: imageRepository,
                  )),
        ),
      ),
    );
  }, (Object error, StackTrace stack) {
    Crashlytics.instance.recordError(error, stack);
  });
}
