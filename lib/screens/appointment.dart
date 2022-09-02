import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/appointment/appbar.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F6F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppointmentAppbar(),
            ],
          ),
        ),
      ),
    );
  }
}
