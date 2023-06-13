import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_sample/firebase%20Pushnotification/push_notification.dart';
import 'package:firebase_sample/firebase%20Authentication/sign_in.dart';
import 'package:flutter/material.dart';

Future<void> onBackgroundHandler(RemoteMessage message) async {
  print("BackGround called");
  print("${message.notification!.title}");
}
/// Welcome to coding
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(onBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PushNotification(),
    );
  }
}
