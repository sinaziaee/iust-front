import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:iust/pages/base_page.dart';
import 'package:iust/widgets/text_and_link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class CourseMaterialPage extends StatelessWidget {
  final Size size;

  CourseMaterialPage({
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Course Materials',
              style: kBlackTextStyle.copyWith(
                fontSize: 30,
                color: kBackgroundColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book',
                      style: kBlackTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width * 0.4,
                      child: Text(
                        'Stuart Russell and Peter Norvig: Artificial Intelligence: A Modern Approach.',
                        style: kBlackTextStyle.copyWith(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Image.asset(
                  'assets/images/book.jpg',
                  width: (size.width > 720) ? 140 : 100,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Additional Course Materials',
              style: kBlackTextStyle.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ListView.builder(
            //   itemCount: 5,
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     return AssignmentItem(isLast: index != 4);
            //   },
            // ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HyperLinkText(
                    size: size,
                    text:
                        'If you are not familiar with Python programming, use any online tutorial to get a handle of it.',
                    onTapped: () {},
                    hyperText: '',
                  ),
                  HyperLinkText(
                    size: size,
                    text: ' - Play PacMan',
                    onTapped: () {
                      launch('https://www.google.co.uk/search?q=pacman');
                    },
                    hyperText: 'PacMan',
                  ),
                  HyperLinkText(
                    size: size,
                    text:
                        ' - A free Jupyter notebook environment for your deep learning exercises.',
                    onTapped: () {
                      launch('https://colab.research.google.com/');
                    },
                    hyperText: 'Google Colaboratory',
                  ),
                  HyperLinkText(
                    size: size,
                    text:
                        ' - Dive into deep learning! MNIST classification with MLP.',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/mnist.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 1',
                  ),
                  HyperLinkText(
                    size: size,
                    text:
                        ' - Sentiment analysis on the IMDB movie review dataset.',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/imdb_mlp.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 2',
                  ),
                  HyperLinkText(
                    size: size,
                    text: ' - Text classification of newswire documents.',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/newswire_mlp.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 3',
                  ),
                  HyperLinkText(
                    size: size,
                    text: ' - Digit Recognition from sound',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/fsdd.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 4',
                  ),
                  HyperLinkText(
                    size: size,
                    text: ' - MNIST classification with ConvNets.',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/mnist_cnn.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 5',
                  ),
                  HyperLinkText(
                    size: size,
                    text: ' - IMDB review with LSTMs.',
                    onTapped: () {
                      launch(
                        'https://iust-courses.github.io/ai97/static_files/imdb_lstm.ipynb',
                      );
                    },
                    hyperText: 'Tutorial 6',
                  ),
                  HyperLinkText(
                    size: size,
                    text: '',
                    onTapped: () {
                      launch(
                        'http://karpathy.github.io/2015/05/21/rnn-effectiveness/',
                      );
                    },
                    hyperText:
                        'The Unreasonable Effectiveness of Recurrent Neural Networks',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
