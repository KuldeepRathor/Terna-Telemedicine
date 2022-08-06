// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/authorization/verify.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationIDReceived = "";

  bool otpCodeVisible = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.blue;
  }

  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
              );
            },
          ),
          centerTitle: true,
          title: Text(
            'Create Account',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Text(
                      'Create your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Already have an account? Login!',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Text(
                      'Full name',
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                        // fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: "Enter your name",
                        prefixIcon: Icon(Icons.insert_emoticon),
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text('Phone number'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: "Enter mobile number",
                        prefixIcon: Icon(Icons.mobile_friendly_rounded),
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              value = value!;
                            });
                          },
                        ),
                        Text(
                          'Accept terms and privacy policy',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: otpCodeVisible,
                      child: TextFormField(
                        controller: otpcontroller,
                        decoration: InputDecoration(
                          // fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: "Enter otp",
                          prefixIcon: Icon(Icons.password),
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: size.height * 0.05,
                    // ),
                    // Center(
                    //   child: InkWell(
                    //     onTap: () {
                    //       verifyNumber();
                    //       // Navigator.push(
                    //       //     context,
                    //       //     MaterialPageRoute(
                    //       //         builder: (context) => VerificationPage()));
                    //     },
                    //     child: Container(
                    //       width: size.width,
                    //       height: size.height * 0.06,
                    //       decoration: // ignore: prefer_const_constructors
                    //           BoxDecoration(
                    //         color: Color(0xff0065FF),
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Next',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (otpCodeVisible) {
                            verifyNumber();
                          } else {
                            verifyCode();
                          }
                        },
                        child: Text(otpCodeVisible ? "Login" : "Verify"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void verifyNumber() {
    auth.verifyPhoneNumber(
      phoneNumber: phonecontroller.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) => {
              print("You are logged in successfully"),
            });
      },
      verificationFailed: (FirebaseAuthException exception) {
        print(exception.message);
      },
      codeSent: (String verificationID, int? resendToken) {
        verificationIDReceived = verificationID;
        otpCodeVisible = true;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationID) {},
    );
  }

  void verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationIDReceived, smsCode: otpcontroller.text);
    await auth.signInWithCredential(credential).then((value) {
      print('You are logged in successfully');
    });
  }
}
