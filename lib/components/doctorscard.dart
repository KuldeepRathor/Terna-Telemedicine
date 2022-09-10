import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/info.dart';
import '../components/star_rating.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  Widget createcard(String Name, String specialization, String time) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    Name,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Text(
                    specialization,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Ratings(),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar_badge_plus,
                        color: Colors.green,
                      ),
                      Text(time)
                    ],
                  )
                ]),
                CircleAvatar(radius: 35),
              ],
            ),
          ),
        ),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => INFO())),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return createcard('Dr. Jamie C. Davies',
            'Medicine & Heart specialist', '11:45AM-4:00PM');
      },
    );
  }
}
