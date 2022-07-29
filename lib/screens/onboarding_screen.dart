import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  var list = [
    'Gain total control \n  of your money',
    'Know where your \n money goes',
    'Planning ahead \n your budget'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Onboardcontent(
                      description: '',
                      title: '',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Onboardcontent extends StatelessWidget {
  const Onboardcontent({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
