import 'package:flutter/material.dart';

import '../components/doctorscard.dart';

class Tag extends StatefulWidget {
  const Tag({Key? key}) : super(key: key);

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

  // Icon(
  // Icons.arrow_back_ios,
  // color: Colors.blue,
  //
  // ),
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        centerTitle: true,
        title: Text(
          'Doctors',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        width: w,
        height: h,
        child: Column(
          children: [
            TabBar(
                labelColor: Colors.black,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.blue),
                controller: _tabcontroller,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text('Cardiologist'),
                  ),
                  Tab(
                    child: Text('Psychiatrist'),
                  ),
                  Tab(
                    child: Text('Therapist'),
                  )
                ]),
            Expanded(
              child: TabBarView(controller: _tabcontroller, children: [
                DoctorCard(),
                DoctorCard(),
                DoctorCard(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
