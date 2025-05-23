import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class GetSongsUsecase implements UseCase<List<SongEntity>, GetSongsUsecaseParams> {
  final ISongRepository songRepository;

  const GetSongsUsecase(this.songRepository);

  @override
  Future<Either<Failure, List<SongEntity>>> call(GetSongsUsecaseParams params) async {
    return await songRepository.getSongs(params.mode);
  }
}

class GetSongsUsecaseParams {
  final FetchSongsMode mode;

  GetSongsUsecaseParams({required this.mode});
}
