import 'package:flutter/material.dart';
import '../components/Blogpage/blog.dart';
class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Blog',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              )
            ],
          ),
          Container(
            child: BLOG(),
          )
        ],
      )
      ),
    );

  }
}

