import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';

class DeleteBingoSetUseCase implements UseCase<void, DeleteBingoSetUseCaseParams> {
  final IBingoRepository repository;

  const DeleteBingoSetUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(DeleteBingoSetUseCaseParams params) async {
    return await repository.deleteSet(params.id);
  }
}

class DeleteBingoSetUseCaseParams {
  final int id;

  const DeleteBingoSetUseCaseParams({required this.id});
}
