import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';

part 'bingo_set_entity.freezed.dart';

@freezed
class BingoSetEntity with _$BingoSetEntity {
  const factory BingoSetEntity({
    required int id,
    required String title,
    required List<BingoCardEntity> cards,
    required Uint8List backgroundImageBytes,
  }) = _BingoSetEntity;
}
