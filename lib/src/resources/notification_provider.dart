import 'package:checkin/src/logging/logger.dart';
import 'package:checkin/src/models/notification.dart';
import 'package:checkin/src/repositories/notification_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationProvider implements NotificationRepository {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> requestPermission() async {
    var notificationSettings = await _firebaseMessaging.requestPermission();
    Logger.log.i("Permission requested. Status: ${notificationSettings.authorizationStatus}");
  }

  @override
  Future<String> getToken() => _firebaseMessaging.getToken();

  Future<Notification> getInitialMessage() async =>
      _firebaseMessaging.getInitialMessage().then((remoteMessage) {
        if (remoteMessage != null) {
          Logger.log.d("$remoteMessage");
          return _toRoutableNotification(remoteMessage);
        }
        return null;
      });

  Stream<Notification> onMessageOpenedApp() =>
      FirebaseMessaging.onMessageOpenedApp.map(_toRoutableNotification);

  @override
  Stream<Notification> onMessage() => FirebaseMessaging.onMessage.map(_toBasicNotification);

  Notification _toBasicNotification(RemoteMessage remoteMessage) {
    return Notification.basicNotification(
      title: remoteMessage.notification.title,
      body: remoteMessage.notification.body,
    );
  }

  Notification _toRoutableNotification(RemoteMessage remoteMessage) =>
      Notification.routableNotification(
        title: remoteMessage.notification.title,
        path: remoteMessage.data["path"],
      );
}
