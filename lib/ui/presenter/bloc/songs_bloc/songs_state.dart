part of 'songs_bloc.dart';

enum SongsListStateStatus { initial, loading, success, error }

@freezed
class SongsState with _$SongsState {
  const factory SongsState({
    @Default([]) List<SongEntity> songs,
    @Default(SongsListStateStatus.initial) SongsListStateStatus status,
    @Default(null) String? errorMessage,
  }) = _SongsState;
}
