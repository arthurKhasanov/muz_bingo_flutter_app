import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/data/songs_repository/songs_repository_impl.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

import '../../mocks/mocks.mocks.dart';

void main() {
  late ISongRepository repository;
  late MockISongLocalDataSource mockDataSource;
  late SongEntity testEntity;
  late SongModel testModel;

  setUp(() {
    mockDataSource = MockISongLocalDataSource();
    repository = SongsRepositoryImpl(mockDataSource);

    testEntity = const SongEntity(id: 0, artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: false);

    testModel = SongModel(artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: false);
  });

  group('getSongs', () {
    test('should return list of SongEntities on success', () async {
      when(mockDataSource.getAllSongs()).thenAnswer((_) async => [testModel]);

      final result = await repository.getSongs();

      expect(result, isA<Right<Failure, List<SongEntity>>>());
      final songs = (result as Right).value;
      expect(songs.length, equals(1));
      expect(songs.first.artistName, equals('Queen'));
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.getAllSongs()).thenThrow(Exception());

      final result = await repository.getSongs();

      expect(result, isA<Left<Failure, List<SongEntity>>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });

  group('saveSong', () {
    test('should return SongEntity on success', () async {
      when(
        mockDataSource.addSong(
          argThat(
            isA<SongModel>()
                .having((m) => m.artistName, 'artistName', equals('Queen'))
                .having((m) => m.songName, 'songName', equals('Bohemian Rhapsody'))
                .having((m) => m.isSelected, 'isSelected', isFalse),
          ),
        ),
      ).thenAnswer((_) async => 1);

      final result = await repository.saveSong(testEntity);

      expect(result, isA<Right<Failure, SongEntity>>());
      final saved = (result as Right).value;
      expect(saved.id, equals(1));
      expect(saved.artistName, equals('Queen'));
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.addSong(any)).thenThrow(Exception());

      final result = await repository.saveSong(testEntity);

      expect(result, isA<Left<Failure, SongEntity>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });

  group('updateSong', () {
    test('should return Right<void> on success', () async {
      when(mockDataSource.updateSong(1, any)).thenAnswer((_) async => Future.value());

      final result = await repository.updateSong(testEntity.copyWith(id: 1));

      expect(result, isA<Right<Failure, void>>());
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.updateSong(1, any)).thenThrow(Exception());

      final result = await repository.updateSong(testEntity.copyWith(id: 1));

      expect(result, isA<Left<Failure, void>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });

  group('deleteSong', () {
    test('should return Right<void> on success', () async {
      when(mockDataSource.deleteSong(1)).thenAnswer((_) async => Future.value());

      final result = await repository.deleteSong(1);

      expect(result, isA<Right<Failure, void>>());
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.deleteSong(1)).thenThrow(Exception());

      final result = await repository.deleteSong(1);

      expect(result, isA<Left<Failure, void>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });

  group('toggleSelection', () {
    test('should return Right<void> on success', () async {
      when(mockDataSource.toggleSelection(1)).thenAnswer((_) async => Future.value());

      final result = await repository.toggleSelection(1);

      expect(result, isA<Right<Failure, void>>());
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.toggleSelection(1)).thenThrow(Exception());

      final result = await repository.toggleSelection(1);

      expect(result, isA<Left<Failure, void>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });

  group('getSelectedSongs', () {
    test('should return list of selected SongEntities on success', () async {
      when(mockDataSource.getSelectedSongs()).thenAnswer((_) async => [testModel]);

      final result = await repository.getSelectedSongs();

      expect(result, isA<Right<Failure, List<SongEntity>>>());
      final songs = (result as Right).value;
      expect(songs.length, equals(1));
      expect(songs.first.artistName, equals('Queen'));
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.getSelectedSongs()).thenThrow(Exception());

      final result = await repository.getSelectedSongs();

      expect(result, isA<Left<Failure, List<SongEntity>>>());
      expect((result as Left).value, isA<StorageFailure>());
    });
  });
}
