import 'package:flutter/material.dart';

import 'edit_profile.dart';
//import 'package:terna_telemedicine/components/profilepage/edit_profile.dart';

class NameSurname extends StatelessWidget {
  const NameSurname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundImage:
                    ExactAssetImage('assets/images/placeholder.png'),
                radius: 40,
                // backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Name Surname',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '27 year old',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    child: Text(
                      'I am Kuldeep Rathor I am full \ntime Physician working in \nTerna Hospital You can \nconsult me here. ',
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 1,
              ),
              InkWell(
                onTap: () {
                  EditProfile();
                },
                child: Icon(Icons.edit,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
