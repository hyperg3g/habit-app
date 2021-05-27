import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';

part 'moor_database.g.dart';

class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get count => integer()();
  IntColumn get frequency => integer()();
  TextColumn get title => text().withLength(min: 1, max: 32)();
  TextColumn get description => text().withLength(min: 1, max: 32)();
  TextColumn get type => text().withLength(min: 1, max: 32)();
  TextColumn get priority => text().withLength(min: 1, max: 32)();
}

@UseMoor(tables: [Habits])
class Database extends _$Database {
  Database() : super((FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true)));

  @override
  int get schemaVersion => 1;

  Future<List<Habit>> allHabitEntries() => select(habits).get();

  Stream<List<Habit>> watchAllHabits() => select(habits).watch();

  Future insertHabit(Habit habit) => into(habits).insert(habit);
  Future updateHabit(Habit habit) => update(habits).replace(habit);
  Future deleteHabit(Habit habit) => delete(habits).delete(habit);
}
