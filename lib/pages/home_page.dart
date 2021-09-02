import 'package:flutter/material.dart';
import 'package:iust/constants.dart';

class HomePage extends StatelessWidget {
  final Size size;

  HomePage({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course Description',
              style: kBlackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This course introduces students to the basic knowledge representation, problem solving,'
              ' and learning methods of artificial intelligence. you will learn the foundational'
              ' principles that drive AI applications and practice implementing some of these'
              ' systems.',
              style: kBlackTextStyle.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
