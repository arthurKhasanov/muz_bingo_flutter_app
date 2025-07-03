import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/mixins/save_call_mixin.dart';
import 'package:muz_bingo_app/data/model/bingo_set/bingo_set_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/bingo_datasource.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/repository/bingo_repository.dart';

class BingoRepositoryImpl with SafeCallMixin implements IBingoRepository {
  final IBingoLocalDataSource bingoDatasource;

  BingoRepositoryImpl(this.bingoDatasource);

  @override
  Future<Either<Failure, void>> saveSet(BingoSetEntity set) =>
      safeCall(() => bingoDatasource.save(BingoSetModel.fromEntity(set)), 'save_set');

  @override
  Future<Either<Failure, void>> updateSet(BingoSetEntity set) =>
      safeCall(() => bingoDatasource.update(BingoSetModel.fromEntity(set)), 'update_set');

  @override
  Future<Either<Failure, List<BingoSetEntity>>> getSets() => safeCall(() async {
        final models = await bingoDatasource.getAll();
        return models.asMap().entries.map((e) => e.value.toEntity().copyWith(id: e.value.key)).toList();
      }, 'get_sets');

  @override
  Future<Either<Failure, void>> deleteSet(int id) => safeCall(() => bingoDatasource.delete(id), 'delete_set');
}
