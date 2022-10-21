import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/main.dart';
import 'package:timezone/timezone.dart';

class LocalNotification {
  void showNotification() async {
    // Android notification details.
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'Notification_Lifetrons',
      'Lifetrons Notification',
      priority: Priority.max,
      importance: Importance.max,
      actions: [
        AndroidNotificationAction(
          'text_id_1',
          "Snooz",
        ),
        AndroidNotificationAction(
          'text_id_1',
          "Cancle",
        ),
      ],
    );

    // Ios notification details.
    DarwinNotificationDetails iosNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    DateTime scheduleDate = DateTime.now().add(
      const Duration(seconds: 2),
    );

    // Combine both android and ios.
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
    );

    await notificationsPlugin.zonedSchedule(
      0,
      'Lifetrons Notification',
      "Welcome to Lifetrons.....",
      TZDateTime.from(scheduleDate, local),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.wallClockTime,
      androidAllowWhileIdle: true,
    );
  }
}


//https://www.fluttercampus.com/guide/273/add-action-button-on-local-notification-flutter/