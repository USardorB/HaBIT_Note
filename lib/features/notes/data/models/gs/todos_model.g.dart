// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../todos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodosModelImpl _$$TodosModelImplFromJson(Map<String, dynamic> json) =>
    _$TodosModelImpl(
      id: json['id'] as String,
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSyncedWithClod: json['isSyncedWithClod'] as bool,
      color: (json['color'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$TodosModelImplToJson(_$TodosModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todos': instance.todos,
      'isSyncedWithClod': instance.isSyncedWithClod,
      'color': instance.color,
      'date': instance.date.toIso8601String(),
    };
