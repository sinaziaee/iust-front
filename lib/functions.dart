import 'package:flutter/material.dart';

import 'constants.dart';

DataRow dataRowCreator(
    {required String type,
    required String date,
    required String weekday,
    required String body,
    required String courseMaterial}) {
  return DataRow(
    color: MaterialStateProperty.all(
      type == 'Assignment'
          ? kLightBlue
          : type == 'Due'
              ? kLightRed
              : Colors.white,
    ),
    cells: [
      DataCell(
        Text(type),
      ),
      DataCell(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(date),
            Text(weekday),
          ],
        ),
      ),
      DataCell(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              body,
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          courseMaterial,
        ),
      ),
    ],
  );
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
