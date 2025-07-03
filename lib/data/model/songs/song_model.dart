import 'package:hive_flutter/hive_flutter.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';

part 'song_model.g.dart';

@HiveType(typeId: 0)
class SongModel extends HiveObject {
  @HiveField(0)
  final String artistName;

  @HiveField(1)
  final String songName;

  @HiveField(2)
  final bool isSelected;

  @HiveField(3)
  final int? id;

  SongModel({required this.id, required this.artistName, required this.songName, this.isSelected = false});

  factory SongModel.fromEntity(SongEntity song) {
    return SongModel(id: song.id, artistName: song.artistName, songName: song.songName, isSelected: song.isSelected);
  }

  SongEntity toEntity() {
    return SongEntity(id: id, artistName: artistName, songName: songName, isSelected: isSelected);
  }

  SongModel copyWith({
    int? id,
    String? artistName,
    String? songName,
    bool? isSelected,
  }) {
    return SongModel(
      id: id ?? this.id,
      artistName: artistName ?? this.artistName,
      songName: songName ?? this.songName,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
