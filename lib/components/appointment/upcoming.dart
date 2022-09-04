import 'package:flutter/material.dart';

class UPCOMING extends StatefulWidget {
  const UPCOMING({Key? key}) : super(key: key);

  @override
  State<UPCOMING> createState() => _UPCOMINGState();
}
class _UPCOMINGState extends State<UPCOMING> {
  @override
  Widget upcomincard() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Date\n03 August 2021 '),
                Text('Time\n12:25PM'),
                Text('Doctor\nDr.Patsy J.Padila'),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Appointment Type\nNeurosurgeon'),
              ElevatedButton(
                onPressed: () {},
                child: Text('JOIN'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(130,30),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return upcomincard();
        },
      ),
    );
  }
}
