// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongEntity {
  int? get id => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get songName => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongEntityCopyWith<SongEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEntityCopyWith<$Res> {
  factory $SongEntityCopyWith(
          SongEntity value, $Res Function(SongEntity) then) =
      _$SongEntityCopyWithImpl<$Res, SongEntity>;
  @useResult
  $Res call({int? id, String artistName, String songName, bool isSelected});
}

/// @nodoc
class _$SongEntityCopyWithImpl<$Res, $Val extends SongEntity>
    implements $SongEntityCopyWith<$Res> {
  _$SongEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistName = null,
    Object? songName = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongEntityImplCopyWith<$Res>
    implements $SongEntityCopyWith<$Res> {
  factory _$$SongEntityImplCopyWith(
          _$SongEntityImpl value, $Res Function(_$SongEntityImpl) then) =
      __$$SongEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String artistName, String songName, bool isSelected});
}

/// @nodoc
class __$$SongEntityImplCopyWithImpl<$Res>
    extends _$SongEntityCopyWithImpl<$Res, _$SongEntityImpl>
    implements _$$SongEntityImplCopyWith<$Res> {
  __$$SongEntityImplCopyWithImpl(
      _$SongEntityImpl _value, $Res Function(_$SongEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistName = null,
    Object? songName = null,
    Object? isSelected = null,
  }) {
    return _then(_$SongEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SongEntityImpl implements _SongEntity {
  const _$SongEntityImpl(
      {this.id,
      required this.artistName,
      required this.songName,
      this.isSelected = false});

  @override
  final int? id;
  @override
  final String artistName;
  @override
  final String songName;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'SongEntity(id: $id, artistName: $artistName, songName: $songName, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, artistName, songName, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongEntityImplCopyWith<_$SongEntityImpl> get copyWith =>
      __$$SongEntityImplCopyWithImpl<_$SongEntityImpl>(this, _$identity);
}

abstract class _SongEntity implements SongEntity {
  const factory _SongEntity(
      {final int? id,
      required final String artistName,
      required final String songName,
      final bool isSelected}) = _$SongEntityImpl;

  @override
  int? get id;
  @override
  String get artistName;
  @override
  String get songName;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$SongEntityImplCopyWith<_$SongEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
