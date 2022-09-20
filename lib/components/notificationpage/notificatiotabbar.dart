import 'package:flutter/material.dart';
class tabbar extends StatelessWidget {
  final String head;
  tabbar({required this.head
  });

  @override
  Widget build(BuildContext context) {
    return  Align(alignment:Alignment.topLeft,child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(head,style: TextStyle(
          fontSize: 20 ,fontWeight: FontWeight.bold
      ),),
    ));
  }
}

