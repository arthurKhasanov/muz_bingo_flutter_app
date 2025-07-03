import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';

class SaveBingoSetUseCase implements UseCase<void, SaveBingoSetUseCaseParams> {
  final IBingoRepository bingoRepository;

  SaveBingoSetUseCase(this.bingoRepository);

  @override
  Future<Either<Failure, void>> call(SaveBingoSetUseCaseParams params) async {
    try {
      await bingoRepository.saveSet(params.set);
      return const Right(null);
    } catch (e) {
      return Left(StorageFailure(e.toString()));
    }
  }
}

class SaveBingoSetUseCaseParams {
  final BingoSetEntity set;

  const SaveBingoSetUseCaseParams({required this.set});
}
