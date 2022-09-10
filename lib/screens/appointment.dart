import 'package:flutter/material.dart';
import '../components/appointment/appbar.dart';
import '../components/appointment/tab.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F6F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppointmentAppbar(),
              TAB(),
            ],
          ),
        ),
      ),
    );
  }
}
