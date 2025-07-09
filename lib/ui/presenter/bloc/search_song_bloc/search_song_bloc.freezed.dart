// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchSongEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SongsSearchType type) searchSong,
    required TResult Function() clearSearch,
    required TResult Function(int id) toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SongsSearchType type)? searchSong,
    TResult? Function()? clearSearch,
    TResult? Function(int id)? toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SongsSearchType type)? searchSong,
    TResult Function()? clearSearch,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSongs value) searchSong,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSongs value)? searchSong,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSongs value)? searchSong,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSongEventCopyWith<$Res> {
  factory $SearchSongEventCopyWith(
          SearchSongEvent value, $Res Function(SearchSongEvent) then) =
      _$SearchSongEventCopyWithImpl<$Res, SearchSongEvent>;
}

/// @nodoc
class _$SearchSongEventCopyWithImpl<$Res, $Val extends SearchSongEvent>
    implements $SearchSongEventCopyWith<$Res> {
  _$SearchSongEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchSongsImplCopyWith<$Res> {
  factory _$$SearchSongsImplCopyWith(
          _$SearchSongsImpl value, $Res Function(_$SearchSongsImpl) then) =
      __$$SearchSongsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SongsSearchType type});
}

/// @nodoc
class __$$SearchSongsImplCopyWithImpl<$Res>
    extends _$SearchSongEventCopyWithImpl<$Res, _$SearchSongsImpl>
    implements _$$SearchSongsImplCopyWith<$Res> {
  __$$SearchSongsImplCopyWithImpl(
      _$SearchSongsImpl _value, $Res Function(_$SearchSongsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? type = null,
  }) {
    return _then(_$SearchSongsImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SongsSearchType,
    ));
  }
}

/// @nodoc

class _$SearchSongsImpl implements _SearchSongs {
  const _$SearchSongsImpl({required this.query, required this.type});

  @override
  final String query;
  @override
  final SongsSearchType type;

  @override
  String toString() {
    return 'SearchSongEvent.searchSong(query: $query, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSongsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSongsImplCopyWith<_$SearchSongsImpl> get copyWith =>
      __$$SearchSongsImplCopyWithImpl<_$SearchSongsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SongsSearchType type) searchSong,
    required TResult Function() clearSearch,
    required TResult Function(int id) toggleSelection,
  }) {
    return searchSong(query, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SongsSearchType type)? searchSong,
    TResult? Function()? clearSearch,
    TResult? Function(int id)? toggleSelection,
  }) {
    return searchSong?.call(query, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SongsSearchType type)? searchSong,
    TResult Function()? clearSearch,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (searchSong != null) {
      return searchSong(query, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSongs value) searchSong,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return searchSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSongs value)? searchSong,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return searchSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSongs value)? searchSong,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (searchSong != null) {
      return searchSong(this);
    }
    return orElse();
  }
}

abstract class _SearchSongs implements SearchSongEvent {
  const factory _SearchSongs(
      {required final String query,
      required final SongsSearchType type}) = _$SearchSongsImpl;

