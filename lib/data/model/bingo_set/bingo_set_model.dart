import 'package:hive/hive.dart';
import 'dart:typed_data';

import 'package:muz_bingo_app/data/model/bingo_card/bingo_card_model.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';

part 'bingo_set_model.g.dart';

@HiveType(typeId: 2)
class BingoSetModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final List<BingoCardModel> cards;

  @HiveField(3)
  final Uint8List backgroundImageBytes;

  BingoSetModel({
    required this.id,
    required this.title,
    required this.cards,
    required this.backgroundImageBytes,
  });

  factory BingoSetModel.fromEntity(BingoSetEntity entity) {
    return BingoSetModel(
      id: entity.id,
      title: entity.title,
      cards: entity.cards.map(BingoCardModel.fromEntity).toList(),
      backgroundImageBytes: entity.backgroundImageBytes,
    );
  }

  BingoSetEntity toEntity() {
    return BingoSetEntity(
      id: id,
      title: title,
      cards: cards.map((card) => card.toEntity()).toList(),
      backgroundImageBytes: backgroundImageBytes,
    );
  }
}
