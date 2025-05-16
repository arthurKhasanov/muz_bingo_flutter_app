import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';

abstract class ISongRepository {
  Future<Either<Failure, List<SongEntity>>> getSongs();
  Future<Either<Failure, SongEntity>> saveSong(SongEntity song);
  Future<Either<Failure, void>> updateSong(SongEntity song);
  Future<Either<Failure, void>> deleteSong(int id);
  Future<Either<Failure, void>> toggleSelection(int id);
  Future<Either<Failure, List<SongEntity>>> getSelectedSongs();
}
