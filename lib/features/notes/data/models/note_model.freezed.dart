// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  @JsonKey(name: consts.idColumn)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: consts.titleColumn)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: consts.descriptionColumn)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: consts.isSyncedColumn, defaultValue: false)
  bool? get isSynced => throw _privateConstructorUsedError;
  @JsonKey(name: consts.dateColumn, defaultValue: null)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: consts.colorColumn, defaultValue: 0)
  int? get color => throw _privateConstructorUsedError;

  /// Serializes this NoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: consts.idColumn) String? id,
      @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
      String? email,
      @JsonKey(name: consts.titleColumn) String? title,
      @JsonKey(name: consts.descriptionColumn) String? description,
      @JsonKey(name: consts.isSyncedColumn, defaultValue: false) bool? isSynced,
      @JsonKey(name: consts.dateColumn, defaultValue: null) DateTime? date,
      @JsonKey(name: consts.colorColumn, defaultValue: 0) int? color});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isSynced = freezed,
    Object? date = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: freezed == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: consts.idColumn) String? id,
      @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
      String? email,
      @JsonKey(name: consts.titleColumn) String? title,
      @JsonKey(name: consts.descriptionColumn) String? description,
      @JsonKey(name: consts.isSyncedColumn, defaultValue: false) bool? isSynced,
      @JsonKey(name: consts.dateColumn, defaultValue: null) DateTime? date,
      @JsonKey(name: consts.colorColumn, defaultValue: 0) int? color});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isSynced = freezed,
    Object? date = freezed,
    Object? color = freezed,
  }) {
    return _then(_$NoteModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: freezed == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl implements _NoteModel {
  const _$NoteModelImpl(
      {@JsonKey(name: consts.idColumn) this.id,
      @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
      this.email,
      @JsonKey(name: consts.titleColumn) this.title,
      @JsonKey(name: consts.descriptionColumn) this.description,
      @JsonKey(name: consts.isSyncedColumn, defaultValue: false) this.isSynced,
      @JsonKey(name: consts.dateColumn, defaultValue: null) this.date,
      @JsonKey(name: consts.colorColumn, defaultValue: 0) this.color});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  @JsonKey(name: consts.idColumn)
  final String? id;
  @override
  @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
  final String? email;
  @override
  @JsonKey(name: consts.titleColumn)
  final String? title;
  @override
  @JsonKey(name: consts.descriptionColumn)
  final String? description;
  @override
  @JsonKey(name: consts.isSyncedColumn, defaultValue: false)
  final bool? isSynced;
  @override
  @JsonKey(name: consts.dateColumn, defaultValue: null)
  final DateTime? date;
  @override
  @JsonKey(name: consts.colorColumn, defaultValue: 0)
  final int? color;

  @override
  String toString() {
    return 'NoteModel(id: $id, email: $email, title: $title, description: $description, isSynced: $isSynced, date: $date, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, title, description, isSynced, date, color);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {@JsonKey(name: consts.idColumn) final String? id,
      @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
      final String? email,
      @JsonKey(name: consts.titleColumn) final String? title,
      @JsonKey(name: consts.descriptionColumn) final String? description,
      @JsonKey(name: consts.isSyncedColumn, defaultValue: false)
      final bool? isSynced,
      @JsonKey(name: consts.dateColumn, defaultValue: null)
      final DateTime? date,
      @JsonKey(name: consts.colorColumn, defaultValue: 0)
      final int? color}) = _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  @JsonKey(name: consts.idColumn)
  String? get id;
  @override
  @JsonKey(name: consts.emailColumn, defaultValue: 'Example@mail.com')
  String? get email;
  @override
  @JsonKey(name: consts.titleColumn)
  String? get title;
  @override
  @JsonKey(name: consts.descriptionColumn)
  String? get description;
  @override
  @JsonKey(name: consts.isSyncedColumn, defaultValue: false)
  bool? get isSynced;
  @override
  @JsonKey(name: consts.dateColumn, defaultValue: null)
  DateTime? get date;
  @override
  @JsonKey(name: consts.colorColumn, defaultValue: 0)
  int? get color;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
