import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/notificationpage/notificatiotabbar.dart';

import '../components/notificationpage/notification.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:
      SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Notifications',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                  )
                ],
              ),
              tabbar(head: 'Todays'),
              NOTIF(),
              tabbar(head: 'Yesterday'),
              NOTIF()


            ],
          ),
        ),
      )
      ),
    );

  }
}

