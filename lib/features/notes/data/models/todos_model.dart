import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_note/features/notes/data/models/todo_model.dart';

part 'freezeds/todos_model.freezed.dart';
part 'gs/todos_model.g.dart';

@freezed
class TodosModel with _$TodosModel {
  const factory TodosModel({
    required String id,
    required List<TodoModel> todos,
    required bool isSyncedWithClod,
    required int color,
    required DateTime date,
  }) = _TodosModel;

  factory TodosModel.fromJson(Map<String, dynamic> json) =>
      _$TodosModelFromJson(json);
}
