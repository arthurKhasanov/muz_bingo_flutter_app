part of 'search_song_bloc.dart';

enum SearchSongsStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class SearchSongsState with _$SearchSongsState {
  const factory SearchSongsState({
    @Default([]) List<SongEntity> foundSongs,
    @Default(SearchSongsStatus.initial) SearchSongsStatus status,
    @Default(null) String? errorMessage,
  }) = _SearchSongsState;
}

extension SearchSongStateX on SearchSongsState {
  bool get isLoading => status == SearchSongsStatus.loading;
  bool get isError => status == SearchSongsStatus.error;
  bool get isInitial => status == SearchSongsStatus.initial;
  bool get isEmpty => status == SearchSongsStatus.success && foundSongs.isEmpty;
}
