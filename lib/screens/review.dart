import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/rating_tags.dart';
class Review_page extends StatelessWidget {
  const Review_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        centerTitle: true,
      ),
      body: rating_tags(),
    );
  }
}
