import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/core/const/db_consts.dart' as consts;

part 'freezeds/todo_model.freezed.dart';
part 'gs/todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    @JsonKey(name: consts.idColumn, defaultValue: '-1') int? id,
    @JsonKey(name: consts.idColumn, defaultValue: '') String? todo,
    @JsonKey(name: consts.idColumn, defaultValue: '') bool? isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
