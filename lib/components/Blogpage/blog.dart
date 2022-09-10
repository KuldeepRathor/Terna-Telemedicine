import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BLOG extends StatefulWidget {
  const BLOG({Key? key}) : super(key: key);

  @override
  State<BLOG> createState() => _BLOGState();
}

class _BLOGState extends State<BLOG> {
  @override
  Widget blogg(String header ,String content){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,5, 8, 8),
      child: Card(
        child: Column(
          children: [
            Image.asset('assets/images/1.png',fit: BoxFit.cover,),
            ListTile(title: Text(header),
              subtitle: Text(content),)
          ],
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return blogg('Blogg Title',
              'blogg description');
        },
      ),
    );
  }
}
