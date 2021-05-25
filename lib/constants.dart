import 'package:flutter/material.dart';

enum Priority { low, medium, high }
enum HabitType { good, bad }

Map<Priority, Color> priorityColors = {
  Priority.low: Colors.green,
  Priority.medium: Colors.yellow,
  Priority.high: Colors.red,
};

Map<HabitType, String> habitType = {
  HabitType.good: 'good',
  HabitType.bad: 'bad',
};
