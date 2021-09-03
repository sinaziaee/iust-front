import 'package:flutter/material.dart';
import 'package:iust/widgets/foot_bar.dart';

class BasePage extends StatelessWidget {
  final Size size;
  final Widget child;

  BasePage({
    required this.size,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          child,
          SizedBox(
            height: size.height*0.1,
          ),
          FootBarWidget(size: size),
        ],
      ),
    );
  }
}
