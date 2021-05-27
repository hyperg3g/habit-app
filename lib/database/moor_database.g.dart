// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Habit extends DataClass implements Insertable<Habit> {
  final int id;
  final int count;
  final int frequency;
  final String title;
  final String description;
  final String type;
  final String priority;
  Habit(
      {@required this.id,
      @required this.count,
      @required this.frequency,
      @required this.title,
      @required this.description,
      @required this.type,
      @required this.priority});
  factory Habit.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return Habit(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      count: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}count']),
      frequency: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}frequency']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      priority: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}priority']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || count != null) {
      map['count'] = Variable<int>(count);
    }
    if (!nullToAbsent || frequency != null) {
      map['frequency'] = Variable<int>(frequency);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || priority != null) {
      map['priority'] = Variable<String>(priority);
    }
    return map;
  }

  HabitsCompanion toCompanion(bool nullToAbsent) {
    return HabitsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      count:
          count == null && nullToAbsent ? const Value.absent() : Value(count),
      frequency: frequency == null && nullToAbsent
          ? const Value.absent()
          : Value(frequency),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      priority: priority == null && nullToAbsent
          ? const Value.absent()
          : Value(priority),
    );
  }

  factory Habit.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Habit(
      id: serializer.fromJson<int>(json['id']),
      count: serializer.fromJson<int>(json['count']),
      frequency: serializer.fromJson<int>(json['frequency']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      type: serializer.fromJson<String>(json['type']),
      priority: serializer.fromJson<String>(json['priority']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'count': serializer.toJson<int>(count),
      'frequency': serializer.toJson<int>(frequency),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'type': serializer.toJson<String>(type),
      'priority': serializer.toJson<String>(priority),
    };
  }

  Habit copyWith(
          {int id,
          int count,
          int frequency,
          String title,
          String description,
          String type,
          String priority}) =>
      Habit(
        id: id ?? this.id,
        count: count ?? this.count,
        frequency: frequency ?? this.frequency,
        title: title ?? this.title,
        description: description ?? this.description,
        type: type ?? this.type,
        priority: priority ?? this.priority,
      );
  @override
  String toString() {
    return (StringBuffer('Habit(')
          ..write('id: $id, ')
          ..write('count: $count, ')
          ..write('frequency: $frequency, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('priority: $priority')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          count.hashCode,
          $mrjc(
              frequency.hashCode,
              $mrjc(
                  title.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(type.hashCode, priority.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Habit &&
          other.id == this.id &&
          other.count == this.count &&
          other.frequency == this.frequency &&
          other.title == this.title &&
          other.description == this.description &&
          other.type == this.type &&
          other.priority == this.priority);
}

class HabitsCompanion extends UpdateCompanion<Habit> {
  final Value<int> id;
  final Value<int> count;
  final Value<int> frequency;
  final Value<String> title;
  final Value<String> description;
  final Value<String> type;
  final Value<String> priority;
  const HabitsCompanion({
    this.id = const Value.absent(),
    this.count = const Value.absent(),
    this.frequency = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.priority = const Value.absent(),
  });
  HabitsCompanion.insert({
    this.id = const Value.absent(),
    @required int count,
    @required int frequency,
    @required String title,
    @required String description,
    @required String type,
    @required String priority,
  })  : count = Value(count),
        frequency = Value(frequency),
        title = Value(title),
        description = Value(description),
        type = Value(type),
        priority = Value(priority);
  static Insertable<Habit> custom({
    Expression<int> id,
    Expression<int> count,
    Expression<int> frequency,
    Expression<String> title,
    Expression<String> description,
    Expression<String> type,
    Expression<String> priority,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (count != null) 'count': count,
      if (frequency != null) 'frequency': frequency,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (priority != null) 'priority': priority,
    });
  }

  HabitsCompanion copyWith(
      {Value<int> id,
      Value<int> count,
      Value<int> frequency,
      Value<String> title,
      Value<String> description,
      Value<String> type,
      Value<String> priority}) {
    return HabitsCompanion(
      id: id ?? this.id,
      count: count ?? this.count,
      frequency: frequency ?? this.frequency,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      priority: priority ?? this.priority,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (frequency.present) {
      map['frequency'] = Variable<int>(frequency.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitsCompanion(')
          ..write('id: $id, ')
          ..write('count: $count, ')
          ..write('frequency: $frequency, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('priority: $priority')
          ..write(')'))
        .toString();
  }
}

class $HabitsTable extends Habits with TableInfo<$HabitsTable, Habit> {
  final GeneratedDatabase _db;
  final String _alias;
  $HabitsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _countMeta = const VerificationMeta('count');
  GeneratedIntColumn _count;
  @override
  GeneratedIntColumn get count => _count ??= _constructCount();
  GeneratedIntColumn _constructCount() {
    return GeneratedIntColumn(
      'count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _frequencyMeta = const VerificationMeta('frequency');
  GeneratedIntColumn _frequency;
  @override
  GeneratedIntColumn get frequency => _frequency ??= _constructFrequency();
  GeneratedIntColumn _constructFrequency() {
    return GeneratedIntColumn(
      'frequency',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 32);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 1, maxTextLength: 32);
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn('type', $tableName, false,
        minTextLength: 1, maxTextLength: 32);
  }

  final VerificationMeta _priorityMeta = const VerificationMeta('priority');
  GeneratedTextColumn _priority;
  @override
  GeneratedTextColumn get priority => _priority ??= _constructPriority();
  GeneratedTextColumn _constructPriority() {
    return GeneratedTextColumn('priority', $tableName, false,
        minTextLength: 1, maxTextLength: 32);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, count, frequency, title, description, type, priority];
  @override
  $HabitsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'habits';
  @override
  final String actualTableName = 'habits';
  @override
  VerificationContext validateIntegrity(Insertable<Habit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count'], _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('frequency')) {
      context.handle(_frequencyMeta,
          frequency.isAcceptableOrUnknown(data['frequency'], _frequencyMeta));
    } else if (isInserting) {
      context.missing(_frequencyMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority'], _priorityMeta));
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Habit map(Map<String, dynamic> data, {String tablePrefix}) {
    return Habit.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HabitsTable createAlias(String alias) {
    return $HabitsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $HabitsTable _habits;
  $HabitsTable get habits => _habits ??= $HabitsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [habits];
}
