import 'package:flutter/material.dart';
class HISTORY extends StatefulWidget {
  const HISTORY({Key? key}) : super(key: key);

  @override
  State<HISTORY> createState() => _HISTORYState();
}

class _HISTORYState extends State<HISTORY> {
  @override
  Widget historycard() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
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
                    Text('Joined')
                  ],
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return historycard();
        },
      ),
    );
  }
}
