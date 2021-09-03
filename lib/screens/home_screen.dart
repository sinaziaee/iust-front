import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iust/constants.dart';
import 'package:iust/models/tab.dart';
import 'package:iust/models/tabs_db.dart';
import 'package:iust/pages/schedule_page.dart';
import 'package:iust/pages/course_material_page.dart';
import 'package:iust/pages/final_project_page.dart';
import 'package:iust/pages/home_page.dart';
import 'package:iust/pages/lectures_page.dart';
import 'package:iust/pages/assignment_page.dart';
import 'package:iust/widgets/appbar_title.dart';
import 'package:iust/widgets/cutom_tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabDB tabDB = TabDB();
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: tabDB.tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          title: AppbarTitle(size),
          bottom: CustomTabBar(
            Text('salam'),
            size,
            tabListCreator(),
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(
              size: size,
            ),
            SchedulePage(
              size: size,
            ),
            LecturePage(
              size: size,
            ),
            AssignmentPage(),
            FinalProjectPage(),
            CourseMaterialPage(),
          ],
        ),
      ),
    );
  }

  List<Widget> tabBody() {
    return [];
  }

  List<Tab> tabListCreator() {
    List<Tab> tabs = [];
    for (int i = 0; i < tabDB.tabsList.length; i++) {
      MyTab myTab = tabDB.tabsList[i];
      Tab tab = Tab(
        child: Row(
          children: [
            Icon(myTab.iconData),
            SizedBox(
              width: 5,
            ),
            Text(
              myTab.name,
              style: kCustomTextStyle.copyWith(),
            ),
          ],
        ),
      );
      tabs.add(tab);
    }
    return tabs;
  }

  tabBarBody() {}
}
