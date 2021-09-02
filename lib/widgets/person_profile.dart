import 'package:flutter/material.dart';
import 'package:iust/constants.dart';

class PersonProfile extends StatelessWidget {
  final String name;
  final String path;

  PersonProfile({
    required this.name,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            backgroundImage: AssetImage(
              path,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: kBlackTextStyle.copyWith(),
          ),
        ],
      ),
    );
  }
}
