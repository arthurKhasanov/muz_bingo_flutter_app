import 'package:hive/hive.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/data/model/songs/song_model.dart';

abstract class ISongLocalDataSource {
  Future<List<SongModel>> getAllSongs(FetchSongsMode fetchMode);
  Future<int> addSong(SongModel model);
  Future<void> updateSong(int id, SongModel model);
  Future<void> deleteSong(int id);
  Future<void> toggleSelection(int id);
}

class SongLocalDataSourceImpl implements ISongLocalDataSource {
  final Box<SongModel> box;

  SongLocalDataSourceImpl(this.box);

  @override
  Future<List<SongModel>> getAllSongs(FetchSongsMode fetchMode) async {
    if (fetchMode == FetchSongsMode.all) {
      return box.values.toList();
    } else {
      return box.values.where((e) => e.isSelected).toList();
    }
  }

  @override
  Future<int> addSong(SongModel model) async => box.add(model);

  @override
  Future<void> updateSong(int id, SongModel model) async => box.put(id, model);

  @override
  Future<void> deleteSong(int id) async => box.delete(id);

  @override
  Future<void> toggleSelection(int id) async {
    final model = box.get(id);
    if (model != null) {
      final updated = SongModel(
          id: model.id, artistName: model.artistName, songName: model.songName, isSelected: !model.isSelected);
      await box.put(id, updated);
    }
  }
}
