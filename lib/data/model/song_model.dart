import 'package:hive_flutter/hive_flutter.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';

part 'song_model.g.dart';

@HiveType(typeId: 0)
class SongModel extends HiveObject {
  @HiveField(0)
  final String artistName;

  @HiveField(1)
  final String songName;

  @HiveField(2)
  final bool isSelected;

  SongModel({required this.artistName, required this.songName, this.isSelected = false});

  factory SongModel.fromEntity(SongEntity song) {
    return SongModel(artistName: song.artistName, songName: song.songName, isSelected: song.isSelected);
  }

  SongEntity toEntity(int id) {
    return SongEntity(id: id, artistName: artistName, songName: songName, isSelected: isSelected);
  }
}
