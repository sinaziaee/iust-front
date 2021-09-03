import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:iust/widgets/assignment_item.dart';

import '../constants.dart';
import 'base_page.dart';

class AssignmentPage extends StatelessWidget {
  final Size size;

  AssignmentPage({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return BasePage(
      size: size,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Assignments',
              style: kBlackTextStyle.copyWith(
                fontSize: 30,
                color: kBackgroundColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You can download the assignments here (in PDF format). Also check out assignment’s pages for any additional info.',
              style: kBlackTextStyle.copyWith(),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return AssignmentItem(isLast: index != 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
