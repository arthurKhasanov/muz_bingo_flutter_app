part of 'songs_bloc.dart';

enum SongsListStateStatus { initial, loading, success, error }

@freezed
class SongsState with _$SongsState {
  const factory SongsState({
    @Default([]) List<SongEntity> songs,
    @Default([]) List<SongEntity> selectedSongs,
    @Default(SongsListStateStatus.initial) SongsListStateStatus status,
    @Default(null) String? errorMessage,
  }) = _SongsState;
}

extension SongsStateX on SongsState {
  bool get isLoading => status == SongsListStateStatus.loading;
  bool get isSuccess => status == SongsListStateStatus.success;
  bool get isError => status == SongsListStateStatus.error;
}
