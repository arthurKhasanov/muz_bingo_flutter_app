part of 'songs_bloc.dart';

@freezed
class SongsEvent with _$SongsEvent {
  const factory SongsEvent.getSongs({required FetchSongsMode mode}) = _GetSongs;

  const factory SongsEvent.saveSong({
    required String artistName,
    required String songName,
    @Default(false) bool isSelected,
  }) = _SaveSong;

  const factory SongsEvent.updateSong({
    required int id,
    required String artistName,
    required String songName,
    @Default(false) bool isSelected,
  }) = _UpdateSong;
  
  const factory SongsEvent.deleteSong({required int index, required int id}) = _DeleteSong;
  const factory SongsEvent.toggleSelection({required int id}) = _ToggleSelection;
}
