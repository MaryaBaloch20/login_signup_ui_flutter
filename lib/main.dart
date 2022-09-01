import 'package:flutter/material.dart';
import 'package:login_drawer_signup_ui_flutter/pages/homepage.dart';
import 'package:login_drawer_signup_ui_flutter/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(
        female: false,
        male: false,
      ),
    );
  }
}
