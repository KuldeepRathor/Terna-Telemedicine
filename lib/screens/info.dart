import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:terna_telemedicine/components/review_card.dart';
import 'package:terna_telemedicine/screens/review.dart';
class INFO extends StatefulWidget {
  const INFO({Key? key}) : super(key: key);

  @override
  State<INFO> createState() => _INFOState();
}

class _INFOState extends State<INFO> {
  @override
  Widget build(BuildContext context) {
    double rating =0;
    return Scaffold(

        body: CustomScrollView(

          slivers: [
            SliverAppBar(
              backgroundColor:Colors.white ,
              leading: Icon(Icons.arrow_back_ios,color: Colors.blue,),
              title: Text('Dr. Jamie C. Davies',style: TextStyle(
                color: Colors.black
              ),),
              centerTitle: true,
              pinned: true,
              expandedHeight:300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/images/doctor.png",fit: BoxFit.cover,width:double.maxFinite,),
              ),
            ),
            SliverFillRemaining(
              child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Jamie C. Davies'),
                    Text('Medicine & Heart Specialist'),
                    RatingBar.builder(
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text('About Jamie'),
                    Text('Using real content during design can distract designers and design review teams alike away from the design, and insisting on always using publication-ready content can be a real drag on the design process.'),

                    Row(

                      children: [
                        Container(child: Text('hi'),),
                        Container(child: Text('hi'),),Container(child: Text('hi'),),

                      //   ListTile(title: Text('patients')
                      //     ,subtitle: Text('1.08k'),),
                      // //   ListTile(title: Text('patients')
                      // //     ,subtitle: Text('1.08k'),),
                      // //   ListTile(title: Text('patients')
                      // //     ,subtitle: Text('1.08k'),),
                       ],

                    ),
                    Text('Reviews'),
                    Expanded(
                      child: ListView.builder(scrollDirection: Axis.horizontal, itemBuilder: (context,index) {
                        return InkWell(
                          child: Card(
                            child: Column(

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Good  Service Experience '),
                                    Text('Date'),
                                  ],

                                ),
                                Text('Star'),
                                Text('Use filler text where it helps your design process, but use real\n content if you as long as it do n’t distract your design\n process.')

                              ],
                            ),

                          ),
                          onTap:()=>
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Review_page())),
                        );
                      }
                      ),
                    )



                  ],
                ),
              ) ,
            ),
          ],
        ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ElevatedButton(onPressed: () {  }, child: Text(
          'Book an appointment',style: TextStyle(
          fontSize: 20
        ),
        ),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(400, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
            ),
          ),
      ),
    );
  }
}
