import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezeds/todo_model.freezed.dart';
part 'gs/todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String id,
    required String todo,
    required bool isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
