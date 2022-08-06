// ignore_for_file: prefer_const_constructors

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                'Enter verification code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'we texted you a code to verify your phone number.',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Otpform(),
                    Otpform(),
                    Otpform(),
                    Otpform(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff0065FF),
              fixedSize: const Size(400, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Otpform extends StatelessWidget {
  const Otpform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 68,
      width: 64,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSaved: (pin1) {},
        decoration: InputDecoration(
            // hintText: "0",
            // hintStyle: TextStyle(color: Colors.grey),
            ),
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
