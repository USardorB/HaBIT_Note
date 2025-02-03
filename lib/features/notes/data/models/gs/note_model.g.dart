// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isSyncedWithClod: json['isSyncedWithClod'] as bool,
      date: DateTime.parse(json['date'] as String),
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isSyncedWithClod': instance.isSyncedWithClod,
      'date': instance.date.toIso8601String(),
      'color': instance.color,
    };
