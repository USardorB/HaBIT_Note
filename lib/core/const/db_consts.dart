const String dbName = 'notes.db';
const String notesTable = 'notes';
const String todosTable = 'todos';
const String todoTable = 'todo';
const String idColumn = 'id';
const String foreginIdColumn = 'foreginId';
const String titleColumn = 'title';
const String emailColumn = 'email';
const String descriptionColumn = 'description';
const String isCompletedColumn = 'isCompleted';
const String isSyncedColumn = 'isSynced';
const String colorColumn = 'color';
const String dateColumn = 'date';

final String queryForTodo = '''SELECT $todosTable.* 
  FROM $todosTable
  JOIN $todoTable ON $todosTable.$idColumn = $todoTable.$foreginIdColumn
  WHERE $todoTable.$foreginIdColumn = ? AND $todosTable.$emailColumn = ?
''';

const String noteTableCreation = '''CREATE TABLE IF NOT EXISTS $notesTable (
    $idColumn INTEGER PRIMARY KEY AUTOINCREMENT,
    $emailColumn TEXT NOT NULL,
    $titleColumn TEXT NOT NULL,
    $descriptionColumn TEXT NOT NULL,
    $isSyncedColumn INTEGER NOT NULL,
    $dateColumn TEXT NOT NULL,
    $colorColumn INTEGER NOT NULL
);''';

const String todosTableCreation = '''CREATE TABLE IF NOT EXISTS $todosTable (
    $idColumn INTEGER PRIMARY KEY AUTOINCREMENT,
    $emailColumn TEXT NOT NULL,
    $todosTable JSON NOT NULL,
    $isSyncedColumn INTEGER NOT NULL,
    $colorColumn INTEGER NOT NULL,
    $dateColumn TEXT NOT NULL
);''';

const String todoTableCreation = '''CREATE TABLE IF NOT EXISTS $todoTable (
    $idColumn INTEGER PRIMARY KEY AUTOINCREMENT,
    $titleColumn TEXT NOT NULL,
    $isCompletedColumn INTEGER NOT NULL,
    $foreginIdColumn TEXT,
    FOREIGN KEY ($foreginIdColumn) REFERENCES $todosTable($idColumn) ON DELETE CASCADE
);''';
