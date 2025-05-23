import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class ToggleSelectionUsecase implements UseCase<void, ToggleSelectionUsecaseParams> {
  final ISongRepository songRepository;

  const ToggleSelectionUsecase(this.songRepository);

  @override
  Future<Either<Failure, void>> call(ToggleSelectionUsecaseParams params) async {
    return await songRepository.toggleSelection(params.id);
  }
}

class ToggleSelectionUsecaseParams {
  final int id;

  ToggleSelectionUsecaseParams({required this.id});
}
