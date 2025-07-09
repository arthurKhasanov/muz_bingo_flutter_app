import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muz_bingo_app/core/enums/songs_search_type.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/use_case/search_songs/search_songs_usecase.dart';

part 'search_song_event.dart';
part 'search_song_state.dart';
part 'search_song_bloc.freezed.dart';

class SearchSongBloc extends Bloc<SearchSongEvent, SearchSongsState> {
  SearchSongBloc({
    required SearchSongsUsecase searchSongsUsecase,
  })  : _searchSongsUsecase = searchSongsUsecase,
        super(SearchSongsState()) {
    on<_SearchSongs>(_getSongs);
    on<_ClearSearch>(_clear);
    on<_ToggleSelection>(_toggleSelection);
  }

  final SearchSongsUsecase _searchSongsUsecase;

  Future<void> _getSongs(_SearchSongs event, Emitter<SearchSongsState> emit) async {
    emit(state.copyWith(status: SearchSongsStatus.loading));

    final result = await _searchSongsUsecase.call(SearchSongsParams(query: event.query, type: event.type));

    result.fold(
      (l) {
        emit(state.copyWith(status: SearchSongsStatus.error, errorMessage: l.key));
      },
      (r) {
        emit(state.copyWith(foundSongs: r, status: SearchSongsStatus.success));
      },
    );
  }

  Future<void> _clear(_ClearSearch event, Emitter<SearchSongsState> emit) async => emit(SearchSongsState());

  void _toggleSelection(_ToggleSelection event, Emitter<SearchSongsState> emit) {
    final oldSong = state.foundSongs.firstWhere((e) => e.id == event.id);
    final int index = state.foundSongs.indexOf(oldSong);
    final toggledSong = oldSong.copyWith(isSelected: !oldSong.isSelected);

    final updatedSongs = List<SongEntity>.from(state.foundSongs)
      ..removeAt(index)
      ..insert(index, toggledSong);

    emit(
      state.copyWith(
        foundSongs: updatedSongs,
      ),
    );
  }
}
