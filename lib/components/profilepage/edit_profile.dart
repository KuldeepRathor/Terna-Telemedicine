// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

import '../../screens/Reports.dart';

class EditProfile extends StatefulWidget {
  // EditProfile(this.Imagepicker);//constructor
  // final void Function(File pickedImage) Imagepicker;//function receive the image

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;
  //File? result;
  // Future pickfiles() async{
  //   final files = await FilePicker.platform.pickFiles(allowMultiple: true);
  //   if (files == null) return;
  //   List<File> Files = files.paths.map((path) => File(path!)).toList();
  //   setState((){});
  // }

  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTem = File(image.path);
    setState(() => this.image = imageTem);
    //widget.Imagepicker(imageTem);//call the fuction
  }
  DateTime date = DateTime(2022, 9, 2);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Center(
                      child: Column(
                        children: [
                          image!=null
                              ? ClipOval(child: Image.file(image!,width:110,height: 110,fit: BoxFit.cover,))
                              :CircleAvatar(
                            radius: 55,
                            backgroundImage: ExactAssetImage(
                                'assets/images/placeholder.png'),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          InkWell(
                            onTap: () {showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return  Container(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      ElevatedButton.icon(
                                          onPressed: () => pickImage(ImageSource.camera),
                                          icon: Icon(Icons.camera_alt_outlined),
                                          label: Text('Click a photo'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blueAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                          )),
                                      ElevatedButton.icon(
                                          onPressed: () => pickImage(ImageSource.gallery),
                                          icon: Icon(Icons.file_copy_sharp),
                                          label: Text('Gallery'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blueAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                          )),
                                      //ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.remove_circle_outline), label: Text('Remove profile photo'))
                                    ],
                                  ),
                                );

                              },
                            );
                            },
                            child: Text(
                              'Upload Profile Picture',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextFormField(
                            style: const TextStyle(),
                            //obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Full Name',
                              hintText: "Enter your name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          TextFormField(
                            style: const TextStyle(),
                            //obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Email Address',
                              hintText: "Enter your email address",
                              hintStyle: const TextStyle(color: Colors.grey),
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          TextFormField(
                            style: const TextStyle(),
                            //obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Short Description',
                              hintText: "Enter Short Description",
                              hintStyle: const TextStyle(color: Colors.grey),
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Container(
                            height: size.height * 0.07,
                            width: size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${date.year}/${date.month}/${date.day}',
                                    style: TextStyle(),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      DateTime? newDate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100),
                                      );
                                      if (newDate == null) return;
                                      setState(() {
                                        date = newDate;
                                      });
                                    },
                                    child: Icon(
                                      Icons.calendar_today_rounded,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //   onPressed: () async {
                          //     final result =
                          //     await FilePicker.platform.pickFiles(allowMultiple:true);
                          //     if (result == null) return;
                          //     openFiles(result.files);
                          //   },
                          //   child: const Text("pick file"),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );

  }
}
