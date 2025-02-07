import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;
import 'package:habit_note/features/notes/data/models/task_model.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    @JsonKey(name: consts.idColumn) String? id,
    @JsonKey(name: consts.taskTable) List<TaskModel>? todos,
    @JsonKey(name: consts.isSyncedColumn) bool? isSyncedWithClod,
    @JsonKey(name: consts.colorColumn) int? color,
    @JsonKey(name: consts.dateColumn) DateTime? date,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
