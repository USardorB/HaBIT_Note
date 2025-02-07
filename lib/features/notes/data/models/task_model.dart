import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @JsonKey(name: consts.idColumn) int? id,
    @JsonKey(name: consts.foreginIdColumn) int? todoId,
    @JsonKey(name: consts.titleColumn) String? todo,
    @JsonKey(name: consts.isCompletedColumn) bool? isCompleted,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
