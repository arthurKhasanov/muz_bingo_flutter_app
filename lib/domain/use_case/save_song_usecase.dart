import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class SaveSongUsecase implements UseCase<SongEntity, SaveSongUsecaseParams> {
  final ISongRepository songRepository;

  const SaveSongUsecase(this.songRepository);

  @override
  Future<Either<Failure, SongEntity>> call(SaveSongUsecaseParams params) async {
    return await songRepository.saveSong(params.song);
  }
}

class SaveSongUsecaseParams {
  final SongEntity song;

  SaveSongUsecaseParams({required this.song});
}
