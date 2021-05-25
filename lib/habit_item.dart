import 'package:flutter/material.dart';
import 'package:habit_app/constants.dart' as Constants;

class HabitItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Constants.HabitType type;
  final int count;
  final int periodicity;
  final Constants.Priority priority;

  HabitItem({Key key, this.title, this.subtitle, this.priority, this.type, this.count, this.periodicity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Transform.translate(
          child: Icon(
            Icons.circle,
            color: Constants.priorityColors[priority],
          ),
          offset: Offset(0, 7),
        ),
        title: Text("$title"),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.check),
      ),
    );
  }
}
