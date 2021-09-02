import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTabBar extends PreferredSize {

  final List<Tab> tabList;

  CustomTabBar(child, preferredSize, this.tabList)
      : super(child: child, preferredSize: preferredSize);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize * 0.06,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: kOrangeColor,
              width: 5,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: preferredSize.width * 0.2),
        child: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: tabList,
        ),
      ),
    );
  }
}
