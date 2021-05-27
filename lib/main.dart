import 'package:flutter/material.dart';
import 'package:habit_app/home_screen.dart';
import 'package:provider/provider.dart';

import 'database/moor_database.dart';

void main() {
  runApp(
    Provider<Database>(
      create: (_) => Database(),
      child: App(),
      dispose: (_, db) => db.close(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Habit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Habit App'),
    );
  }
}
