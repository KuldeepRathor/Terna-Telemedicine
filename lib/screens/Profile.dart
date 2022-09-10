import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/appointment/appbar.dart';
import 'package:terna_telemedicine/components/profilepage/appbar.dart';
import 'package:terna_telemedicine/components/profilepage/edit_profile.dart';
import 'package:terna_telemedicine/components/profilepage/tiles.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:terna_telemedicine/screens/appointment.dart';

import '../components/profilepage/name_surname.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F6F9),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ProfileAppbar(),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile())),
                child: NameSurname(),
              ),
              InkWell(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Appointment())),
                child: Tiles(
                  title: 'My Appointment',
                  icon: Icon(
                    Icons.add_comment,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: size.width,
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Notification',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FlutterSwitch(
                          value: status,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tiles(
                title: 'Settings',
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
              Tiles(
                title: 'Logout',
                icon: Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
