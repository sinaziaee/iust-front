import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class HyperLinkText extends StatelessWidget {
  final String hyperText;
  final String text;
  final VoidCallback onTapped;
  final Size size;

  HyperLinkText({
    required this.text,
    required this.onTapped,
    required this.hyperText,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    if (size.width > 720) {
      return Column(
        children: [
          Row(
            children: [
              Text(
                '- ',
                style: kBlackTextStyle.copyWith(),
              ),
              InkWell(
                onTap: onTapped,
                child: Text(
                  hyperText,
                  style: kBlackTextStyle.copyWith(
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: kBlackTextStyle.copyWith(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      );
    } //
    else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3,
          ),
          InkWell(
            onTap: onTapped,
            child: Text(
              hyperText,
              style: kBlackTextStyle.copyWith(
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            child: Text(
              text,
              style: kBlackTextStyle.copyWith(),
            ),
          ),
        ],
      );
    }
  }
}
