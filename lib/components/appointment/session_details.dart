import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionDetails extends StatefulWidget {
  const SessionDetails({Key? key}) : super(key: key);

  @override
  State<SessionDetails> createState() => _SessionDetailsState();
}

class _SessionDetailsState extends State<SessionDetails> {
  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F6F9),
        appBar: AppBar(
          title: Text('Session Details',
          style: TextStyle(color: Colors.black,),),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      ExactAssetImage('assets/images/placeholder.png'),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Patient Name',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text('Patsy J. Padilla',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),

                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text('13/9/2022',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Session start time',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text('4:30 pm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Session end time',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text('4:45 pm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Something',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ],
                ),
                SizedBox(height: 50,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter feedback',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 8,),

                    Container(
                      width: size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Enter feedback about patient',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 50,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upload prescription',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                    SizedBox(height: 8,),
                    Container(
                      width: size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Add image +',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),


              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },shape: BeveledRectangleBorder()),
      ),
    );
  }
}
