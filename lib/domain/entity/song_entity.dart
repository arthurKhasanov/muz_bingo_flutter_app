import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_entity.freezed.dart';

@freezed
class SongEntity with _$SongEntity {
  const factory SongEntity({
    int? id,
    required String artistName,
    required String songName,
    @Default(false) bool isSelected,
  }) = _SongEntity;
}