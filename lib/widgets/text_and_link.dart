import 'package:flutter/material.dart';

import '../constants.dart';

class HyperLinkText extends StatelessWidget {
  final String hyperText;
  final String text;
  final VoidCallback onTapped;

  HyperLinkText({
    required this.text,
    required this.onTapped,
    required this.hyperText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          text,
          style: kBlackTextStyle.copyWith(),
        ),
      ],
    );
  }
}
