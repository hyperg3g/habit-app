import 'package:flutter/material.dart';
import 'package:habit_app/create_habit_form.dart';

class CreateHabitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          ),
        ],
        title: Text('Create New Habit'),
        centerTitle: true,
      ),
      body: Center(
        child: CreateHabitForm(),
      ),
    );
  }
}
