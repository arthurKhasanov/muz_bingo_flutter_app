import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/constants/failure_message_contants.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class UpdateSongUsecase implements UseCase<void, UpdateSongUsecaseParams> {
  final ISongRepository songRepository;

  const UpdateSongUsecase(this.songRepository);

  @override
  Future<Either<Failure, void>> call(UpdateSongUsecaseParams params) async {
    if (params.song.id == null) return Left(UnexpectedFailure(FailureMessageKeyContants.songHasNoId));
    return await songRepository.updateSong(params.song);
  }
}

class UpdateSongUsecaseParams {
  final SongEntity song;

  UpdateSongUsecaseParams({required this.song});
}
