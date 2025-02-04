// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      todoId: (json['foreginId'] as num?)?.toInt() ?? -1,
      todo: json['title'] as String? ?? 'nothing',
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foreginId': instance.todoId,
      'title': instance.todo,
      'isCompleted': instance.isCompleted,
    };
