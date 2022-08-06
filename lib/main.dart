import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:terna_telemedicine/screens/onboarding_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
