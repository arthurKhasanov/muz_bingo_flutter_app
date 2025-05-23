import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class DeleteSongUsecase implements UseCase<void, DeleteSongUsecaseParams> {
  final ISongRepository songRepository;

  const DeleteSongUsecase(this.songRepository);

  @override
  Future<Either<Failure, void>> call(DeleteSongUsecaseParams params) async {
    return await songRepository.deleteSong(params.id);
  }
}

class DeleteSongUsecaseParams {
  final int id;

  DeleteSongUsecaseParams({required this.id});
}
