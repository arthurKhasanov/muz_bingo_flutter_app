import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class GetSongsUsecase implements UseCase<({List<SongEntity> all, List<SongEntity> selected}), GetSongsUsecaseParams> {
  final ISongRepository songRepository;

  const GetSongsUsecase(this.songRepository);

  @override
  Future<Either<Failure, ({List<SongEntity> all, List<SongEntity> selected})>> call(
      GetSongsUsecaseParams params) async {
    return await songRepository.getSongs();
  }
}

class GetSongsUsecaseParams {
  GetSongsUsecaseParams();
}
