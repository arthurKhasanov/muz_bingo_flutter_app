import 'package:flutter_test/flutter_test.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';

void main() {
  late SongEntity selectedEntity;
  late SongEntity unselectedEntity;
  late SongModel selectedModel;
  late SongModel unselectedModel;

  setUp(() {
    selectedEntity = const SongEntity(id: 101, artistName: 'Imagine Dragons', songName: 'Believer', isSelected: true);

    unselectedEntity = const SongEntity(id: 102, artistName: 'Coldplay', songName: 'Fix You', isSelected: false);

    selectedModel = SongModel(artistName: 'Imagine Dragons', songName: 'Believer', isSelected: true);

    unselectedModel = SongModel(artistName: 'Coldplay', songName: 'Fix You', isSelected: false);
  });

  group('SongModel.fromEntity', () {
    test('creates a SongModel with matching values from selected SongEntity', () {
      // Act
      final model = SongModel.fromEntity(selectedEntity);

      // Assert
      expect(model, isA<SongModel>());
      expect(model.artistName, equals(selectedEntity.artistName));
      expect(model.songName, equals(selectedEntity.songName));
      expect(model.isSelected, equals(selectedEntity.isSelected));
    });

    test('creates a SongModel with matching values from unselected SongEntity', () {
      final model = SongModel.fromEntity(unselectedEntity);

      expect(model.artistName, equals(unselectedEntity.artistName));
      expect(model.songName, equals(unselectedEntity.songName));
      expect(model.isSelected, equals(unselectedEntity.isSelected));
    });
  });

  group('SongModel.toEntity', () {
    test('returns a SongEntity with injected id and same content (selected)', () {
      const expectedId = 101;

      final entity = selectedModel.toEntity(expectedId);

      expect(entity, isA<SongEntity>());
      expect(entity.id, equals(expectedId));
      expect(entity.artistName, equals(selectedModel.artistName));
      expect(entity.songName, equals(selectedModel.songName));
      expect(entity.isSelected, equals(selectedModel.isSelected));
    });

    test('returns a SongEntity with injected id and same content (unselected)', () {
      const expectedId = 102;

      final entity = unselectedModel.toEntity(expectedId);

      expect(entity.id, equals(expectedId));
      expect(entity.artistName, equals(unselectedModel.artistName));
      expect(entity.songName, equals(unselectedModel.songName));
      expect(entity.isSelected, equals(unselectedModel.isSelected));
    });
  });

  group('SongModel value comparison', () {
    test('returns false for different instances with same values (reference inequality)', () {
      final duplicate = SongModel(artistName: 'Imagine Dragons', songName: 'Believer', isSelected: true);

      expect(duplicate == selectedModel, isFalse);
    });

    test('returns false when values are different', () {
      expect(selectedModel == unselectedModel, isFalse);
    });
  });

  group('SongModel type integrity', () {
    test('fromEntity returns an instance of SongModel', () {
      final model = SongModel.fromEntity(selectedEntity);
      expect(model, isA<SongModel>());
    });

    test('toEntity returns an instance of SongEntity', () {
      final entity = selectedModel.toEntity(101);
      expect(entity, isA<SongEntity>());
    });
  });
}
