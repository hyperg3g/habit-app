import 'package:moor_flutter/moor_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:moor/moor.dart';
import 'dart:io';
import 'package:moor/ffi.dart';

part 'moor_database.g.dart';

class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get count => integer()();
  IntColumn get periodicity => integer()();
  TextColumn get title => text().withLength(min: 1, max: 32)();
  TextColumn get subtitle => text().withLength(min: 1, max: 32)();
  TextColumn get type => text().withLength(min: 1, max: 32)();
  TextColumn get priority => text().withLength(min: 1, max: 32)();
}

@UseMoor(tables: [Habits])
class Database extends _$Database {
  // we tell the database where to store the data with this constructor
  Database() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}
