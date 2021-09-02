import 'package:flutter/material.dart';
import 'package:iust/constants.dart';
import 'package:iust/pages/base_page.dart';
import 'package:iust/widgets/foot_bar.dart';
import 'package:iust/widgets/person_profile.dart';

class HomePage extends StatelessWidget {
  final Size size;

  HomePage({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return BasePage(
      size: size,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.17),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
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
            SizedBox(
              height: 40,
            ),
            Text(
              'Course Instructor',
              style: kBlackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PersonProfile(
              name: 'Behrooz Minaee',
              path: 'assets/images/minaee.jpg',
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Teaching Assistants',
              style: kBlackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 2 / 3,
              crossAxisCount: giveRowCount(size.width),
              physics: NeverScrollableScrollPhysics(),
              children: [
                for (int i = 0; i < 8; i++) ...[
                  PersonProfile(
                    name: 'Behrooz Minaee',
                    path: 'assets/images/minaee.jpg',
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  int giveRowCount(double width) {
    if (width > 1000) {
      return 5;
    } else if (width > 720) {
      return 4;
    } else {
      return 2;
    }
  }
}
