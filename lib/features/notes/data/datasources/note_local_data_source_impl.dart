import 'package:dartz/dartz.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/notes/data/datasources/note_local_data_source.dart';
import 'package:habit_note/features/notes/data/models/note_model.dart';
import 'package:habit_note/features/notes/data/models/todos_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  late final Database db;

  @override
  Future<void> createNote(NoteModel note) async {
    try {
      await db.insert(consts.notesTable, note.toJson());
    } catch (e) {
      throw Failure.dbNote;
    }
  }

  @override
  Future<void> createTodo(TodosModel todo) async {
    try {
      await db.insert(consts.todosTable, todo.toJson());
      for (final todo in todo.todos) {
        await db.insert(consts.todoTable, todo.toJson());
      }
    } catch (e) {
      throw Failure.dbNote;
    }
  }

  @override
  Future<void> deleteNote(int id, String email) async {
    try {
      final count = await db.delete(
        consts.notesTable,
        where: '${consts.idColumn}=? AND ${consts.emailColumn}=?',
        whereArgs: [id, email],
      );
      if (count != 1) throw Failure.dbTodoDelete;
    } catch (e) {
      throw Failure.dbNoteDelete;
    }
  }

  @override
  Future<void> deleteNotes() async {
    try {
      await db.delete(consts.notesTable);
    } catch (e) {
      throw Failure.dbNoteDelete;
    }
  }

  @override
  Future<void> deleteTodo(int id, String email) async {
    try {
      final count = await db.delete(
        consts.todosTable,
        where: '${consts.idColumn}=? AND ${consts.emailColumn}=?',
        whereArgs: [id, email],
      );
      if (count != 1) throw Failure.dbTodoDelete;
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<void> deleteTodos() async {
    try {
      await db.delete(consts.todosTable);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
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
  Future<List<NoteModel>> readAllNotes(int? amount, String email) async {
    try {
      final result = await db.query(
        consts.notesTable,
        limit: amount,
        where: '${consts.emailColumn}=?',
        whereArgs: [email],
      );

      return result.map((json) => NoteModel.fromJson(json)).toList();
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<List<TodosModel>> readAllTodos(int? amount, String email) async {
    try {
      final result = await db.query(
        consts.todosTable,
        limit: amount,
        where: '${consts.emailColumn}=?',
        whereArgs: [email],
      );

      return result.map((json) => TodosModel.fromJson(json)).toList();
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<NoteModel> readNote(int id, String email) async {
    try {
      final result = await db.query(
        consts.todosTable,
        limit: 1,
        where: '${consts.emailColumn}=? AND ${consts.idColumn}',
        whereArgs: [email, id],
      );

      return NoteModel.fromJson(result.first);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<TodosModel> readTodo(int id, String email) async {
    try {
      final todo = await db.rawQuery(consts.queryForTodo, [id, email]);
      return TodosModel.fromJson(todo.first);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<void> updateNote(NoteModel note) async {
    try {
      await db.update(consts.notesTable, [id, email]);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<void> updateTodo(TodosModel todo) async {
    try {
      await db.update(consts.todosTable, [id, email]);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }
}
