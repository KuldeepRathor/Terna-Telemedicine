import 'package:flutter/material.dart';
import 'package:terna_telemedicine/nav_bar/bottomnavbar.dart';
import 'package:terna_telemedicine/screens/homepage.dart';
import 'package:terna_telemedicine/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terna Telemedicine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingPage(),
    );
  }
}
