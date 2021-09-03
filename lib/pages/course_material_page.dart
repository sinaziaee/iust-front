import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
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
              Text(
                'Stuart Russell and Peter Norvig: Artificial Intelligence: A Modern Approach.',
                style: kBlackTextStyle.copyWith(),
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
                  children: [
                    HyperLinkText(
                      text:
                          'If you are not familiar with Python programming, use any online tutorial to get a handle of it.',
                      onTapped: () {
                      },
                      hyperText: '',
                    ),
                    HyperLinkText(
                      text: ' - Play PacMan',
                      onTapped: () {
                        launch('https://www.google.co.uk/search?q=pacman');
                      },
                      hyperText: 'PacMan',
                    ),
                    HyperLinkText(
                      text:
                          ' - A free Jupyter notebook environment for your deep learning exercises.',
                      onTapped: () {
                        launch('https://colab.research.google.com/');
                      },
                      hyperText: 'Google Colaboratory',
                    ),
                    HyperLinkText(
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
                      text: ' - Text classification of newswire documents.',
                      onTapped: () {
                        launch(
                          'https://iust-courses.github.io/ai97/static_files/newswire_mlp.ipynb',
                        );
                      },
                      hyperText: 'Tutorial 3',
                    ),
                    HyperLinkText(
                      text: ' - Digit Recognition from sound',
                      onTapped: () {
                        launch(
                          'https://iust-courses.github.io/ai97/static_files/fsdd.ipynb',
                        );
                      },
                      hyperText: 'Tutorial 4',
                    ),
                    HyperLinkText(
                      text: ' - MNIST classification with ConvNets.',
                      onTapped: () {
                        launch(
                          'https://iust-courses.github.io/ai97/static_files/mnist_cnn.ipynb',
                        );
                      },
                      hyperText: 'Tutorial 5',
                    ),
                    HyperLinkText(
                      text: ' - IMDB review with LSTMs.',
                      onTapped: () {
                        launch(
                          'https://iust-courses.github.io/ai97/static_files/imdb_lstm.ipynb',
                        );
                      },
                      hyperText: 'Tutorial 6',
                    ),
                    HyperLinkText(
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
      ),
    );
  }
}
