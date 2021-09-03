import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class FootBarWidget extends StatelessWidget {
  final Size size;

  FootBarWidget({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    if (size.width > 720) {
      return Container(
        height: size.height * 0.15,
        child: Column(
          children: [
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.2,
                        child: Text(
                          'Iran University of Science and Technology',
                          style: kBlackTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: size.width * 0.2,
                        child: Text(
                          'School of Computer Engineering'
                          'Iran University of Science and Technology'
                          'Tehran, Iran',
                          style: kBlackTextStyle.copyWith(
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.web,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                launch('http://minaei.iust.ac.ir/');
                              },
                              child: Text(
                                'http://minaei.iust.ac.ir/',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } //
    else {
      return Container(
        height: size.height * 0.15,
        child: Column(
          children: [
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Iran University of Science and Technology',
                    style: kBlackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'School of Computer Engineering'
                    'Iran University of Science and Technology'
                    'Tehran, Iran',
                    style: kBlackTextStyle.copyWith(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          launch('http://minaei.iust.ac.ir/');
                        },
                        child: Text(
                          'http://minaei.iust.ac.ir/',
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
