import 'package:habit_note/core/const/db_consts.dart' as consts;
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/notes/data/datasources/note_local_data_source.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  late final Database db;

  @override
  Future<void> createNote() async {
    try {
      db.insert(consts.notesTable, values);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createTodo() {
    // TODO: implement createTodo
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNote() {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNotes() {
    // TODO: implement deleteNotes
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo() {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodos() {
    // TODO: implement deleteTodos
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() async {
    try {
      final docPath = await getApplicationDocumentsDirectory();
      db = await openDatabase(
        join(docPath.path, consts.dbName),
        version: 1,
        onCreate: (db, version) async => await Future.wait([
          db.execute(consts.noteTableCreation),
          db.execute(consts.todosTableCreation),
          db.execute(consts.todoTableCreation),
        ]),
      );
    } catch (e) {
      throw Failure.db;
    }
  }

  @override
  Future<void> readAllNotes() {
    // TODO: implement readAllNotes
    throw UnimplementedError();
  }

  @override
  Future<void> readAllTodos() {
    // TODO: implement readAllTodos
    throw UnimplementedError();
  }

  @override
  Future<void> readNote() {
    // TODO: implement readNote
    throw UnimplementedError();
  }

  @override
  Future<void> readTodo() {
    // TODO: implement readTodo
    throw UnimplementedError();
  }

  @override
  Future<void> updateNote() {
    // TODO: implement updateNote
    throw UnimplementedError();
  }

  @override
  Future<void> updateTodo() {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }
}
