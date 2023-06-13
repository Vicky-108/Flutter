import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class PushNotification extends StatefulWidget {
  const PushNotification({Key? key}) : super(key: key);

  @override
  State<PushNotification> createState() => _PushNotificationState();
}

class _PushNotificationState extends State<PushNotification> {
  String msg = "Waiting for message";

  @override
  void initState() {
    /// Message from terminated
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      print("Message from terminated");
      if (event != null) {
        setState(() {
          msg = "${event.notification!.title}";
        });
      }
    });

    ///Message from foreground
    FirebaseMessaging.onMessage.listen((event) {
      print("Message from foreground");
      setState(() {
        msg = "${event.notification!.title}";
      });
    });

    /// Message from background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      print("Message from background");
      setState(() {
        msg = "${event.notification!.title}";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Push Notification"),
      ),
      body: Center(
        child: Text(msg),
      ),
    );
  }
}
