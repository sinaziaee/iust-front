import 'package:flutter/material.dart';

import '../constants.dart';

class LecturesItem extends StatelessWidget {
  final Size size;
  final bool isLast;

  LecturesItem({
    required this.size,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              width: 120,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kBackgroundColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: FadeInImage(
                  width: 120,
                  height: 70,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/ai.jpg'),
                  image: NetworkImage(
                    'https://iust-courses.github.io/ai97/static_files/thumbnails/Slide1.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(
                  width: size.width * 0.4,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Introduction to Artificial Intelligence',
                      style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.4,
                      child: Text(
                        'tl;dr: What is AI? How does it impact our lives? The current state of the art.',
                        style: kBlackTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '[',
                      style: kBlackTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'slides',
                        style: kBlackTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      ']',
                      style: kBlackTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '[',
                      style: kBlackTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'notes',
                        style: kBlackTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      ']',
                      style: kBlackTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Visibility(
          visible: !isLast,
          child: Divider(),
        )
      ],
    );
  }
}
