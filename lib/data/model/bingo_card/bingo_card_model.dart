import 'package:hive/hive.dart';
import 'package:muz_bingo_app/data/model/songs/song_model.dart';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';

part 'bingo_card_model.g.dart';

@HiveType(typeId: 1)
class BingoCardModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final List<SongModel> songs;

  BingoCardModel({
    required this.id,
    required this.songs,
  });

  factory BingoCardModel.fromEntity(BingoCardEntity entity) {
    return BingoCardModel(
      id: entity.id,
      songs: entity.songs.map((e) => SongModel.fromEntity(e)).toList(),
    );
  }

  BingoCardEntity toEntity() {
    return BingoCardEntity(
      id: id,
      songs: songs.map((e) => e.toEntity()).toList(),
    );
  }
}
