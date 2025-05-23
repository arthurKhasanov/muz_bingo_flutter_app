import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/use_case/delete_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/get_songs_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/save_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/toggle_selection_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/update_song_usecase.dart';

part 'songs_event.dart';
part 'songs_state.dart';
part 'songs_bloc.freezed.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  final GetSongsUsecase _getSongsUsecase;
  final SaveSongUsecase _saveSongUsecase;
  final UpdateSongUsecase _updateSongUsecase;
  final DeleteSongUsecase _deleteSongUsecase;
  final ToggleSelectionUsecase _toggleSelectionUsecase;

  SongsBloc({
    required GetSongsUsecase getSongsUsecase,
    required SaveSongUsecase saveSongUsecase,
    required UpdateSongUsecase updateSongUsecase,
    required DeleteSongUsecase deleteSongUsecase,
    required ToggleSelectionUsecase toggleSelectionUsecase,
  })  : _getSongsUsecase = getSongsUsecase,
        _saveSongUsecase = saveSongUsecase,
        _updateSongUsecase = updateSongUsecase,
        _deleteSongUsecase = deleteSongUsecase,
        _toggleSelectionUsecase = toggleSelectionUsecase,
        super(SongsState()) {
    on<_GetSongs>(_getSongs);
    on<_SaveSong>(_saveSong);
    on<_UpdateSong>(_updateSong);
    on<_DeleteSong>(_deleteSong);
    on<_ToggleSelection>(_toggleSelection);
  }

  Future<void> _getSongs(_GetSongs event, Emitter<SongsState> emit) async {
    emit(state.copyWith(status: SongsListStateStatus.loading));

    final result = await _getSongsUsecase.call(GetSongsUsecaseParams(mode: event.mode));

    result.fold(
      (l) {
        emit(state.copyWith(status: SongsListStateStatus.error, errorMessage: l.key));
      },
      (r) {
        emit(state.copyWith(songs: r, status: SongsListStateStatus.success));
      },
    );
  }

  Future<void> _saveSong(_SaveSong event, Emitter<SongsState> emit) async {
    emit(state.copyWith(status: SongsListStateStatus.loading));

    final SongEntity song = SongEntity(
      artistName: event.artistName,
      songName: event.songName,
      isSelected: event.isSelected,
    );
    
    final result = await _saveSongUsecase.call(SaveSongUsecaseParams(song: song));

    result.fold(
      (l) {
        emit(state.copyWith(status: SongsListStateStatus.error, errorMessage: l.key));
      },
      (r) {
        final updatedSongs = List<SongEntity>.from(state.songs)..add(r);
        emit(state.copyWith(songs: updatedSongs, status: SongsListStateStatus.success));
      },
    );
  }

  Future<void> _updateSong(_UpdateSong event, Emitter<SongsState> emit) async {
    emit(state.copyWith(status: SongsListStateStatus.loading));

    final song = state.songs.firstWhere((e) => e.id == event.id);

    final SongEntity updatedSong = song.copyWith(
      id: event.id,
      artistName: event.artistName,
      songName: event.songName,
      isSelected: event.isSelected,
    );

    final result = await _updateSongUsecase.call(UpdateSongUsecaseParams(song: updatedSong));

    result.fold(
      (l) {
        emit(state.copyWith(status: SongsListStateStatus.error, errorMessage: l.key));
      },
      (r) {
        final int index = state.songs.indexOf(song);
        final updatedSongs = List<SongEntity>.from(state.songs)
          ..removeAt(index)
          ..insert(index, updatedSong);

        emit(
          state.copyWith(
            songs: updatedSongs,
            status: SongsListStateStatus.success,
          ),
        );
      },
    );
  }

  Future<void> _deleteSong(_DeleteSong event, Emitter<SongsState> emit) async {
    emit(state.copyWith(status: SongsListStateStatus.loading));

    final result = await _deleteSongUsecase.call(DeleteSongUsecaseParams(id: event.id));

    result.fold(
      (l) {
        emit(state.copyWith(status: SongsListStateStatus.error, errorMessage: l.key));
      },
      (r) {
        final updatedSongs = List<SongEntity>.from(state.songs)..removeAt(event.index);

        emit(state.copyWith(songs: updatedSongs, status: SongsListStateStatus.success));
      },
    );
  }

  Future<void> _toggleSelection(_ToggleSelection event, Emitter<SongsState> emit) async {
    emit(state.copyWith(status: SongsListStateStatus.loading));

    final result = await _toggleSelectionUsecase.call(ToggleSelectionUsecaseParams(id: event.id));

    result.fold(
      (l) {
        emit(state.copyWith(status: SongsListStateStatus.error, errorMessage: l.key));
      },
      (r) {
        final updatedSong = state.songs.firstWhere((e) => e.id == event.id);
        final int index = state.songs.indexOf(updatedSong);

        final updatedSongs = List<SongEntity>.from(state.songs)
          ..remove(updatedSong)
          ..insert(index, updatedSong.copyWith(isSelected: !updatedSong.isSelected));

        emit(
          state.copyWith(
            songs: updatedSongs,
            status: SongsListStateStatus.success,
          ),
        );
      },
    );
  }
}
