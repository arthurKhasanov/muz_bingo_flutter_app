import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/use_case/delete_song_usecase.dart';

import 'get_songs_usecase_test.mocks.dart';


void main() {
  late DeleteSongUsecase deleteSongUsecase;
  late MockISongRepository mockRepository;

  setUp(() {
    mockRepository = MockISongRepository();
    deleteSongUsecase = DeleteSongUsecase(mockRepository);
  });

  group('DeleteSongUsecase', () {
    test('should return Right(void) on successful deletion', () async {
      when(mockRepository.deleteSong(42)).thenAnswer((_) async => const Right(null));

      final result = await deleteSongUsecase(DeleteSongUsecaseParams(id: 42));

      expect(result.isRight(), isTrue);
      expect(result, equals(const Right(null)));
      verify(mockRepository.deleteSong(42)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return StorageFailure when deletion fails', () async {
      final failure = StorageFailure('deleteSongError');
      when(mockRepository.deleteSong(42)).thenAnswer((_) async => Left(failure));

      final result = await deleteSongUsecase(DeleteSongUsecaseParams(id: 42));

      expect(result.isLeft(), isTrue);
      result.fold((l) => expect(l, failure), (_) => fail('Expected a failure'));
      verify(mockRepository.deleteSong(42)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
