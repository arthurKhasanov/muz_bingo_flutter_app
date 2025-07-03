// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bingo_set_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BingoSetEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<BingoCardEntity> get cards => throw _privateConstructorUsedError;
  Uint8List get backgroundImageBytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BingoSetEntityCopyWith<BingoSetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingoSetEntityCopyWith<$Res> {
  factory $BingoSetEntityCopyWith(
          BingoSetEntity value, $Res Function(BingoSetEntity) then) =
      _$BingoSetEntityCopyWithImpl<$Res, BingoSetEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      List<BingoCardEntity> cards,
      Uint8List backgroundImageBytes});
}

/// @nodoc
class _$BingoSetEntityCopyWithImpl<$Res, $Val extends BingoSetEntity>
    implements $BingoSetEntityCopyWith<$Res> {
  _$BingoSetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
    Object? backgroundImageBytes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BingoCardEntity>,
      backgroundImageBytes: null == backgroundImageBytes
          ? _value.backgroundImageBytes
          : backgroundImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BingoSetEntityImplCopyWith<$Res>
    implements $BingoSetEntityCopyWith<$Res> {
  factory _$$BingoSetEntityImplCopyWith(_$BingoSetEntityImpl value,
          $Res Function(_$BingoSetEntityImpl) then) =
      __$$BingoSetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      List<BingoCardEntity> cards,
      Uint8List backgroundImageBytes});
}

/// @nodoc
class __$$BingoSetEntityImplCopyWithImpl<$Res>
    extends _$BingoSetEntityCopyWithImpl<$Res, _$BingoSetEntityImpl>
    implements _$$BingoSetEntityImplCopyWith<$Res> {
  __$$BingoSetEntityImplCopyWithImpl(
      _$BingoSetEntityImpl _value, $Res Function(_$BingoSetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
    Object? backgroundImageBytes = null,
  }) {
    return _then(_$BingoSetEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BingoCardEntity>,
      backgroundImageBytes: null == backgroundImageBytes
          ? _value.backgroundImageBytes
          : backgroundImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$BingoSetEntityImpl implements _BingoSetEntity {
  const _$BingoSetEntityImpl(
      {required this.id,
      required this.title,
      required final List<BingoCardEntity> cards,
      required this.backgroundImageBytes})
      : _cards = cards;

  @override
  final int id;
  @override
  final String title;
  final List<BingoCardEntity> _cards;
  @override
  List<BingoCardEntity> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final Uint8List backgroundImageBytes;

  @override
  String toString() {
    return 'BingoSetEntity(id: $id, title: $title, cards: $cards, backgroundImageBytes: $backgroundImageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingoSetEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality()
                .equals(other.backgroundImageBytes, backgroundImageBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(backgroundImageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingoSetEntityImplCopyWith<_$BingoSetEntityImpl> get copyWith =>
      __$$BingoSetEntityImplCopyWithImpl<_$BingoSetEntityImpl>(
          this, _$identity);
}

abstract class _BingoSetEntity implements BingoSetEntity {
  const factory _BingoSetEntity(
      {required final int id,
      required final String title,
      required final List<BingoCardEntity> cards,
      required final Uint8List backgroundImageBytes}) = _$BingoSetEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  List<BingoCardEntity> get cards;
  @override
  Uint8List get backgroundImageBytes;
  @override
  @JsonKey(ignore: true)
  _$$BingoSetEntityImplCopyWith<_$BingoSetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
