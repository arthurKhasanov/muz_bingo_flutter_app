import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}