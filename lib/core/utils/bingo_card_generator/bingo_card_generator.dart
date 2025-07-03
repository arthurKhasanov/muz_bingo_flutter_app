import 'dart:math';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';

class BingoCardGenerator {
  static List<BingoCardEntity> generateCardSet({
    required int count,
    required List<SongEntity> pool,
  }) {
    if (pool.length < 16) {
      throw Exception('Недостаточно песен для генерации хотя бы одной карточки');
    }

    final rand = Random();
    final result = <BingoCardEntity>[];
    final existingSignatures = <String>{};
    int tries = 0;

    final possibleUniqueCards = _estimateMaxUnique(pool);

    if (count > possibleUniqueCards) {
      throw Exception(
        'Невозможно сгенерировать $count уникальных карточек. Максимум: $possibleUniqueCards',
      );
    }

    while (result.length < count && tries < 10000) {
      final shuffled = pool.toList()..shuffle(rand);
      final selection = shuffled.take(16).toList();
      final signature = _signatureFromSongs(selection);

      if (!existingSignatures.contains(signature)) {
        existingSignatures.add(signature);
        result.add(BingoCardEntity(id: result.length, songs: selection));
      }

      tries++;
    }

    if (result.length < count) {
      throw Exception('Не удалось сгенерировать $count уникальных карточек');
    }

    return result;
  }

  static BingoCardEntity regenerateSingleCard({
    required List<BingoCardEntity> existingCards,
    required int targetIndex,
    required List<SongEntity> pool,
  }) {
    final existingSignatures = existingCards.map((card) => _signatureFromSongs(card.songs)).toSet();

    final rand = Random();
    int tries = 0;

    while (tries < 1000) {
      final shuffled = pool.toList()..shuffle(rand);
      final selection = shuffled.take(16).toList();
      final signature = _signatureFromSongs(selection);

      if (!existingSignatures.contains(signature)) {
        return BingoCardEntity(id: existingCards[targetIndex].id, songs: selection);
      }

      tries++;
    }

    throw Exception('Не удалось сгенерировать уникальную карточку');
  }

  static String _signatureFromSongs(List<SongEntity> songs) {
    final sortedIds = songs.map((s) => s.id!).toList()..sort();
    return sortedIds.join(',');
  }

  static int _estimateMaxUnique(List<SongEntity> pool) {
    final n = pool.length;
    if (n < 16) return 0;

    BigInt factorial(int x) {
      return List.generate(x, (i) => BigInt.from(i + 1)).fold(BigInt.one, (a, b) => a * b);
    }

    final combinations = factorial(n) ~/ (factorial(16) * factorial(n - 16));
    final max = combinations.toInt();

    return max > 10000 ? 10000 : max;
  }
}
