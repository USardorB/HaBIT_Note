// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      id: json['id'] as String?,
      email: json['email'] as String? ?? 'Example@mail.com',
      title: json['title'] as String?,
      description: json['description'] as String?,
      isSynced: json['isSynced'] as bool? ?? false,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      color: (json['color'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'title': instance.title,
      'description': instance.description,
      'isSynced': instance.isSynced,
      'date': instance.date?.toIso8601String(),
      'color': instance.color,
    };
