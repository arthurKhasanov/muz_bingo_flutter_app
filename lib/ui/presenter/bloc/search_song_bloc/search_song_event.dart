part of 'search_song_bloc.dart';

@freezed
class SearchSongEvent with _$SearchSongEvent {
  const factory SearchSongEvent.searchSong({
    required String query,
    required SongsSearchType type,
  }) = _SearchSongs;

  const factory SearchSongEvent.clearSearch() = _ClearSearch;
  const factory SearchSongEvent.toggleSelection({required int id}) = _ToggleSelection;
}
