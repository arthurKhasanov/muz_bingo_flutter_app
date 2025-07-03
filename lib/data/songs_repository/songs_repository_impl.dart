import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/constants/failure_message_contants.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/mixins/save_call_mixin.dart';
import 'package:muz_bingo_app/data/model/songs/song_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/song_datasource.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class SongsRepositoryImpl with SafeCallMixin implements ISongRepository {
  final ISongLocalDataSource localDatasource;

  SongsRepositoryImpl(this.localDatasource);

  @override
  Future<Either<Failure, ({List<SongEntity> all, List<SongEntity> selected})>> getSongs() => safeCall(() async {
        final allModels = (await localDatasource.getAllSongs(FetchSongsMode.all))
            .asMap()
            .entries
            .map((e) => e.value.toEntity().copyWith(id: e.value.key))
            .toList();
        final selectedModels = (await localDatasource.getAllSongs(FetchSongsMode.selected))
            .asMap()
            .entries
            .map((e) => e.value.toEntity().copyWith(id: e.value.key))
            .toList();

        return (all: allModels, selected: selectedModels);
      }, FailureMessageKeyContants.fetchSongsError);

  @override
  Future<Either<Failure, SongEntity>> saveSong(SongEntity song) => safeCall(() async {
        final model = SongModel.fromEntity(song);
        final key = await localDatasource.addSong(model);
        return model.toEntity().copyWith(id: key);
      }, FailureMessageKeyContants.saveSongError);

  @override
  Future<Either<Failure, void>> updateSong(SongEntity song) => safeCall(() async {
        final model = SongModel.fromEntity(song);
        await localDatasource.updateSong(song.id!, model);
      }, FailureMessageKeyContants.updateSongError);

  @override
  Future<Either<Failure, void>> deleteSong(int id) => safeCall(() async {
        await localDatasource.deleteSong(id);
      }, FailureMessageKeyContants.deleteSongError);

  @override
  Future<Either<Failure, void>> toggleSelection(int id) => safeCall(() async {
        await localDatasource.toggleSelection(id);
      }, FailureMessageKeyContants.toggleSelectionError);
}
