import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:iust/pages/base_page.dart';
import 'package:iust/widgets/lectures_item.dart';

import '../constants.dart';

class LecturePage extends StatelessWidget {
  final Size size;

  LecturePage({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return BasePage(
      size: size,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Lectures',
              style: kBlackTextStyle.copyWith(
                fontSize: 30,
                color: kBackgroundColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You can download the lectures here (in PDF format). I will try to upload lectures prior to their corresponding classes.',
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
                return LecturesItem(
                  size: size,
                  isLast: index == 5-1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
