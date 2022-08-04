import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F6F9),
      body: Center(
        child: Container(
          child: Text('Appointment'),
        ),
      ),
    );
  }
}
