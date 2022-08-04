import 'package:flutter/material.dart';
import '../components/review_card.dart';

class rating_tags extends StatefulWidget {
  const rating_tags({Key? key}) : super(key: key);

  @override
  State<rating_tags> createState() => _rating_tagsState();
}

class _rating_tagsState extends State<rating_tags>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  child: Text('05 Stars'),
                ),
                Tab(
                  child: Text('04 Stars'),
                ),
                Tab(
                  child: Text('03 Stars'),
                ),
                Tab(
                  child: Text('02 Stars'),
                ),
                Tab(
                  child: Text('01 Stars'),
                ),
              ]),
          Expanded(
            child: TabBarView(controller: _tabcontroller, children: [
              User_Review(),
              User_Review(),
              User_Review(),
              User_Review(),
              User_Review(),
            ]),
          )
        ],
      ),
    );
  }
}
