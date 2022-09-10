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
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Date:'),
                          Text('03 August 2021 '),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Time:'),
                          Text('12:25PM'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                    Text('Appointment Type\nNeurosurgeon'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Joined')
                  ],
                ),
                SizedBox(
                  height: 5,
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
    return ListView.builder(
      itemBuilder: (context, index) {
        return historycard();
      },
    );
  }
}
