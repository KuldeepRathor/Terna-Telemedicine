import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/available_doctors.dart';
import 'package:terna_telemedicine/components/searchbar.dart';

import '../components/custom_appbar.dart';
import '../components/doctor_slider.dart';
import '../components/specialist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F6F9),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(
                height: 50,
              ),
              CustomAppbar(),
              SearchBar(),
              DoctorSlider(),
              Specialist(),
              AvailableDoctors()
            ],
          ),
        ),
      ),
    );
  }
}
