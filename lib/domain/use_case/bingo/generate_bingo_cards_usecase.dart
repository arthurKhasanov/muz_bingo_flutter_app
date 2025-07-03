import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/core/utils/bingo_card_generator/bingo_card_generator.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';

class GenerateBingoSetUseCase implements UseCase<BingoSetEntity, GenerateBingoSetParams> {
  @override
  Future<Either<Failure, BingoSetEntity>> call(GenerateBingoSetParams params) async {
    try {
      if (params.selectedSongs.length < 30) {
        return Left(GenerationFailure('Недостаточно песен для генерации карточек'));
      }

      final cards = BingoCardGenerator.generateCardSet(
        count: params.count,
        pool: params.selectedSongs,
      );

      return Right(BingoSetEntity(
        id: DateTime.now().millisecondsSinceEpoch,
        title: params.title,
        cards: cards,
        backgroundImageBytes: params.backgroundImageBytes,
      ));
    } catch (e) {
      return Left(GenerationFailure(e.toString()));
    }
  }
}

class GenerateBingoSetParams {
  final String title;
  final int count;
  final List<SongEntity> selectedSongs;
  final Uint8List backgroundImageBytes;

  GenerateBingoSetParams({
    required this.title,
    required this.count,
    required this.selectedSongs,
    required this.backgroundImageBytes,
  });
}
