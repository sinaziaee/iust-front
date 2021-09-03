import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iust/pages/base_page.dart';
import 'package:iust/widgets/schedule_card.dart';

import '../constants.dart';

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
              type: 'Lecture',
              body: 'Introduction to Artificial Intelligence',
              date: '1397/6/25',
              weekDay: 'Sunday'),
        ]
      ];
    } //
    else {
      return [
        SizedBox(
          height: size.height * 0.1,
        ),
        DataTable(
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

  DataColumn dataColumnCreator(String text) {
    return DataColumn(
      label: Text(
        text,
        style: kColumnTableStyle.copyWith(
          fontSize: 15,
        ),
      ),
    );
  }

  List<DataRow> dataListCreator() {
    List<DataRow> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(
        DataRow(
          cells: [
            DataCell(
              Text('Lecture'),
            ),
            DataCell(
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('1397/6/25'),
                  Text('Sunday'),
                ],
              ),
            ),
            DataCell(
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Introduction to Artificial Intelligence',
                  ),
                ],
              ),
            ),
            DataCell(
              Text(
                '',
              ),
            ),
          ],
        ),
      );
    }
    return list;
  }
}
