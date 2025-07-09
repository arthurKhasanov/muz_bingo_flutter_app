import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muz_bingo_app/data/model/bingo_card/bingo_card_model.dart';
import 'package:muz_bingo_app/data/model/bingo_set/bingo_set_model.dart';
import 'package:muz_bingo_app/data/model/songs/song_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/bingo_datasource.dart';
import 'package:muz_bingo_app/data/songs_datasource/song_datasource.dart';
import 'package:muz_bingo_app/data/songs_repository/bingo_repository_impl.dart';
import 'package:muz_bingo_app/data/songs_repository/songs_repository_impl.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/delete_bingo_set_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/generate_bingo_cards_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/get_saved_bingo_sets_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/regenerate_bingo_card_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/save_bingo_set_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/update_bingo_set_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/search_songs/search_songs_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/songs_list/delete_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/songs_list/get_songs_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/songs_list/save_song_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/songs_list/toggle_selection_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/songs_list/update_song_usecase.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/bingo_bloc/bingo_bloc.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/search_song_bloc/search_song_bloc.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SongModelAdapter());
  Hive.registerAdapter(BingoCardModelAdapter());
  Hive.registerAdapter(BingoSetModelAdapter());

  final songsBox = await Hive.openBox<SongModel>('songs');
  final bingoSetBox = await Hive.openBox<BingoSetModel>('bingo_set');

  sl.registerLazySingleton(() => songsBox);
  sl.registerLazySingleton(() => bingoSetBox);

  //DATASOURCES
  sl.registerLazySingleton<ISongLocalDataSource>(() => SongLocalDataSourceImpl(sl<Box<SongModel>>()));
  sl.registerLazySingleton<IBingoLocalDataSource>(() => BingoLocalDataSourceImpl(sl<Box<BingoSetModel>>()));

  //REPOSITORIES
  sl.registerLazySingleton<ISongRepository>(() => SongsRepositoryImpl(sl<ISongLocalDataSource>()));
  sl.registerLazySingleton<IBingoRepository>(() => BingoRepositoryImpl(sl<IBingoLocalDataSource>()));

  //USECASES
  sl.registerLazySingleton<GetSongsUsecase>(() => GetSongsUsecase(sl()));
  sl.registerLazySingleton<SaveSongUsecase>(() => SaveSongUsecase(sl()));
  sl.registerLazySingleton<UpdateSongUsecase>(() => UpdateSongUsecase(sl()));
  sl.registerLazySingleton<DeleteSongUsecase>(() => DeleteSongUsecase(sl()));
  sl.registerLazySingleton<ToggleSelectionUsecase>(() => ToggleSelectionUsecase(sl()));
  sl.registerLazySingleton(() => GenerateBingoSetUseCase());
  sl.registerLazySingleton(() => RegenerateBingoCardUseCase());
  sl.registerLazySingleton(() => SaveBingoSetUseCase(sl()));
  sl.registerLazySingleton(() => UpdateBingoSetUseCase(sl()));
  sl.registerLazySingleton(() => DeleteBingoSetUseCase(sl()));
  sl.registerLazySingleton(() => GetSavedBingoSetsUseCase(sl()));
  sl.registerLazySingleton(() => SearchSongsUsecase(sl()));

  //Blocs
  sl.registerFactory(
    () => SongsBloc(
        getSongsUsecase: sl(),
        saveSongUsecase: sl(),
        updateSongUsecase: sl(),
        deleteSongUsecase: sl(),
        toggleSelectionUsecase: sl()),
  );
  sl.registerFactory(() => BingoBloc(
        getSavedBingoSetsUseCase: sl(),
        saveBingoSetUseCase: sl(),
        updateBingoSetUseCase: sl(),
        deleteBingoSetUseCase: sl(),
        generateBingoSetUseCase: sl(),
        regenerateBingoCardUseCase: sl(),
      ));
  sl.registerFactory(() => SearchSongBloc(
        searchSongsUsecase: sl(),
      ));
}
