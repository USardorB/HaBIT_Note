import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/domain/usecases/usecases.dart';
import 'package:injectable/injectable.dart';

part 'notes_cubit.freezed.dart';

@injectable
class NotesCubit extends Cubit<NotesState> {
  final InitializeDB _initialize;
  final CreateNote _createNote;

  NotesCubit(
    this._initialize,
    this._createNote,
  ) : super(const NotesState());

  Future<void> initialize() async {
    final resp = await _initialize();

    print(resp);
  }

  Future<void> create(NoteModel note) => _createNote(param: note);
}

@freezed
class NotesState with _$NotesState {
  const factory NotesState({
    List<NoteModel>? notes,
    List<TodoModel>? todos,
    String? error,
    bool? isLoading,
  }) = _NotesState;
}
