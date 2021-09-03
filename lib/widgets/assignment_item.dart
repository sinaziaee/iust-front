import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class AssignmentItem extends StatelessWidget {
  final bool isLast;

  AssignmentItem({
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: (){

              },
              child: Text(
                'Assignment #1 - Search Algorithms',
                style: kBlackTextStyle.copyWith(
                  color: kBackgroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.filePdf,
                color: kBackgroundColor,
                size: 20,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.fileArchive,
                color: kBackgroundColor,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Visibility(
          visible: isLast,
          child: Divider(),
        ),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
