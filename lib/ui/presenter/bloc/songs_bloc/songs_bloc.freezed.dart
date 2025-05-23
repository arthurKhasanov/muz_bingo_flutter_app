// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'songs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsEventCopyWith<$Res> {
  factory $SongsEventCopyWith(
          SongsEvent value, $Res Function(SongsEvent) then) =
      _$SongsEventCopyWithImpl<$Res, SongsEvent>;
}

/// @nodoc
class _$SongsEventCopyWithImpl<$Res, $Val extends SongsEvent>
    implements $SongsEventCopyWith<$Res> {
  _$SongsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSongsImplCopyWith<$Res> {
  factory _$$GetSongsImplCopyWith(
          _$GetSongsImpl value, $Res Function(_$GetSongsImpl) then) =
      __$$GetSongsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchSongsMode mode});
}

/// @nodoc
class __$$GetSongsImplCopyWithImpl<$Res>
    extends _$SongsEventCopyWithImpl<$Res, _$GetSongsImpl>
    implements _$$GetSongsImplCopyWith<$Res> {
  __$$GetSongsImplCopyWithImpl(
      _$GetSongsImpl _value, $Res Function(_$GetSongsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$GetSongsImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FetchSongsMode,
    ));
  }
}

/// @nodoc

class _$GetSongsImpl implements _GetSongs {
  const _$GetSongsImpl({required this.mode});

  @override
  final FetchSongsMode mode;

  @override
  String toString() {
    return 'SongsEvent.getSongs(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSongsImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSongsImplCopyWith<_$GetSongsImpl> get copyWith =>
      __$$GetSongsImplCopyWithImpl<_$GetSongsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) {
    return getSongs(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) {
    return getSongs?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return getSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return getSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs(this);
    }
    return orElse();
  }
}

abstract class _GetSongs implements SongsEvent {
  const factory _GetSongs({required final FetchSongsMode mode}) =
      _$GetSongsImpl;

  FetchSongsMode get mode;
  @JsonKey(ignore: true)
  _$$GetSongsImplCopyWith<_$GetSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSongImplCopyWith<$Res> {
  factory _$$SaveSongImplCopyWith(
          _$SaveSongImpl value, $Res Function(_$SaveSongImpl) then) =
      __$$SaveSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistName, String songName, bool isSelected});
}

