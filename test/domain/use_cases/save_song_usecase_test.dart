import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/use_case/save_song_usecase.dart';

import 'get_songs_usecase_test.mocks.dart';

void main() {
  late SaveSongUsecase saveSongUsecase;
  late MockISongRepository mockRepository;

  setUp(() {
    mockRepository = MockISongRepository();
    saveSongUsecase = SaveSongUsecase(mockRepository);
  });

  const songToSave = SongEntity(
    id: null,
    artistName: 'Linkin Park',
    songName: 'Numb',
    isSelected: false,
  );

  const savedSong = SongEntity(
    id: 1,
    artistName: 'Linkin Park',
    songName: 'Numb',
    isSelected: false,
  );

  group('SaveSongUsecase', () {
    test('should return saved SongEntity on success', () async {
      when(mockRepository.saveSong(songToSave)).thenAnswer((_) async => const Right(savedSong));

      final result = await saveSongUsecase(SaveSongUsecaseParams(song: songToSave));

      expect(result.isRight(), isTrue);
      expect(result.getOrElse(() => throw Exception('No value')), equals(savedSong));
      verify(mockRepository.saveSong(songToSave)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return StorageFailure on failure', () async {
      when(mockRepository.saveSong(songToSave)).thenAnswer((_) async => Left(StorageFailure('saveSongError')));

      final result = await saveSongUsecase(SaveSongUsecaseParams(song: songToSave));

      expect(result.isLeft(), isTrue);
      expect((result as Left).value, isA<StorageFailure>());
      verify(mockRepository.saveSong(songToSave)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
