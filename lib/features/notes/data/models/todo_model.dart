import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    @JsonKey(name: consts.idColumn, defaultValue: -1) int? id,
    @JsonKey(name: consts.foreginIdColumn, defaultValue: -1) int? todoId,
    @JsonKey(name: consts.titleColumn, defaultValue: 'nothing') String? todo,
    @JsonKey(
      name: consts.isCompletedColumn,
      defaultValue: false,
    )
    bool? isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
