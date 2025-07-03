import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/core/utils/bingo_card_generator/bingo_card_generator.dart';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';

class RegenerateBingoCardUseCase implements UseCase<BingoCardEntity, RegenerateBingoCardParams> {
  const RegenerateBingoCardUseCase();

  @override
  Future<Either<Failure, BingoCardEntity>> call(RegenerateBingoCardParams params) async {
    try {
      final newCard = BingoCardGenerator.regenerateSingleCard(
        existingCards: params.set.cards,
        targetIndex: params.index,
        pool: params.pool,
      );

      return Right(newCard);
    } catch (e) {
      return Left(GenerationFailure(e.toString()));
    }
  }
}

class RegenerateBingoCardParams {
  final BingoSetEntity set;
  final int index;
  final List<SongEntity> pool;

  const RegenerateBingoCardParams({
    required this.set,
    required this.index,
    required this.pool,
  });
}
