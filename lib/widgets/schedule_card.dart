import 'package:flutter/material.dart';

import '../constants.dart';

class ScheduleCard extends StatelessWidget {
  final String type;
  final String date;
  final String weekDay;
  final String body;

  ScheduleCard({
    required this.type,
    required this.body,
    required this.date,
    required this.weekDay,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Date',
                  style: kBlackTextStyle.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  date,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  weekDay,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Description',
                  style: kBlackTextStyle.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  body,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
