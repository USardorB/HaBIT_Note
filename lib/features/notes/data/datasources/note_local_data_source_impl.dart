import 'package:habit_note/core/const/db_consts.dart' as consts;
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/notes/data/datasources/note_local_data_source.dart';
import 'package:habit_note/features/notes/data/models/note_model.dart';
import 'package:habit_note/features/notes/data/models/todo_model.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

@Singleton(as: NoteLocalDataSource)
class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  late final Database db;

  @override
  Future<Null> createNote(NoteModel note) async {
    try {
      await db.insert(consts.notesTable, note.toJson());
    } catch (e) {
      throw Failure.dbNote;
    }
  }

  @override
  Future<Null> createTodo(TodoModel todo) async {
    try {
      // await db.insert(consts.todosTable, todo.toJson());
      // for (final todo in todo.todos) {
      //   await db.insert(consts.todoTable, todo.toJson());
      // }
    } catch (e) {
      throw Failure.dbNote;
    }
  }

  @override
  Future<Null> deleteNote(int id, String email) async {
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
  Future<Null> deleteNotes() async {
    try {
      await db.delete(consts.notesTable);
    } catch (e) {
      throw Failure.dbNoteDelete;
    }
  }

  @override
  Future<Null> deleteTodo(int id, String email) async {
    try {
      final count = await db.delete(
        consts.todoTable,
        where: '${consts.idColumn}=? AND ${consts.emailColumn}=?',
        whereArgs: [id, email],
      );
      if (count != 1) throw Failure.dbTodoDelete;
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<Null> deleteTodos() async {
    try {
      await db.delete(consts.todoTable);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<Null> initialize() async {
    try {
      final docPath = await getApplicationDocumentsDirectory();
      db = await openDatabase(
        join(docPath.path, consts.dbName),
        version: 1,
        onCreate: (db, version) async => await Future.wait([
          db.execute(consts.noteTableCreation),
          db.execute(consts.todoTableCreation),
          db.execute(consts.taskTableCreation),
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
  Future<List<TodoModel>> readAllTodos(int? amount, String email) async {
    try {
      final result = await db.query(
        consts.todoTable,
        limit: amount,
        where: '${consts.emailColumn}=?',
        whereArgs: [email],
      );

      return result.map((json) => TodoModel.fromJson(json)).toList();
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<NoteModel> readNote(int id, String email) async {
    try {
      final result = await db.query(
        consts.todoTable,
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
  Future<TodoModel> readTodo(int id, String email) async {
    try {
      final todo = await db.rawQuery(consts.queryForTodo, [id, email]);
      return TodoModel.fromJson(todo.first);
    } catch (e) {
      throw Failure.dbTodoDelete;
    }
  }

  @override
  Future<Null> updateNote(NoteModel note) async {
    try {
      await db.update(
        consts.notesTable,
        note.toJson(),
        where: '${consts.idColumn} = ?',
        whereArgs: [note.id],
      );
    } catch (e) {
      throw Failure.dbTodoUpdate;
    }
  }

  @override
  Future<Null> updateTodo(TodoModel todo) async {
    try {
      // await db.update(
      //   consts.todosTable,
      //   todo.toJson(),
      //   where: '${consts.idColumn} = ?',
      //   whereArgs: [todo.id],
      // );
      // for (final i in todo.todos) {
      //   await db.update(
      //     consts.todoTable,
      //     i.toJson(),
      //     where: '${consts.foreginIdColumn} = ? AND ${consts.idColumn} = ?',
      //     whereArgs: [i.todoId, i.id],
      //   );
      // }
    } catch (e) {
      throw Failure.dbTodoUpdate;
    }
  }
}
