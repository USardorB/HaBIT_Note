import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezeds/note_model.freezed.dart';
part 'gs/note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required String id,
    required String title,
    required String description,
    required bool isSyncedWithClod,
    required DateTime date,
    required int color,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
