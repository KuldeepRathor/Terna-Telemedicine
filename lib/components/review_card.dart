import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/star_rating.dart';

class User_Review extends StatefulWidget {
  const User_Review({Key? key}) : super(key: key);

  @override
  State<User_Review> createState() => _User_ReviewState();
}

class _User_ReviewState extends State<User_Review> {
  @override
  Widget reviewcard(String date, String detailreview, String review) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(review), Text(date)]),
              Ratings(),
              SizedBox(
                height: 10,
              ),
              Text(detailreview)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return reviewcard(
          '02:45PM, August 10',
          'Use filler text where it helps your design process, but\n use real content if you as long as it do n’t distract your\n design process.',
          'Good Service Experiences');
    });
  }
}
