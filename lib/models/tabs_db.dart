import 'package:flutter/material.dart';
import 'package:iust/models/tab.dart';

class TabDB{
  List<MyTab> tabsList = [
    MyTab(name: 'HOME', iconData: Icons.home),
    MyTab(name: 'SCHEDULE', iconData: Icons.calendar_today),
    MyTab(name: 'LECTURES', iconData: Icons.person_pin_sharp),
    MyTab(name: 'ASSIGNMENTS', iconData: Icons.assignment),
    MyTab(name: 'FINAL PROJECT', iconData: Icons.assignment),
    MyTab(name: 'COURSE MATERIALS', iconData: Icons.topic),
  ];
}