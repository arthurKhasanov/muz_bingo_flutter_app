import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';

abstract class IBingoRepository {
  Future<Either<Failure, void>> saveSet(BingoSetEntity set);
  Future<Either<Failure, void>> updateSet(BingoSetEntity set);
  Future<Either<Failure, List<BingoSetEntity>>> getSets();
  Future<Either<Failure, void>> deleteSet(int id);
}
