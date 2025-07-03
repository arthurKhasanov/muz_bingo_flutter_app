// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bingo_card_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BingoCardEntity {
  int get id => throw _privateConstructorUsedError;
  List<SongEntity> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BingoCardEntityCopyWith<BingoCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingoCardEntityCopyWith<$Res> {
  factory $BingoCardEntityCopyWith(
          BingoCardEntity value, $Res Function(BingoCardEntity) then) =
      _$BingoCardEntityCopyWithImpl<$Res, BingoCardEntity>;
  @useResult
  $Res call({int id, List<SongEntity> songs});
}

/// @nodoc
class _$BingoCardEntityCopyWithImpl<$Res, $Val extends BingoCardEntity>
    implements $BingoCardEntityCopyWith<$Res> {
  _$BingoCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BingoCardEntityImplCopyWith<$Res>
    implements $BingoCardEntityCopyWith<$Res> {
  factory _$$BingoCardEntityImplCopyWith(_$BingoCardEntityImpl value,
          $Res Function(_$BingoCardEntityImpl) then) =
      __$$BingoCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<SongEntity> songs});
}

/// @nodoc
class __$$BingoCardEntityImplCopyWithImpl<$Res>
    extends _$BingoCardEntityCopyWithImpl<$Res, _$BingoCardEntityImpl>
    implements _$$BingoCardEntityImplCopyWith<$Res> {
  __$$BingoCardEntityImplCopyWithImpl(
      _$BingoCardEntityImpl _value, $Res Function(_$BingoCardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songs = null,
  }) {
    return _then(_$BingoCardEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
    ));
  }
}

/// @nodoc

class _$BingoCardEntityImpl implements _BingoCardEntity {
  const _$BingoCardEntityImpl(
      {required this.id, required final List<SongEntity> songs})
      : _songs = songs;

  @override
  final int id;
  final List<SongEntity> _songs;
  @override
  List<SongEntity> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'BingoCardEntity(id: $id, songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingoCardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingoCardEntityImplCopyWith<_$BingoCardEntityImpl> get copyWith =>
      __$$BingoCardEntityImplCopyWithImpl<_$BingoCardEntityImpl>(
          this, _$identity);
}

abstract class _BingoCardEntity implements BingoCardEntity {
  const factory _BingoCardEntity(
      {required final int id,
      required final List<SongEntity> songs}) = _$BingoCardEntityImpl;

  @override
  int get id;
  @override
  List<SongEntity> get songs;
  @override
  @JsonKey(ignore: true)
  _$$BingoCardEntityImplCopyWith<_$BingoCardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
