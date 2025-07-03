import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';

class GetSavedBingoSetsUseCase implements UseCase<List<BingoSetEntity>, GetSavedBingoSetsUseCaseParams> {
  final IBingoRepository repository;

  const GetSavedBingoSetsUseCase(this.repository);

  @override
  Future<Either<Failure, List<BingoSetEntity>>> call(GetSavedBingoSetsUseCaseParams params) async {
    return await repository.getSets();
  }
}

class GetSavedBingoSetsUseCaseParams {
  const GetSavedBingoSetsUseCaseParams();
}
