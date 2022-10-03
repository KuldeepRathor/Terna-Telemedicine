import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _meetlink = Uri.parse('https://google.com');


class UPCOMING extends StatefulWidget {
  @override
  State<UPCOMING> createState() => _UPCOMINGState();
}

class _UPCOMINGState extends State<UPCOMING> {
  Widget upcomincard() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text('Date:'),
                    Text('03 August 2021 '),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text('Time:'),
                    Text('12:25PM'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text('Doctor:'),
                    Text('Dr.Patsy J.Padila'),
                  ],
                ),
              ],
            ),
          ),
          // Divider(
          //   color: Colors.grey[300],
          //   thickness: 2,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text('Appointment Type'),
                  Text('Neurosurgeon'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _launchUrl;
                  
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 30),
                  primary: Colors.greenAccent,
                  // backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                ),
                child: const Text('JOIN'),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return upcomincard();
      },
    );
  }
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_meetlink)) {
    throw 'Could not launch $_meetlink';
  }
}