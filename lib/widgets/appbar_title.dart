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
              style: kCustomTextStyle.copyWith(),
            ),
            Text(
              'Introduction to Artificial Intelligence',
              style: kCustomTextStyle.copyWith(
                fontSize: 30,
              ),
            ),
            Text(
              'Winter 2021(Fall 1400)',
              style: kCustomTextStyle.copyWith(),
            ),
          ],
        ),
      ],
    );
  }
}