  String get query;
  SongsSearchType get type;
  @JsonKey(ignore: true)
  _$$SearchSongsImplCopyWith<_$SearchSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res> {
  factory _$$ClearSearchImplCopyWith(
          _$ClearSearchImpl value, $Res Function(_$ClearSearchImpl) then) =
      __$$ClearSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res>
    extends _$SearchSongEventCopyWithImpl<$Res, _$ClearSearchImpl>
    implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(
      _$ClearSearchImpl _value, $Res Function(_$ClearSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSearchImpl implements _ClearSearch {
  const _$ClearSearchImpl();

  @override
  String toString() {
    return 'SearchSongEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SongsSearchType type) searchSong,
    required TResult Function() clearSearch,
    required TResult Function(int id) toggleSelection,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SongsSearchType type)? searchSong,
    TResult? Function()? clearSearch,
    TResult? Function(int id)? toggleSelection,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SongsSearchType type)? searchSong,
    TResult Function()? clearSearch,
    TResult Function(int id)? toggleSelection,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchSongs value) searchSong,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSongs value)? searchSong,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSongs value)? searchSong,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class _ClearSearch implements SearchSongEvent {
  const factory _ClearSearch() = _$ClearSearchImpl;
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
    extends _$SearchSongEventCopyWithImpl<$Res, _$ToggleSelectionImpl>
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
    return 'SearchSongEvent.toggleSelection(id: $id)';
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
    required TResult Function(String query, SongsSearchType type) searchSong,
    required TResult Function() clearSearch,
    required TResult Function(int id) toggleSelection,
  }) {
    return toggleSelection(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, SongsSearchType type)? searchSong,
    TResult? Function()? clearSearch,
    TResult? Function(int id)? toggleSelection,
  }) {
    return toggleSelection?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SongsSearchType type)? searchSong,
    TResult Function()? clearSearch,
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
    required TResult Function(_SearchSongs value) searchSong,
    required TResult Function(_ClearSearch value) clearSearch,
    required TResult Function(_ToggleSelection value) toggleSelection,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchSongs value)? searchSong,
    TResult? Function(_ClearSearch value)? clearSearch,
    TResult? Function(_ToggleSelection value)? toggleSelection,
  }) {
    return toggleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchSongs value)? searchSong,
    TResult Function(_ClearSearch value)? clearSearch,
    TResult Function(_ToggleSelection value)? toggleSelection,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelection implements SearchSongEvent {
  const factory _ToggleSelection({required final int id}) =
      _$ToggleSelectionImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ToggleSelectionImplCopyWith<_$ToggleSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchSongsState {
  List<SongEntity> get foundSongs => throw _privateConstructorUsedError;
  SearchSongsStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSongsStateCopyWith<SearchSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSongsStateCopyWith<$Res> {
  factory $SearchSongsStateCopyWith(
          SearchSongsState value, $Res Function(SearchSongsState) then) =
      _$SearchSongsStateCopyWithImpl<$Res, SearchSongsState>;
  @useResult
  $Res call(
      {List<SongEntity> foundSongs,
      SearchSongsStatus status,
      String? errorMessage});
}

/// @nodoc
class _$SearchSongsStateCopyWithImpl<$Res, $Val extends SearchSongsState>
    implements $SearchSongsStateCopyWith<$Res> {
  _$SearchSongsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundSongs = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      foundSongs: null == foundSongs
          ? _value.foundSongs
          : foundSongs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchSongsStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSongsStateImplCopyWith<$Res>
    implements $SearchSongsStateCopyWith<$Res> {
  factory _$$SearchSongsStateImplCopyWith(_$SearchSongsStateImpl value,
          $Res Function(_$SearchSongsStateImpl) then) =
      __$$SearchSongsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SongEntity> foundSongs,
      SearchSongsStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$SearchSongsStateImplCopyWithImpl<$Res>
    extends _$SearchSongsStateCopyWithImpl<$Res, _$SearchSongsStateImpl>
    implements _$$SearchSongsStateImplCopyWith<$Res> {
  __$$SearchSongsStateImplCopyWithImpl(_$SearchSongsStateImpl _value,
      $Res Function(_$SearchSongsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundSongs = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchSongsStateImpl(
      foundSongs: null == foundSongs
          ? _value._foundSongs
          : foundSongs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchSongsStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchSongsStateImpl implements _SearchSongsState {
  const _$SearchSongsStateImpl(
      {final List<SongEntity> foundSongs = const [],
      this.status = SearchSongsStatus.initial,
      this.errorMessage = null})
      : _foundSongs = foundSongs;

  final List<SongEntity> _foundSongs;
  @override
  @JsonKey()
  List<SongEntity> get foundSongs {
    if (_foundSongs is EqualUnmodifiableListView) return _foundSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foundSongs);
  }

  @override
  @JsonKey()
  final SearchSongsStatus status;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchSongsState(foundSongs: $foundSongs, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSongsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._foundSongs, _foundSongs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_foundSongs), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSongsStateImplCopyWith<_$SearchSongsStateImpl> get copyWith =>
      __$$SearchSongsStateImplCopyWithImpl<_$SearchSongsStateImpl>(
          this, _$identity);
}

abstract class _SearchSongsState implements SearchSongsState {
  const factory _SearchSongsState(
      {final List<SongEntity> foundSongs,
      final SearchSongsStatus status,
      final String? errorMessage}) = _$SearchSongsStateImpl;

  @override
  List<SongEntity> get foundSongs;
  @override
  SearchSongsStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchSongsStateImplCopyWith<_$SearchSongsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
