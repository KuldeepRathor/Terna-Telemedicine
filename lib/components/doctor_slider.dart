import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DoctorSlider extends StatelessWidget {
  const DoctorSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10),
        ),
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            autoPlay: true,
          ),
          items: [],
        ),
      ),
    );
  }
}
