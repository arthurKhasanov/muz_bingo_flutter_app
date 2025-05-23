import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/song_datasource.dart';
import 'package:muz_bingo_app/data/songs_repository/songs_repository_impl.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';
import 'package:muz_bingo_app/domain/use_case/delete_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/get_songs_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/save_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/toggle_selection_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/update_song_usecase.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SongModelAdapter());
  final songsBox = await Hive.openBox<SongModel>('songs');

  sl.registerLazySingleton(() => songsBox);

  //DATASOURCES
  sl.registerLazySingleton<ISongLocalDataSource>(() => SongLocalDataSourceImpl(sl<Box<SongModel>>()));

  //REPOSITORIES
  sl.registerLazySingleton<ISongRepository>(() => SongsRepositoryImpl(sl<ISongLocalDataSource>()));

  //USECASES
  sl.registerLazySingleton<GetSongsUsecase>(() => GetSongsUsecase(sl()));
  sl.registerLazySingleton<SaveSongUsecase>(() => SaveSongUsecase(sl()));
  sl.registerLazySingleton<UpdateSongUsecase>(() => UpdateSongUsecase(sl()));
  sl.registerLazySingleton<DeleteSongUsecase>(() => DeleteSongUsecase(sl()));
  sl.registerLazySingleton<ToggleSelectionUsecase>(() => ToggleSelectionUsecase(sl()));

  //Blocs
  sl.registerFactory(
    () => SongsBloc(
        getSongsUsecase: sl(),
        saveSongUsecase: sl(),
        updateSongUsecase: sl(),
        deleteSongUsecase: sl(),
        toggleSelectionUsecase: sl()),
  );
}
