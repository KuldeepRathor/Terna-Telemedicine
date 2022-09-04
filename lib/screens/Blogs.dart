import 'package:flutter/material.dart';
import '../components/blog.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Blogs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              BLOG(),
            ],
          ),
        ),
      ),
    );
  }
}
