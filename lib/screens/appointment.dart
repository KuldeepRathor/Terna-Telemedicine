import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F6F9),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.arrow_back_ios_outlined),
          // ),
          // iconTheme: IconThemeData(),
          title: const Text(
            'Appointments',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // AppointmentAppbar(),
            ],
          ),
        ),
      ),
    );
  }
}
