import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:terna_telemedicine/screens/Blogs.dart';
import 'package:terna_telemedicine/screens/Profile.dart';
import 'package:terna_telemedicine/screens/appointment.dart';
import 'package:terna_telemedicine/screens/homepage.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _page = 0;
  // final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int index = 0;

  final screens = [
    HomePage(),
    Appointment(),
    Blogs(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home_filled, size: 30),
      Icon(Icons.add_comment_outlined, size: 30),
      Icon(Icons.web_outlined, size: 30),
      Icon(Icons.perm_identity_rounded, size: 30),
      // Icon(Icons.perm_identity, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        index: index,
        height: 60.0,
        items: items,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[index],
    );
  }
}
