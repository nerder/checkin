import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:checkin/src/blocs/notification/notification_event.dart';
import 'package:checkin/src/blocs/notification/notification_state.dart';
import 'package:checkin/src/repositories/notification_repository.dart';
import 'package:meta/meta.dart';


class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository notificationRepository;

  NotificationBloc({@required this.notificationRepository}) : super(NotificationState.notificationInitial());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    if(event is InitializeNotifications) {
      await notificationRepository.requestPermission();
    }
  }
}