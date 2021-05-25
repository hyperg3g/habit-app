import 'package:flutter/material.dart';
import 'package:habit_app/habits_list.dart';
import 'package:habit_app/home_app_bar.dart';
import 'package:habit_app/create_habit_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HomeAppBar(title: title),
        ),
        body: TabBarView(
          children: <Widget>[
            HabitsList(),
            HabitsList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CreateHabitScreen())),
        ),
      ),
    );
  }
}
