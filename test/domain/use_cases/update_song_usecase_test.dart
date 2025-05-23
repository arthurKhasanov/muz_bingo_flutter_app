import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/constants/failure_message_contants.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/use_case/update_song_usecase.dart';

import 'get_songs_usecase_test.mocks.dart';

void main() {
  late UpdateSongUsecase updateSongUsecase;
  late MockISongRepository mockRepository;

  setUp(() {
    mockRepository = MockISongRepository();
    updateSongUsecase = UpdateSongUsecase(mockRepository);
  });

  const updatedSong = SongEntity(id: 42, artistName: 'Radiohead', songName: 'Creep', isSelected: true);

  group('UpdateSongUsecase', () {
    test('should complete successfully and return Right(void)', () async {
      // arrange
      when(mockRepository.updateSong(updatedSong)).thenAnswer((_) async => const Right(null));

      // act
      final result = await updateSongUsecase(UpdateSongUsecaseParams(song: updatedSong));

      // assert
      expect(result.isRight(), isTrue);
      expect(result, equals(const Right(null)));
      verify(mockRepository.updateSong(updatedSong)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return StorageFailure on failure', () async {
      // arrange
      final failure = StorageFailure(FailureMessageKeyContants.updateSongError);
      when(mockRepository.updateSong(updatedSong)).thenAnswer((_) async => Left(failure));

      // act
      final result = await updateSongUsecase(UpdateSongUsecaseParams(song: updatedSong));

      // assert
      expect(result.isLeft(), isTrue);
      result.fold((l) => expect(l, failure), (_) => fail('Expected a failure'));
      verify(mockRepository.updateSong(updatedSong)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return UnexpectedFailure if song id is null (invalid input)', () async {
      const invalidSong = SongEntity(id: null, artistName: 'Muse', songName: 'Uprising');

      // act
      final result = await updateSongUsecase(UpdateSongUsecaseParams(song: invalidSong));

      // assert
      expect(result.isLeft(), isTrue);
      result.fold((l) {
        expect(l, isA<UnexpectedFailure>());
        expect(l.key, FailureMessageKeyContants.songHasNoId);
      }, (_) => fail('Expected a failure'));
      verifyNever(mockRepository.updateSong(any));
    });
  });
}
