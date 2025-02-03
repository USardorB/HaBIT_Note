// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../todos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodosModel _$TodosModelFromJson(Map<String, dynamic> json) {
  return _TodosModel.fromJson(json);
}

/// @nodoc
mixin _$TodosModel {
  String get id => throw _privateConstructorUsedError;
  List<TodoModel> get todos => throw _privateConstructorUsedError;
  bool get isSyncedWithClod => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this TodosModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodosModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodosModelCopyWith<TodosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosModelCopyWith<$Res> {
  factory $TodosModelCopyWith(
          TodosModel value, $Res Function(TodosModel) then) =
      _$TodosModelCopyWithImpl<$Res, TodosModel>;
  @useResult
  $Res call(
      {String id,
      List<TodoModel> todos,
      bool isSyncedWithClod,
      int color,
      DateTime date});
}

/// @nodoc
class _$TodosModelCopyWithImpl<$Res, $Val extends TodosModel>
    implements $TodosModelCopyWith<$Res> {
  _$TodosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodosModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todos = null,
    Object? isSyncedWithClod = null,
    Object? color = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      isSyncedWithClod: null == isSyncedWithClod
          ? _value.isSyncedWithClod
          : isSyncedWithClod // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosModelImplCopyWith<$Res>
    implements $TodosModelCopyWith<$Res> {
  factory _$$TodosModelImplCopyWith(
          _$TodosModelImpl value, $Res Function(_$TodosModelImpl) then) =
      __$$TodosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<TodoModel> todos,
      bool isSyncedWithClod,
      int color,
      DateTime date});
}

/// @nodoc
class __$$TodosModelImplCopyWithImpl<$Res>
    extends _$TodosModelCopyWithImpl<$Res, _$TodosModelImpl>
    implements _$$TodosModelImplCopyWith<$Res> {
  __$$TodosModelImplCopyWithImpl(
      _$TodosModelImpl _value, $Res Function(_$TodosModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodosModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todos = null,
    Object? isSyncedWithClod = null,
    Object? color = null,
    Object? date = null,
  }) {
    return _then(_$TodosModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      isSyncedWithClod: null == isSyncedWithClod
          ? _value.isSyncedWithClod
          : isSyncedWithClod // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodosModelImpl implements _TodosModel {
  const _$TodosModelImpl(
      {required this.id,
      required final List<TodoModel> todos,
      required this.isSyncedWithClod,
      required this.color,
      required this.date})
      : _todos = todos;

  factory _$TodosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodosModelImplFromJson(json);

  @override
  final String id;
  final List<TodoModel> _todos;
  @override
  List<TodoModel> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final bool isSyncedWithClod;
  @override
  final int color;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'TodosModel(id: $id, todos: $todos, isSyncedWithClod: $isSyncedWithClod, color: $color, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosModelImpl &&
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

  /// Create a copy of TodosModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosModelImplCopyWith<_$TodosModelImpl> get copyWith =>
      __$$TodosModelImplCopyWithImpl<_$TodosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodosModelImplToJson(
      this,
    );
  }
}

abstract class _TodosModel implements TodosModel {
  const factory _TodosModel(
      {required final String id,
      required final List<TodoModel> todos,
      required final bool isSyncedWithClod,
      required final int color,
      required final DateTime date}) = _$TodosModelImpl;

  factory _TodosModel.fromJson(Map<String, dynamic> json) =
      _$TodosModelImpl.fromJson;

  @override
  String get id;
  @override
  List<TodoModel> get todos;
  @override
  bool get isSyncedWithClod;
  @override
  int get color;
  @override
  DateTime get date;

  /// Create a copy of TodosModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodosModelImplCopyWith<_$TodosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
