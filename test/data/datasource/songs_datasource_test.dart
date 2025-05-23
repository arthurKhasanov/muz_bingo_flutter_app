import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/data/model/song_model.dart';
import 'package:muz_bingo_app/data/songs_datasource/song_datasource.dart';

import 'songs_datasource_test.mocks.dart';

@GenerateMocks([Box])
void main() {
  late SongLocalDataSourceImpl dataSource;
  late MockBox<SongModel> mockBox;

  final sampleModel = SongModel(artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: true);

  setUp(() {
    mockBox = MockBox<SongModel>();
    dataSource = SongLocalDataSourceImpl(mockBox);
  });

  group('getAllSongs', () {
    test('should return all songs when mode is FetchSongsMode.all', () async {
      when(mockBox.values).thenReturn([sampleModel]);

      final result = await dataSource.getAllSongs(FetchSongsMode.all);

      expect(result.length, 1);
      expect(result.first.artistName, 'Queen');
    });

    test('should return only selected songs when mode is FetchSongsMode.selected', () async {
      final unselected = SongModel(artistName: 'Nirvana', songName: 'Smells Like Teen Spirit', isSelected: false);
      when(mockBox.values).thenReturn([sampleModel, unselected]);

      final result = await dataSource.getAllSongs(FetchSongsMode.selected);

      expect(result.length, 1);
      expect(result.first.isSelected, isTrue);
    });
  });

  group('addSong', () {
    test('should call box.add and return key', () async {
      when(mockBox.add(sampleModel)).thenAnswer((_) async => 5);

      final result = await dataSource.addSong(sampleModel);

      expect(result, 5);
      verify(mockBox.add(sampleModel)).called(1);
    });
  });

  group('updateSong', () {
    test('should call box.put with correct id and model', () async {
      when(mockBox.put(3, sampleModel)).thenAnswer((_) async => {});

      await dataSource.updateSong(3, sampleModel);

      verify(mockBox.put(3, sampleModel)).called(1);
    });
  });

  group('deleteSong', () {
    test('should call box.delete with correct id', () async {
      when(mockBox.delete(7)).thenAnswer((_) async => {});

      await dataSource.deleteSong(7);

      verify(mockBox.delete(7)).called(1);
    });
  });

  group('toggleSelection', () {
    test('should toggle isSelected value and update box', () async {
      when(mockBox.get(2)).thenReturn(sampleModel);
      when(mockBox.put(2, any)).thenAnswer((_) async => {});

      await dataSource.toggleSelection(2);

      final captured = verify(mockBox.put(2, captureAny)).captured;
      expect(captured.length, 1);

      final updatedModel = captured.first as SongModel;
      expect(updatedModel.isSelected, isFalse);
      expect(updatedModel.songName, sampleModel.songName);
    });

    test('should do nothing if song not found', () async {
      when(mockBox.get(99)).thenReturn(null);

      await dataSource.toggleSelection(99);

      verifyNever(mockBox.put(any, any));
    });
  });
}
