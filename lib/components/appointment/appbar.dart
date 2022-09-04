import 'package:flutter/material.dart';
import './tab.dart';
class AppointmentAppbar extends StatelessWidget {
  const AppointmentAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Appointments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
          TAB(),

        ],
      ),
    );
  }
}
