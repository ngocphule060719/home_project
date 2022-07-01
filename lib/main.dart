import 'package:flutter/material.dart';
import 'package:home_project/screens/user_registration/user_registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserRegistrationScreen(),
    );
  }
}

