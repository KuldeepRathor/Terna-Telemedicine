import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NOTIF extends StatefulWidget {
  const NOTIF({Key? key}) : super(key: key);

  @override
  State<NOTIF> createState() => _NOTIFState();
}

class _NOTIFState extends State<NOTIF> {
  @override
  Widget todaysreminder(String header ,String content, String date) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,5, 8, 8),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(header),
                ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(content),
                  ),
                  trailing:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(date),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(

        itemCount: 3,//physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return todaysreminder('Remind for Serial',
              'Use filler text where it helps your design process, but use real content if you as long as it do n’t distract your design process.','02:45PM');
        },
      ),
    );
  }
}


