import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iust/pages/base_page.dart';
import 'package:iust/widgets/schedule_card.dart';

import '../functions.dart';

class SchedulePage extends StatelessWidget {
  final Size size;

  SchedulePage({
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
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: schedulePageCreator(size.width),
        ),
      ),
    );
  }

  List<Widget> schedulePageCreator(double width) {
    if (width < 850) {
      return [
        for (int i = 0; i < 5; i++) ...[
          ScheduleCard(
            type: (i % 3 == 0)
                ? 'Lecture'
                : (i % 3 == 1)
                    ? 'Assignment'
                    : 'Due',
            body: 'Introduction to Artificial Intelligence',
            date: '1397/6/25',
            weekDay: 'Sunday',
          ),
        ]
      ];
    } //
    else {
      return [
        SizedBox(
          height: size.height * 0.1,
        ),
        DataTable(
          dataRowHeight: 100,
          columns: [
            dataColumnCreator(
              'EVENT',
            ),
            dataColumnCreator(
              'DATE',
            ),
            dataColumnCreator(
              'DESCRIPTION',
            ),
            dataColumnCreator(
              'COURSE MATERIAL',
            ),
          ],
          rows: dataListCreator(),
        ),
      ];
    }
  }

  List<DataRow> dataListCreator() {
    List<DataRow> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(
        dataRowCreator(
          type: (i % 3 == 0)
              ? 'Lecture'
              : (i % 3 == 1)
                  ? 'Assignment'
                  : 'Due',
          date: '1397/6/25',
          weekday: 'Sunday',
          body: 'Introduction to Artificial Intelligence',
          courseMaterial: '',
        ),
      );
    }
    return list;
  }
}
