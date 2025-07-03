import 'package:hive/hive.dart';
import 'package:muz_bingo_app/data/model/bingo_set/bingo_set_model.dart';

abstract class IBingoLocalDataSource {
  Future<void> save(BingoSetModel model);
  Future<void> update(BingoSetModel model);
  Future<void> delete(int id);
  Future<List<BingoSetModel>> getAll();
}

class BingoLocalDataSourceImpl implements IBingoLocalDataSource {
  final Box<BingoSetModel> _box;

  BingoLocalDataSourceImpl(this._box);

  @override
  Future<void> save(BingoSetModel model) async {
    await _box.add(model);
  }

  @override
  Future<void> update(BingoSetModel model) async {
    await _box.put(model.id, model);
  }

  @override
  Future<void> delete(int id) async {
    await _box.delete(id);
  }

  @override
  Future<List<BingoSetModel>> getAll() async {
    return _box.values.toList();
  }
}
