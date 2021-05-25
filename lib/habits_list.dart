import 'package:flutter/material.dart';
import 'package:habit_app/habit_item.dart';
import 'package:habit_app/constants.dart' as Constants;

final listItemsMock = List<Widget>.generate(
  20,
  (index) => HabitItem(
    title: 'Bruh $index',
    subtitle: 'Description',
    type: Constants.HabitType.good,
    count: 0,
    periodicity: 7,
    priority: Constants.Priority.low,
  ),
);

class HabitsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listItemsMock,
      physics: BouncingScrollPhysics(),
    );
  }
}