/// @nodoc
class __$$SaveSongImplCopyWithImpl<$Res>
    extends _$SongsEventCopyWithImpl<$Res, _$SaveSongImpl>
    implements _$$SaveSongImplCopyWith<$Res> {
  __$$SaveSongImplCopyWithImpl(
      _$SaveSongImpl _value, $Res Function(_$SaveSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? songName = null,
    Object? isSelected = null,
  }) {
    return _then(_$SaveSongImpl(
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

class _$SaveSongImpl implements _SaveSong {
  const _$SaveSongImpl(
      {required this.artistName,
      required this.songName,
      this.isSelected = false});

  @override
  final String artistName;
  @override
  final String songName;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'SongsEvent.saveSong(artistName: $artistName, songName: $songName, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSongImpl &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, artistName, songName, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSongImplCopyWith<_$SaveSongImpl> get copyWith =>
      __$$SaveSongImplCopyWithImpl<_$SaveSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) {
    return saveSong(artistName, songName, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) {
    return saveSong?.call(artistName, songName, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (saveSong != null) {
      return saveSong(artistName, songName, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return saveSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return saveSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (saveSong != null) {
      return saveSong(this);
    }
    return orElse();
  }
}

abstract class _SaveSong implements SongsEvent {
  const factory _SaveSong(
      {required final String artistName,
      required final String songName,
      final bool isSelected}) = _$SaveSongImpl;

  String get artistName;
  String get songName;
  bool get isSelected;
  @JsonKey(ignore: true)
  _$$SaveSongImplCopyWith<_$SaveSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSongImplCopyWith<$Res> {
  factory _$$UpdateSongImplCopyWith(
          _$UpdateSongImpl value, $Res Function(_$UpdateSongImpl) then) =
      __$$UpdateSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String artistName, String songName, bool isSelected});
}

/// @nodoc
class __$$UpdateSongImplCopyWithImpl<$Res>
    extends _$SongsEventCopyWithImpl<$Res, _$UpdateSongImpl>
    implements _$$UpdateSongImplCopyWith<$Res> {
  __$$UpdateSongImplCopyWithImpl(
      _$UpdateSongImpl _value, $Res Function(_$UpdateSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistName = null,
    Object? songName = null,
    Object? isSelected = null,
  }) {
    return _then(_$UpdateSongImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$UpdateSongImpl implements _UpdateSong {
  const _$UpdateSongImpl(
      {required this.id,
      required this.artistName,
      required this.songName,
      this.isSelected = false});

  @override
  final int id;
  @override
  final String artistName;
  @override
  final String songName;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'SongsEvent.updateSong(id: $id, artistName: $artistName, songName: $songName, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSongImpl &&
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
  _$$UpdateSongImplCopyWith<_$UpdateSongImpl> get copyWith =>
      __$$UpdateSongImplCopyWithImpl<_$UpdateSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) {
    return updateSong(id, artistName, songName, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) {
    return updateSong?.call(id, artistName, songName, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (updateSong != null) {
      return updateSong(id, artistName, songName, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return updateSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return updateSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (updateSong != null) {
      return updateSong(this);
    }
    return orElse();
  }
}

abstract class _UpdateSong implements SongsEvent {
  const factory _UpdateSong(
      {required final int id,
      required final String artistName,
      required final String songName,
      final bool isSelected}) = _$UpdateSongImpl;

  int get id;
  String get artistName;
  String get songName;
  bool get isSelected;
  @JsonKey(ignore: true)
  _$$UpdateSongImplCopyWith<_$UpdateSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSongImplCopyWith<$Res> {
  factory _$$DeleteSongImplCopyWith(
          _$DeleteSongImpl value, $Res Function(_$DeleteSongImpl) then) =
      __$$DeleteSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int id});
}

/// @nodoc
class __$$DeleteSongImplCopyWithImpl<$Res>
    extends _$SongsEventCopyWithImpl<$Res, _$DeleteSongImpl>
    implements _$$DeleteSongImplCopyWith<$Res> {
  __$$DeleteSongImplCopyWithImpl(
      _$DeleteSongImpl _value, $Res Function(_$DeleteSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? id = null,
  }) {
    return _then(_$DeleteSongImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSongImpl implements _DeleteSong {
  const _$DeleteSongImpl({required this.index, required this.id});

  @override
  final int index;
  @override
  final int id;

  @override
  String toString() {
    return 'SongsEvent.deleteSong(index: $index, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSongImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSongImplCopyWith<_$DeleteSongImpl> get copyWith =>
      __$$DeleteSongImplCopyWithImpl<_$DeleteSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) {
    return deleteSong(index, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) {
    return deleteSong?.call(index, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(index, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return deleteSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return deleteSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(this);
    }
    return orElse();
  }
}

abstract class _DeleteSong implements SongsEvent {
  const factory _DeleteSong({required final int index, required final int id}) =
      _$DeleteSongImpl;

  int get index;
  int get id;
  @JsonKey(ignore: true)
  _$$DeleteSongImplCopyWith<_$DeleteSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSelectionImplCopyWith<$Res> {
  factory _$$ToggleSelectionImplCopyWith(_$ToggleSelectionImpl value,
          $Res Function(_$ToggleSelectionImpl) then) =
      __$$ToggleSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ToggleSelectionImplCopyWithImpl<$Res>
    extends _$SongsEventCopyWithImpl<$Res, _$ToggleSelectionImpl>
    implements _$$ToggleSelectionImplCopyWith<$Res> {
  __$$ToggleSelectionImplCopyWithImpl(
      _$ToggleSelectionImpl _value, $Res Function(_$ToggleSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleSelectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleSelectionImpl implements _ToggleSelection {
  const _$ToggleSelectionImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SongsEvent.toggleSelection(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSelectionImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSelectionImplCopyWith<_$ToggleSelectionImpl> get copyWith =>
      __$$ToggleSelectionImplCopyWithImpl<_$ToggleSelectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSongsMode mode) getSongs,
    required TResult Function(
            String artistName, String songName, bool isSelected)
        saveSong,
    required TResult Function(
            int id, String artistName, String songName, bool isSelected)
        updateSong,
    required TResult Function(int index, int id) deleteSong,
    required TResult Function(int id) toggleSelection,
  }) {
    return toggleSelection(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSongsMode mode)? getSongs,
    TResult? Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult? Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult? Function(int index, int id)? deleteSong,
    TResult? Function(int id)? toggleSelection,
  }) {
    return toggleSelection?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSongsMode mode)? getSongs,
    TResult Function(String artistName, String songName, bool isSelected)?
        saveSong,
    TResult Function(
            int id, String artistName, String songName, bool isSelected)?
        updateSong,
    TResult Function(int index, int id)? deleteSong,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SaveSong value) saveSong,
    required TResult Function(_UpdateSong value) updateSong,
    required TResult Function(_DeleteSong value) deleteSong,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SaveSong value)? saveSong,
    TResult? Function(_UpdateSong value)? updateSong,
    TResult? Function(_DeleteSong value)? deleteSong,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return toggleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SaveSong value)? saveSong,
    TResult Function(_UpdateSong value)? updateSong,
    TResult Function(_DeleteSong value)? deleteSong,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelection implements SongsEvent {
  const factory _ToggleSelection({required final int id}) =
      _$ToggleSelectionImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ToggleSelectionImplCopyWith<_$ToggleSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SongsState {
  List<SongEntity> get songs => throw _privateConstructorUsedError;
  SongsListStateStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongsStateCopyWith<SongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsStateCopyWith<$Res> {
  factory $SongsStateCopyWith(
          SongsState value, $Res Function(SongsState) then) =
      _$SongsStateCopyWithImpl<$Res, SongsState>;
  @useResult
  $Res call(
      {List<SongEntity> songs,
      SongsListStateStatus status,
      String? errorMessage});
}

/// @nodoc
class _$SongsStateCopyWithImpl<$Res, $Val extends SongsState>
    implements $SongsStateCopyWith<$Res> {
  _$SongsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SongsListStateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongsStateImplCopyWith<$Res>
    implements $SongsStateCopyWith<$Res> {
  factory _$$SongsStateImplCopyWith(
          _$SongsStateImpl value, $Res Function(_$SongsStateImpl) then) =
      __$$SongsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SongEntity> songs,
      SongsListStateStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$SongsStateImplCopyWithImpl<$Res>
    extends _$SongsStateCopyWithImpl<$Res, _$SongsStateImpl>
    implements _$$SongsStateImplCopyWith<$Res> {
  __$$SongsStateImplCopyWithImpl(
      _$SongsStateImpl _value, $Res Function(_$SongsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SongsStateImpl(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SongsListStateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SongsStateImpl implements _SongsState {
  const _$SongsStateImpl(
      {final List<SongEntity> songs = const [],
      this.status = SongsListStateStatus.initial,
      this.errorMessage = null})
      : _songs = songs;

  final List<SongEntity> _songs;
  @override
  @JsonKey()
  List<SongEntity> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  @JsonKey()
  final SongsListStateStatus status;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'SongsState(songs: $songs, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongsStateImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_songs), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongsStateImplCopyWith<_$SongsStateImpl> get copyWith =>
      __$$SongsStateImplCopyWithImpl<_$SongsStateImpl>(this, _$identity);
}

abstract class _SongsState implements SongsState {
  const factory _SongsState(
      {final List<SongEntity> songs,
      final SongsListStateStatus status,
      final String? errorMessage}) = _$SongsStateImpl;

  @override
  List<SongEntity> get songs;
  @override
  SongsListStateStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SongsStateImplCopyWith<_$SongsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
