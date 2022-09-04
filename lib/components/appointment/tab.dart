import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/appointment/history.dart';
import 'package:terna_telemedicine/components/appointment/upcoming.dart';
class TAB extends StatefulWidget {
  const TAB({Key? key}) : super(key: key);

  @override
  State<TAB> createState() => _TABState();
}

class _TABState extends State<TAB> with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,15,0,8),
      child: Container(
        height: h,
        width: w,
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            width:w ,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
              child:TabBar(
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0), // Creates border
                      color: Colors.blue),
                  controller: _tabcontroller,
                  //isScrollable: true,
                  tabs: [Container(
                    width: w/2.5,
                    child: Tab(child: Text('Upcoming'),
                    ),
                  ),
                    Container( width:w/2.5,child: Tab(child: Text('History'),))]
              ),
            ),
          ),
            Expanded(
              child: TabBarView(controller: _tabcontroller, children: [
                UPCOMING(),
                HISTORY(),
              ]),
            )
          ],
        ),
      ),
    );

  }

}
