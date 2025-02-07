// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: (json['id'] as num?)?.toInt(),
      todoId: (json['foreginId'] as num?)?.toInt(),
      todo: json['title'] as String?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foreginId': instance.todoId,
      'title': instance.todo,
      'isCompleted': instance.isCompleted,
    };
