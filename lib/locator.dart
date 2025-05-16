import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/song_datasource.dart';
import 'package:muz_bingo_app/data/songs_repository/songs_repository_impl.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SongModelAdapter());
  final songsBox = await Hive.openBox<SongModel>('songs');

  sl.registerLazySingleton(() => songsBox);

  sl.registerLazySingleton<ISongLocalDataSource>(() => SongLocalDataSourceImpl(sl<Box<SongModel>>()));

  sl.registerLazySingleton<ISongRepository>(() => SongsRepositoryImpl(sl<ISongLocalDataSource>()));
}
