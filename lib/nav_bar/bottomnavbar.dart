// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:terna_telemedicine/components/profilepage/edit_profile.dart';
import 'package:terna_telemedicine/screens/Blogs.dart';
import 'package:terna_telemedicine/screens/appointment.dart';
import 'package:terna_telemedicine/screens/homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Appointment(),
    Blogs(),
    //EditProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 20,
      //   title: const Text('GoogleNavBar'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap:8,
              activeColor: Color(0xff2D4EF5),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.bookmark,
                  text: 'Appointments',
                ),
                GButton(
                  icon: LineIcons.blog,
                  text: 'Blogs',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
// void main() => runApp(
//       MaterialApp(
//         home: BottomNavBar(),
//       ),
//     );
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   // int _page = 0;
//   // final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   int index = 0;
//
//   final screens = [
//     HomePage(),
//     Appointment(),
//     Blogs(),
//     EditProfile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final items = <Widget>[
//       Icon(
//         Icons.home_filled,
//         size: 30,
//         color: Colors.black,
//       ),
//       Icon(Icons.add_comment_outlined, size: 30),
//       Icon(Icons.web_outlined, size: 30),
//       Icon(Icons.perm_identity_rounded, size: 30),
//       // Icon(Icons.perm_identity, size: 30),
//     ];
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: CurvedNavigationBar(
//         // key: _bottomNavigationKey,
//         index: index,
//         height: 60.0,
//         items: items,
//         color: Colors.white,
//         buttonBackgroundColor: Colors.blue,
//         backgroundColor: Colors.lightBlueAccent,
//         animationCurve: Curves.easeInOut,
//         animationDuration: const Duration(milliseconds: 600),
//         onTap: (index) {
//           setState(() {
//             this.index = index;
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//       body: screens[index],
//     );
//   }
// }