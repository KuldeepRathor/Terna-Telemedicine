import 'package:flutter/material.dart';
import '../screens/doctors.dart';
class Specialist extends StatelessWidget {
  const Specialist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Specialist',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'See All',
                style: TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        InkWell(
          onTap:() => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Doc())),
          child: SizedBox(
            height: 190,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: size.width * 0.30,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff2A9B80),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: size.width * 0.30,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff3B3ADB),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: size.width * 0.30,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffEC7A31),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: size.width * 0.30,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff7C43EA),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
