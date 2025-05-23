// import 'package:flutter_test/flutter_test.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:mockito/mockito.dart';

// import 'package:muz_bingo_app/domain/entity/song_entity.dart';
// import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
// import 'package:muz_bingo_app/core/error/failure.dart';
// import 'package:muz_bingo_app/domain/use_case/get_songs_usecase.dart';
// import 'package:muz_bingo_app/domain/use_case/save_song_usecase.dart';
// import 'package:muz_bingo_app/domain/use_case/update_song_usecase.dart';
// import 'package:muz_bingo_app/domain/use_case/delete_song_usecase.dart';
// import 'package:muz_bingo_app/domain/use_case/toggle_selection_usecase.dart';
// import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';

// class MockGetSongsUsecase extends Mock implements GetSongsUsecase {}

// class MockSaveSongUsecase extends Mock implements SaveSongUsecase {}

// class MockUpdateSongUsecase extends Mock implements UpdateSongUsecase {}

// class MockDeleteSongUsecase extends Mock implements DeleteSongUsecase {}

// class MockToggleSelectionUsecase extends Mock implements ToggleSelectionUsecase {}

// void main() {
//   late SongsBloc bloc;
//   late MockGetSongsUsecase getSongs;
//   late MockSaveSongUsecase saveSong;
//   late MockUpdateSongUsecase updateSong;
//   late MockDeleteSongUsecase deleteSong;
//   late MockToggleSelectionUsecase toggleSelection;

//   setUp(() {
//     getSongs = MockGetSongsUsecase();
//     saveSong = MockSaveSongUsecase();
//     updateSong = MockUpdateSongUsecase();
//     deleteSong = MockDeleteSongUsecase();
//     toggleSelection = MockToggleSelectionUsecase();

//     bloc = SongsBloc(
//       getSongsUsecase: getSongs,
//       saveSongUsecase: saveSong,
//       updateSongUsecase: updateSong,
//       deleteSongUsecase: deleteSong,
//       toggleSelectionUsecase: toggleSelection,
//     );
//   });

//   group('SongsBloc', () {
//     final song = SongEntity(id: 1, songName: 'Hello', artistName: 'World');

//     blocTest<SongsBloc, SongsState>(
//       'emits [loading, success] when getSongs succeeds',
//       build: () => bloc,
//       act: (bloc) => bloc.add(const SongsEvent.getSongs(mode: FetchSongsMode.all)),
//       expect:
//           () => [
//             const SongsState(status: SongsListStateStatus.loading),
//             SongsState(songs: [song], status: SongsListStateStatus.success),
//           ],
//     );

//     blocTest<SongsBloc, SongsState>(
//       'emits [loading, error] when getSongs fails',
//       build: () => bloc,
//       act: (bloc) => bloc.add(const SongsEvent.getSongs(mode: FetchSongsMode.all)),
//       expect:
//           () => [
//             const SongsState(status: SongsListStateStatus.loading),
//             const SongsState(status: SongsListStateStatus.error, errorMessage: 'SomeError'),
//           ],
//     );
//   });
// }
