import 'package:flutter/material.dart';
import 'package:metaverse/screens/account.dart';
import 'package:metaverse/screens/activities.dart';
import 'package:metaverse/screens/homepage.dart';
import 'package:metaverse/screens/notification.dart';
import 'package:metaverse/screens/login.dart';
import 'package:metaverse/screens/signup.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => SignUp(),
        '/homepage': (context) => const HomePage(),
        '/notification': (context) => const Notifications(),
        '/account': (context) => const Account(),
        '/activities': (context) => const Activities(),
      },
      debugShowCheckedModeBanner: false,
      title: 'AchieveMatrix',
      home: const Center(child: Login()),
    );
  }
}
