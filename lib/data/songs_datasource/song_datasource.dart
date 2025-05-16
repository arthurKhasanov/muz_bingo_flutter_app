import 'package:hive/hive.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';

abstract class ISongLocalDataSource {
  Future<List<SongModel>> getAllSongs();
  Future<List<SongModel>> getSelectedSongs();
  Future<int> addSong(SongModel model);
  Future<void> updateSong(int id, SongModel model);
  Future<void> deleteSong(int id);
  Future<void> toggleSelection(int id);
}

class SongLocalDataSourceImpl implements ISongLocalDataSource {
  final Box<SongModel> box;

  SongLocalDataSourceImpl(this.box);

  @override
  Future<List<SongModel>> getAllSongs() async => box.values.toList();

  @override
  Future<List<SongModel>> getSelectedSongs() async => box.values.where((s) => s.isSelected).toList();

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
      final updated = SongModel(artistName: model.artistName, songName: model.songName, isSelected: !model.isSelected);
      await box.put(id, updated);
    }
  }
}
