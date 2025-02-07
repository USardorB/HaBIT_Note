// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  @JsonKey(name: consts.idColumn)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: consts.taskTable)
  List<TaskModel>? get todos => throw _privateConstructorUsedError;
  @JsonKey(name: consts.isSyncedColumn)
  bool? get isSyncedWithClod => throw _privateConstructorUsedError;
  @JsonKey(name: consts.colorColumn)
  int? get color => throw _privateConstructorUsedError;
  @JsonKey(name: consts.dateColumn)
  DateTime? get date => throw _privateConstructorUsedError;

  /// Serializes this TodoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: consts.idColumn) String? id,
      @JsonKey(name: consts.taskTable) List<TaskModel>? todos,
      @JsonKey(name: consts.isSyncedColumn) bool? isSyncedWithClod,
      @JsonKey(name: consts.colorColumn) int? color,
      @JsonKey(name: consts.dateColumn) DateTime? date});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? todos = freezed,
    Object? isSyncedWithClod = freezed,
    Object? color = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      isSyncedWithClod: freezed == isSyncedWithClod
          ? _value.isSyncedWithClod
          : isSyncedWithClod // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: consts.idColumn) String? id,
      @JsonKey(name: consts.taskTable) List<TaskModel>? todos,
      @JsonKey(name: consts.isSyncedColumn) bool? isSyncedWithClod,
      @JsonKey(name: consts.colorColumn) int? color,
      @JsonKey(name: consts.dateColumn) DateTime? date});
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? todos = freezed,
    Object? isSyncedWithClod = freezed,
    Object? color = freezed,
    Object? date = freezed,
  }) {
    return _then(_$TodoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      isSyncedWithClod: freezed == isSyncedWithClod
          ? _value.isSyncedWithClod
          : isSyncedWithClod // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoModelImpl implements _TodoModel {
  const _$TodoModelImpl(
      {@JsonKey(name: consts.idColumn) this.id,
      @JsonKey(name: consts.taskTable) final List<TaskModel>? todos,
      @JsonKey(name: consts.isSyncedColumn) this.isSyncedWithClod,
      @JsonKey(name: consts.colorColumn) this.color,
      @JsonKey(name: consts.dateColumn) this.date})
      : _todos = todos;

  factory _$TodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoModelImplFromJson(json);

  @override
  @JsonKey(name: consts.idColumn)
  final String? id;
  final List<TaskModel>? _todos;
  @override
  @JsonKey(name: consts.taskTable)
  List<TaskModel>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: consts.isSyncedColumn)
  final bool? isSyncedWithClod;
  @override
  @JsonKey(name: consts.colorColumn)
  final int? color;
  @override
  @JsonKey(name: consts.dateColumn)
  final DateTime? date;

  @override
  String toString() {
    return 'TodoModel(id: $id, todos: $todos, isSyncedWithClod: $isSyncedWithClod, color: $color, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.isSyncedWithClod, isSyncedWithClod) ||
                other.isSyncedWithClod == isSyncedWithClod) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_todos),
      isSyncedWithClod,
      color,
      date);

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoModelImplToJson(
      this,
    );
  }
}

abstract class _TodoModel implements TodoModel {
  const factory _TodoModel(
          {@JsonKey(name: consts.idColumn) final String? id,
          @JsonKey(name: consts.taskTable) final List<TaskModel>? todos,
          @JsonKey(name: consts.isSyncedColumn) final bool? isSyncedWithClod,
          @JsonKey(name: consts.colorColumn) final int? color,
          @JsonKey(name: consts.dateColumn) final DateTime? date}) =
      _$TodoModelImpl;

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$TodoModelImpl.fromJson;

  @override
  @JsonKey(name: consts.idColumn)
  String? get id;
  @override
  @JsonKey(name: consts.taskTable)
  List<TaskModel>? get todos;
  @override
  @JsonKey(name: consts.isSyncedColumn)
  bool? get isSyncedWithClod;
  @override
  @JsonKey(name: consts.colorColumn)
  int? get color;
  @override
  @JsonKey(name: consts.dateColumn)
  DateTime? get date;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
