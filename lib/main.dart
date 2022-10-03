// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:terna_telemedicine/screens/onboarding_screen.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/appointment/session_details.dart';
import 'google_calendar/calendar_client.dart';
import 'nav_bar/bottomnavbar.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // var _clientID = new ClientId(Secret.getId(), "");
  // const _scopes = const [cal.CalendarApi.CalendarScope];
  // await clientViaUserConsent(_clientID, _scopes, prompt).then((AuthClient client) async {
  //   CalendarClient.calendar = cal.CalendarApi(client);
  // });
  
  runApp(MyApp());
}

// void prompt(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


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
      home:
      // SessionDetails(),
      StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snaphsot) {
            if (snaphsot.hasData) {
              print("the user is ${snaphsot.data}");
              return BottomNavBar();
            } else {
              return OnBoardingPage();
            }
          }),
    );
  }
}
