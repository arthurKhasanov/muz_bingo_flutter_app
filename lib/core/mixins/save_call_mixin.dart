import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:muz_bingo_app/core/error/failure.dart';

mixin SafeCallMixin {
  Future<Either<Failure, T>> safeCall<T>(Future<T> Function() action, String errorMessage) async {
    try {
      return Right(await action());
    } catch (e, s) {
      debugPrint('Exeption $e \n$s');
      return Left(StorageFailure(errorMessage));
    }
  }
}
