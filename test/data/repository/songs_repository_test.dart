import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/data/songs_repository/songs_repository_impl.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';

import '../../mocks/mocks.mocks.dart';

void main() {
  late ISongRepository repository;
  late MockISongLocalDataSource mockDataSource;
  late SongEntity testEntity;
  late SongModel testModel;

  setUp(() {
    mockDataSource = MockISongLocalDataSource();
    repository = SongsRepositoryImpl(mockDataSource);

    testEntity = const SongEntity(id: 0, artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: true);

    testModel = SongModel(artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: true);
  });

  group('getSongs', () {
    test('should return all songs', () async {
      when(mockDataSource.getAllSongs(FetchSongsMode.all)).thenAnswer((_) async => [testModel]);

      final result = await repository.getSongs(FetchSongsMode.all);

      expect(result, isA<Right<Failure, List<SongEntity>>>());
      final songs = (result as Right).value;
      expect(songs, isA<List<SongEntity>>());
      expect(songs.length, equals(1));
      expect(songs.first.artistName, equals(testEntity.artistName));
      expect(songs.first.songName, equals(testEntity.songName));
      expect(songs.first.isSelected, isTrue);
    });

    test('should return only selected songs', () async {
      when(mockDataSource.getAllSongs(FetchSongsMode.selected)).thenAnswer((_) async => [testModel]);

      final result = await repository.getSongs(FetchSongsMode.selected);
      final List<SongEntity> songs = (result as Right).value;

      expect(result, isA<Right<Failure, List<SongEntity>>>());
      expect(songs.every((s) => s.isSelected), isTrue);
    });

    test('should return empty list when no songs found', () async {
      when(mockDataSource.getAllSongs(FetchSongsMode.all)).thenAnswer((_) async => []);

      final result = await repository.getSongs(FetchSongsMode.all);

      expect(result, isA<Right<Failure, List<SongEntity>>>());
      final songs = (result as Right).value;
      expect(songs, isEmpty);
    });

    test('should return StorageFailure on exception', () async {
      when(mockDataSource.getAllSongs(FetchSongsMode.all)).thenThrow(Exception());

      final result = await repository.getSongs(FetchSongsMode.all);

      expect(result, isA<Left<Failure, List<SongEntity>>>());
      final failure = (result as Left).value;
      expect(failure, isA<StorageFailure>());
      expect(failure.key, equals('fetchSongsError'));
    });
  });
}
