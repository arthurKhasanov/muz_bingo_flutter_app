// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bingo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BingoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingoEventCopyWith<$Res> {
  factory $BingoEventCopyWith(
          BingoEvent value, $Res Function(BingoEvent) then) =
      _$BingoEventCopyWithImpl<$Res, BingoEvent>;
}

/// @nodoc
class _$BingoEventCopyWithImpl<$Res, $Val extends BingoEvent>
    implements $BingoEventCopyWith<$Res> {
  _$BingoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSavedBingoSetsImplCopyWith<$Res> {
  factory _$$GetSavedBingoSetsImplCopyWith(_$GetSavedBingoSetsImpl value,
          $Res Function(_$GetSavedBingoSetsImpl) then) =
      __$$GetSavedBingoSetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedBingoSetsImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$GetSavedBingoSetsImpl>
    implements _$$GetSavedBingoSetsImplCopyWith<$Res> {
  __$$GetSavedBingoSetsImplCopyWithImpl(_$GetSavedBingoSetsImpl _value,
      $Res Function(_$GetSavedBingoSetsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSavedBingoSetsImpl implements _GetSavedBingoSets {
  const _$GetSavedBingoSetsImpl();

  @override
  String toString() {
    return 'BingoEvent.getSavedBingoSets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSavedBingoSetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return getSavedBingoSets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return getSavedBingoSets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (getSavedBingoSets != null) {
      return getSavedBingoSets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return getSavedBingoSets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return getSavedBingoSets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (getSavedBingoSets != null) {
      return getSavedBingoSets(this);
    }
    return orElse();
  }
}

abstract class _GetSavedBingoSets implements BingoEvent {
  const factory _GetSavedBingoSets() = _$GetSavedBingoSetsImpl;
}

/// @nodoc
abstract class _$$GenerateBingoSetImplCopyWith<$Res> {
  factory _$$GenerateBingoSetImplCopyWith(_$GenerateBingoSetImpl value,
          $Res Function(_$GenerateBingoSetImpl) then) =
      __$$GenerateBingoSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      int count,
      List<SongEntity> selectedSongs,
      Uint8List? backgroundImageBytes});
}

/// @nodoc
class __$$GenerateBingoSetImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$GenerateBingoSetImpl>
    implements _$$GenerateBingoSetImplCopyWith<$Res> {
  __$$GenerateBingoSetImplCopyWithImpl(_$GenerateBingoSetImpl _value,
      $Res Function(_$GenerateBingoSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? count = null,
    Object? selectedSongs = null,
    Object? backgroundImageBytes = freezed,
  }) {
    return _then(_$GenerateBingoSetImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSongs: null == selectedSongs
          ? _value._selectedSongs
          : selectedSongs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
      backgroundImageBytes: freezed == backgroundImageBytes
          ? _value.backgroundImageBytes
          : backgroundImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$GenerateBingoSetImpl implements _GenerateBingoSet {
  const _$GenerateBingoSetImpl(
      {required this.title,
      required this.count,
      required final List<SongEntity> selectedSongs,
      this.backgroundImageBytes})
      : _selectedSongs = selectedSongs;

  @override
  final String title;
  @override
  final int count;
  final List<SongEntity> _selectedSongs;
  @override
  List<SongEntity> get selectedSongs {
    if (_selectedSongs is EqualUnmodifiableListView) return _selectedSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSongs);
  }

  @override
  final Uint8List? backgroundImageBytes;

  @override
  String toString() {
    return 'BingoEvent.generateBingoSet(title: $title, count: $count, selectedSongs: $selectedSongs, backgroundImageBytes: $backgroundImageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateBingoSetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._selectedSongs, _selectedSongs) &&
            const DeepCollectionEquality()
                .equals(other.backgroundImageBytes, backgroundImageBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      count,
      const DeepCollectionEquality().hash(_selectedSongs),
      const DeepCollectionEquality().hash(backgroundImageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateBingoSetImplCopyWith<_$GenerateBingoSetImpl> get copyWith =>
      __$$GenerateBingoSetImplCopyWithImpl<_$GenerateBingoSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return generateBingoSet(title, count, selectedSongs, backgroundImageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return generateBingoSet?.call(
        title, count, selectedSongs, backgroundImageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (generateBingoSet != null) {
      return generateBingoSet(
          title, count, selectedSongs, backgroundImageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return generateBingoSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return generateBingoSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (generateBingoSet != null) {
      return generateBingoSet(this);
    }
    return orElse();
  }
}

abstract class _GenerateBingoSet implements BingoEvent {
  const factory _GenerateBingoSet(
      {required final String title,
      required final int count,
      required final List<SongEntity> selectedSongs,
      final Uint8List? backgroundImageBytes}) = _$GenerateBingoSetImpl;

  String get title;
  int get count;
  List<SongEntity> get selectedSongs;
  Uint8List? get backgroundImageBytes;
  @JsonKey(ignore: true)
  _$$GenerateBingoSetImplCopyWith<_$GenerateBingoSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveBingoSetImplCopyWith<$Res> {
  factory _$$SaveBingoSetImplCopyWith(
          _$SaveBingoSetImpl value, $Res Function(_$SaveBingoSetImpl) then) =
      __$$SaveBingoSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BingoSetEntity set});

  $BingoSetEntityCopyWith<$Res> get set;
}

/// @nodoc
class __$$SaveBingoSetImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$SaveBingoSetImpl>
    implements _$$SaveBingoSetImplCopyWith<$Res> {
  __$$SaveBingoSetImplCopyWithImpl(
      _$SaveBingoSetImpl _value, $Res Function(_$SaveBingoSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
  }) {
    return _then(_$SaveBingoSetImpl(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as BingoSetEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BingoSetEntityCopyWith<$Res> get set {
    return $BingoSetEntityCopyWith<$Res>(_value.set, (value) {
      return _then(_value.copyWith(set: value));
    });
  }
}

/// @nodoc

class _$SaveBingoSetImpl implements _SaveBingoSet {
  const _$SaveBingoSetImpl({required this.set});

  @override
  final BingoSetEntity set;

  @override
  String toString() {
    return 'BingoEvent.saveBingoSet(set: $set)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveBingoSetImpl &&
            (identical(other.set, set) || other.set == set));
  }

  @override
  int get hashCode => Object.hash(runtimeType, set);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveBingoSetImplCopyWith<_$SaveBingoSetImpl> get copyWith =>
      __$$SaveBingoSetImplCopyWithImpl<_$SaveBingoSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return saveBingoSet(set);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return saveBingoSet?.call(set);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (saveBingoSet != null) {
      return saveBingoSet(set);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return saveBingoSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return saveBingoSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (saveBingoSet != null) {
      return saveBingoSet(this);
    }
    return orElse();
  }
}

abstract class _SaveBingoSet implements BingoEvent {
  const factory _SaveBingoSet({required final BingoSetEntity set}) =
      _$SaveBingoSetImpl;

  BingoSetEntity get set;
  @JsonKey(ignore: true)
  _$$SaveBingoSetImplCopyWith<_$SaveBingoSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBingoSetImplCopyWith<$Res> {
  factory _$$UpdateBingoSetImplCopyWith(_$UpdateBingoSetImpl value,
          $Res Function(_$UpdateBingoSetImpl) then) =
      __$$UpdateBingoSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BingoSetEntity set});

  $BingoSetEntityCopyWith<$Res> get set;
}

/// @nodoc
class __$$UpdateBingoSetImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$UpdateBingoSetImpl>
    implements _$$UpdateBingoSetImplCopyWith<$Res> {
  __$$UpdateBingoSetImplCopyWithImpl(
      _$UpdateBingoSetImpl _value, $Res Function(_$UpdateBingoSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
  }) {
    return _then(_$UpdateBingoSetImpl(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as BingoSetEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BingoSetEntityCopyWith<$Res> get set {
    return $BingoSetEntityCopyWith<$Res>(_value.set, (value) {
      return _then(_value.copyWith(set: value));
    });
  }
}

/// @nodoc

class _$UpdateBingoSetImpl implements _UpdateBingoSet {
  const _$UpdateBingoSetImpl({required this.set});

  @override
  final BingoSetEntity set;

  @override
  String toString() {
    return 'BingoEvent.updateBingoSet(set: $set)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBingoSetImpl &&
            (identical(other.set, set) || other.set == set));
  }

  @override
  int get hashCode => Object.hash(runtimeType, set);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBingoSetImplCopyWith<_$UpdateBingoSetImpl> get copyWith =>
      __$$UpdateBingoSetImplCopyWithImpl<_$UpdateBingoSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return updateBingoSet(set);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return updateBingoSet?.call(set);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (updateBingoSet != null) {
      return updateBingoSet(set);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return updateBingoSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return updateBingoSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (updateBingoSet != null) {
      return updateBingoSet(this);
    }
    return orElse();
  }
}

abstract class _UpdateBingoSet implements BingoEvent {
  const factory _UpdateBingoSet({required final BingoSetEntity set}) =
      _$UpdateBingoSetImpl;

  BingoSetEntity get set;
  @JsonKey(ignore: true)
  _$$UpdateBingoSetImplCopyWith<_$UpdateBingoSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBingoSetImplCopyWith<$Res> {
  factory _$$DeleteBingoSetImplCopyWith(_$DeleteBingoSetImpl value,
          $Res Function(_$DeleteBingoSetImpl) then) =
      __$$DeleteBingoSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteBingoSetImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$DeleteBingoSetImpl>
    implements _$$DeleteBingoSetImplCopyWith<$Res> {
  __$$DeleteBingoSetImplCopyWithImpl(
      _$DeleteBingoSetImpl _value, $Res Function(_$DeleteBingoSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteBingoSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteBingoSetImpl implements _DeleteBingoSet {
  const _$DeleteBingoSetImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'BingoEvent.deleteBingoSet(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBingoSetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBingoSetImplCopyWith<_$DeleteBingoSetImpl> get copyWith =>
      __$$DeleteBingoSetImplCopyWithImpl<_$DeleteBingoSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return deleteBingoSet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return deleteBingoSet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (deleteBingoSet != null) {
      return deleteBingoSet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return deleteBingoSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return deleteBingoSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (deleteBingoSet != null) {
      return deleteBingoSet(this);
    }
    return orElse();
  }
}

abstract class _DeleteBingoSet implements BingoEvent {
  const factory _DeleteBingoSet({required final int id}) = _$DeleteBingoSetImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteBingoSetImplCopyWith<_$DeleteBingoSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegenerateBingoCardImplCopyWith<$Res> {
  factory _$$RegenerateBingoCardImplCopyWith(_$RegenerateBingoCardImpl value,
          $Res Function(_$RegenerateBingoCardImpl) then) =
      __$$RegenerateBingoCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BingoSetEntity set, int index, List<SongEntity> pool});

  $BingoSetEntityCopyWith<$Res> get set;
}

/// @nodoc
class __$$RegenerateBingoCardImplCopyWithImpl<$Res>
    extends _$BingoEventCopyWithImpl<$Res, _$RegenerateBingoCardImpl>
    implements _$$RegenerateBingoCardImplCopyWith<$Res> {
  __$$RegenerateBingoCardImplCopyWithImpl(_$RegenerateBingoCardImpl _value,
      $Res Function(_$RegenerateBingoCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
    Object? index = null,
    Object? pool = null,
  }) {
    return _then(_$RegenerateBingoCardImpl(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as BingoSetEntity,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pool: null == pool
          ? _value._pool
          : pool // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BingoSetEntityCopyWith<$Res> get set {
    return $BingoSetEntityCopyWith<$Res>(_value.set, (value) {
      return _then(_value.copyWith(set: value));
    });
  }
}

/// @nodoc

class _$RegenerateBingoCardImpl implements _RegenerateBingoCard {
  const _$RegenerateBingoCardImpl(
      {required this.set,
      required this.index,
      required final List<SongEntity> pool})
      : _pool = pool;

  @override
  final BingoSetEntity set;
  @override
  final int index;
  final List<SongEntity> _pool;
  @override
  List<SongEntity> get pool {
    if (_pool is EqualUnmodifiableListView) return _pool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pool);
  }

  @override
  String toString() {
    return 'BingoEvent.regenerateBingoCard(set: $set, index: $index, pool: $pool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerateBingoCardImpl &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._pool, _pool));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, set, index, const DeepCollectionEquality().hash(_pool));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerateBingoCardImplCopyWith<_$RegenerateBingoCardImpl> get copyWith =>
      __$$RegenerateBingoCardImplCopyWithImpl<_$RegenerateBingoCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedBingoSets,
    required TResult Function(String title, int count,
            List<SongEntity> selectedSongs, Uint8List? backgroundImageBytes)
        generateBingoSet,
    required TResult Function(BingoSetEntity set) saveBingoSet,
    required TResult Function(BingoSetEntity set) updateBingoSet,
    required TResult Function(int id) deleteBingoSet,
    required TResult Function(
            BingoSetEntity set, int index, List<SongEntity> pool)
        regenerateBingoCard,
  }) {
    return regenerateBingoCard(set, index, pool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSavedBingoSets,
    TResult? Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult? Function(BingoSetEntity set)? saveBingoSet,
    TResult? Function(BingoSetEntity set)? updateBingoSet,
    TResult? Function(int id)? deleteBingoSet,
    TResult? Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
  }) {
    return regenerateBingoCard?.call(set, index, pool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedBingoSets,
    TResult Function(String title, int count, List<SongEntity> selectedSongs,
            Uint8List? backgroundImageBytes)?
        generateBingoSet,
    TResult Function(BingoSetEntity set)? saveBingoSet,
    TResult Function(BingoSetEntity set)? updateBingoSet,
    TResult Function(int id)? deleteBingoSet,
    TResult Function(BingoSetEntity set, int index, List<SongEntity> pool)?
        regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (regenerateBingoCard != null) {
      return regenerateBingoCard(set, index, pool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedBingoSets value) getSavedBingoSets,
    required TResult Function(_GenerateBingoSet value) generateBingoSet,
    required TResult Function(_SaveBingoSet value) saveBingoSet,
    required TResult Function(_UpdateBingoSet value) updateBingoSet,
    required TResult Function(_DeleteBingoSet value) deleteBingoSet,
    required TResult Function(_RegenerateBingoCard value) regenerateBingoCard,
  }) {
    return regenerateBingoCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult? Function(_GenerateBingoSet value)? generateBingoSet,
    TResult? Function(_SaveBingoSet value)? saveBingoSet,
    TResult? Function(_UpdateBingoSet value)? updateBingoSet,
    TResult? Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult? Function(_RegenerateBingoCard value)? regenerateBingoCard,
  }) {
    return regenerateBingoCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedBingoSets value)? getSavedBingoSets,
    TResult Function(_GenerateBingoSet value)? generateBingoSet,
    TResult Function(_SaveBingoSet value)? saveBingoSet,
    TResult Function(_UpdateBingoSet value)? updateBingoSet,
    TResult Function(_DeleteBingoSet value)? deleteBingoSet,
    TResult Function(_RegenerateBingoCard value)? regenerateBingoCard,
    required TResult orElse(),
  }) {
    if (regenerateBingoCard != null) {
      return regenerateBingoCard(this);
    }
    return orElse();
  }
}

abstract class _RegenerateBingoCard implements BingoEvent {
  const factory _RegenerateBingoCard(
      {required final BingoSetEntity set,
      required final int index,
      required final List<SongEntity> pool}) = _$RegenerateBingoCardImpl;

  BingoSetEntity get set;
  int get index;
  List<SongEntity> get pool;
  @JsonKey(ignore: true)
  _$$RegenerateBingoCardImplCopyWith<_$RegenerateBingoCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BingoState {
  BingoStatus get status => throw _privateConstructorUsedError;
  List<BingoSetEntity> get sets => throw _privateConstructorUsedError;
  BingoSetEntity? get generatedSet => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BingoStateCopyWith<BingoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingoStateCopyWith<$Res> {
  factory $BingoStateCopyWith(
          BingoState value, $Res Function(BingoState) then) =
      _$BingoStateCopyWithImpl<$Res, BingoState>;
  @useResult
  $Res call(
      {BingoStatus status,
      List<BingoSetEntity> sets,
      BingoSetEntity? generatedSet,
      String? errorMessage});

  $BingoSetEntityCopyWith<$Res>? get generatedSet;
}

/// @nodoc
class _$BingoStateCopyWithImpl<$Res, $Val extends BingoState>
    implements $BingoStateCopyWith<$Res> {
  _$BingoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sets = null,
    Object? generatedSet = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BingoStatus,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<BingoSetEntity>,
      generatedSet: freezed == generatedSet
          ? _value.generatedSet
          : generatedSet // ignore: cast_nullable_to_non_nullable
              as BingoSetEntity?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BingoSetEntityCopyWith<$Res>? get generatedSet {
    if (_value.generatedSet == null) {
      return null;
    }

    return $BingoSetEntityCopyWith<$Res>(_value.generatedSet!, (value) {
      return _then(_value.copyWith(generatedSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BingoStateImplCopyWith<$Res>
    implements $BingoStateCopyWith<$Res> {
  factory _$$BingoStateImplCopyWith(
          _$BingoStateImpl value, $Res Function(_$BingoStateImpl) then) =
      __$$BingoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BingoStatus status,
      List<BingoSetEntity> sets,
      BingoSetEntity? generatedSet,
      String? errorMessage});

  @override
  $BingoSetEntityCopyWith<$Res>? get generatedSet;
}

/// @nodoc
class __$$BingoStateImplCopyWithImpl<$Res>
    extends _$BingoStateCopyWithImpl<$Res, _$BingoStateImpl>
    implements _$$BingoStateImplCopyWith<$Res> {
  __$$BingoStateImplCopyWithImpl(
      _$BingoStateImpl _value, $Res Function(_$BingoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sets = null,
    Object? generatedSet = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BingoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BingoStatus,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<BingoSetEntity>,
      generatedSet: freezed == generatedSet
          ? _value.generatedSet
          : generatedSet // ignore: cast_nullable_to_non_nullable
              as BingoSetEntity?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BingoStateImpl implements _BingoState {
  const _$BingoStateImpl(
      {this.status = BingoStatus.initial,
      final List<BingoSetEntity> sets = const [],
      this.generatedSet,
      this.errorMessage})
      : _sets = sets;

  @override
  @JsonKey()
  final BingoStatus status;
  final List<BingoSetEntity> _sets;
  @override
  @JsonKey()
  List<BingoSetEntity> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  final BingoSetEntity? generatedSet;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BingoState(status: $status, sets: $sets, generatedSet: $generatedSet, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            (identical(other.generatedSet, generatedSet) ||
                other.generatedSet == generatedSet) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_sets), generatedSet, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingoStateImplCopyWith<_$BingoStateImpl> get copyWith =>
      __$$BingoStateImplCopyWithImpl<_$BingoStateImpl>(this, _$identity);
}

abstract class _BingoState implements BingoState {
  const factory _BingoState(
      {final BingoStatus status,
      final List<BingoSetEntity> sets,
      final BingoSetEntity? generatedSet,
      final String? errorMessage}) = _$BingoStateImpl;

  @override
  BingoStatus get status;
  @override
  List<BingoSetEntity> get sets;
  @override
  BingoSetEntity? get generatedSet;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BingoStateImplCopyWith<_$BingoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
