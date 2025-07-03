import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';

class UpdateBingoSetUseCase implements UseCase<void, UpdateBingoSetUseCaseParams> {
  final IBingoRepository repository;

  const UpdateBingoSetUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(UpdateBingoSetUseCaseParams params) async {
    return await repository.updateSet(params.set);
  }
}

class UpdateBingoSetUseCaseParams {
  final BingoSetEntity set;

  const UpdateBingoSetUseCaseParams({required this.set});
}
