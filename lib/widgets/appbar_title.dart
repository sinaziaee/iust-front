import 'package:flutter/material.dart';

import '../constants.dart';

class AppbarTitle extends StatelessWidget {
  final Size size;

  AppbarTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/iust.png',
          height: size.height * 0.1,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Iran University of Science and Technology',
              style: kCustomTextStyle.copyWith(
                fontSize: getTitleWidth(),
              ),
            ),
            Text(
              'Introduction to Artificial Intelligence',
              style: kCustomTextStyle.copyWith(
                fontSize: getTitleWidth() * 2,
              ),
            ),
            Text(
              'Winter 2021(Fall 1400)',
              style: kCustomTextStyle.copyWith(
                fontSize: getTitleWidth(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  double getTitleWidth() {
    double width = size.width;
    if (width > 1000) {
      return 15;
    } else if (width > 720) {
      return 10;
    } else {
      return 10;
    }
  }
}
