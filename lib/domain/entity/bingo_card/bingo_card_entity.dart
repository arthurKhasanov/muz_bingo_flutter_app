import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';

part 'bingo_card_entity.freezed.dart';

@freezed
class BingoCardEntity with _$BingoCardEntity {
  const factory BingoCardEntity({
    required int id,
    required List<SongEntity> songs,
  }) = _BingoCardEntity;
}
