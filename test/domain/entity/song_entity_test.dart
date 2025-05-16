import 'package:flutter_test/flutter_test.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';

void main() {
  late SongEntity baseEntity;
  late SongEntity sameEntity;
  late SongEntity differentEntity;

  setUp(() {
    baseEntity = const SongEntity(
      id: 1,
      artistName: 'Queen',
      songName: 'Don\'t Stop Me Now',
      isSelected: true,
    );

    sameEntity = const SongEntity(
      id: 1,
      artistName: 'Queen',
      songName: 'Don\'t Stop Me Now',
      isSelected: true,
    );

    differentEntity = const SongEntity(
      id: 2,
      artistName: 'Radiohead',
      songName: 'Creep',
      isSelected: false,
    );
  });

  group('Value equality', () {
    test('is true when all fields are identical', () {
      expect(baseEntity, equals(sameEntity));
    });

    test('is false when any field differs', () {
      expect(baseEntity, isNot(equals(differentEntity)));
    });
  });

  group('copyWith()', () {
    test('returns a new object with updated field', () {
      final updated = baseEntity.copyWith(isSelected: false);

      expect(updated, isNot(equals(baseEntity)));
      expect(updated.id, equals(baseEntity.id));
      expect(updated.artistName, equals(baseEntity.artistName));
      expect(updated.songName, equals(baseEntity.songName));
      expect(updated.isSelected, isFalse);
    });

    test('returns an identical object when no params provided', () {
      final clone = baseEntity.copyWith();
      expect(clone, equals(baseEntity));
    });
  });

  group('Default values', () {
    test('isSelected defaults to false if not set explicitly', () {
      const song = SongEntity(
        artistName: 'Linkin Park',
        songName: 'In the End',
      );

      expect(song.isSelected, isFalse);
    });
  });

  group('toString()', () {
    test('contains all property values', () {
      final result = baseEntity.toString();

      expect(result, contains('Queen'));
      expect(result, contains('Don\'t Stop Me Now'));
      expect(result, contains('true'));
      expect(result, contains('1'));
      expect(result, contains('SongEntity'));
    });
  });
}
