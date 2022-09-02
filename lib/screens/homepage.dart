import 'package:flutter/material.dart';
import 'package:terna_telemedicine/components/homepage/available_doctors.dart';
import '../components/homepage/custom_appbar.dart';
import '../components/homepage/doctor_slider.dart';
import '../components/homepage/searchbar.dart';
import '../components/homepage/specialist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F6F9),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(
                height: 10,
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
