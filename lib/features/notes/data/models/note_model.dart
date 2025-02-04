import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;
part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @JsonKey(name: consts.idColumn) String? id,
    @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
    String? email,
    @JsonKey(name: consts.titleColumn) String? title,
    @JsonKey(name: consts.descriptionColumn) String? description,
    @JsonKey(name: consts.isSyncedColumn, defaultValue: false) bool? isSynced,
    @JsonKey(name: consts.dateColumn, defaultValue: null) DateTime? date,
    @JsonKey(name: consts.colorColumn, defaultValue: 0) int? color,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
