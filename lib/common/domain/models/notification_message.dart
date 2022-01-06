import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationMessage {
  final String title;
  final String body;
  final String dataMsg;

  const NotificationMessage({
    required this.title,
    required this.body,
    required this.dataMsg,
  });

  NotificationMessage.empty()
      : title = '',
        body = '',
        dataMsg = '';

  NotificationMessage.fakeMsg()
      : title = 'welcome',
        body = 'dear emem ',
        dataMsg = 'welcome to smart parcel';

  NotificationMessage copyWith({
    String? title,
    String? body,
    String? dataMsg,
  }) {
    return NotificationMessage(
      title: title ?? this.title,
      body: body ?? this.body,
      dataMsg: dataMsg ?? this.dataMsg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'body': body,
      'dataMsg': dataMsg,
    };
  }

  factory NotificationMessage.fromRemoteMessage(RemoteMessage remoteMessage) {
    return NotificationMessage(
      title: remoteMessage.notification?.title ?? '',
      body: remoteMessage.notification?.body ?? '',
      dataMsg: remoteMessage.data["message"] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "NotificationMessage(title: '$title', body: '$body', dataMsg: '$dataMsg')";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NotificationMessage &&
        title == other.title &&
        body == other.body &&
        dataMsg == other.dataMsg;
  }

  @override
  int get hashCode {
    return title.hashCode ^ body.hashCode ^ dataMsg.hashCode;
  }
}
