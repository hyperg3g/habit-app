import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:habit_app/database/moor_database.dart';

class HabitsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildHabitList(context);
  }
}

StreamBuilder<List<Habit>> _buildHabitList(context) {
  final database = Provider.of<Database>(context);

  return StreamBuilder(
    stream: database.watchAllHabits(),
    builder: (context, AsyncSnapshot<List<Habit>> snapshot) {
      if (!snapshot.hasData) {
        return CircularProgressIndicator();
      }

      final habits = snapshot.data;

      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: habits.length,
        itemBuilder: (_, index) {
          final habit = habits[index];

          return _buildHabitItem(habit, database);
        },
      );
    },
  );
}

Widget _buildHabitItem(Habit habit, Database database) {
  return Card(
    child: ListTile(
      leading: Transform.translate(
        child: Icon(
          Icons.circle,
          color: Colors.green,
        ),
        offset: Offset(0, 7),
      ),
      title: Text(habit.title ?? 'Mda'),
      subtitle: Text(habit.description ?? 'Blank'),
      trailing: Icon(Icons.check),
    ),
  );
}
