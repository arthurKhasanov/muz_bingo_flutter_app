import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/domain/use_case/get_songs_usecase.dart';
import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';
import 'package:mockito/annotations.dart';

import 'get_songs_usecase_test.mocks.dart';

@GenerateMocks([ISongRepository])
void main() {
  late GetSongsUsecase usecase;
  late MockISongRepository mockRepository;
  setUp(() {
    mockRepository = MockISongRepository();
    usecase = GetSongsUsecase(mockRepository);
  });

  final sampleSongs = [
    const SongEntity(id: 1, artistName: 'Queen', songName: 'Bohemian Rhapsody', isSelected: false),
    const SongEntity(id: 2, artistName: 'Nirvana', songName: 'Smells Like Teen Spirit', isSelected: true),
  ];

  group('GetSongsUsecase', () {
    test('should return all songs from repository when mode is FetchSongsMode.all', () async {
      when(mockRepository.getSongs(FetchSongsMode.all)).thenAnswer((_) => Future.value(Right(sampleSongs)));

      final result = await usecase(GetSongsUsecaseParams(mode: FetchSongsMode.all));

      expect(result.isRight(), isTrue);
      expect(result.getOrElse(() => []), sampleSongs);
      verify(mockRepository.getSongs(FetchSongsMode.all)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return selected songs when mode is FetchSongsMode.selected', () async {
      final selectedSongs = sampleSongs.where((s) => s.isSelected).toList();
      when(mockRepository.getSongs(FetchSongsMode.selected)).thenAnswer((_) => Future.value(Right(selectedSongs)));

      final result = await usecase(GetSongsUsecaseParams(mode: FetchSongsMode.selected));

      expect(result.isRight(), isTrue);
      expect(result.getOrElse(() => []), selectedSongs);
      verify(mockRepository.getSongs(FetchSongsMode.selected)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return empty list if no songs found', () async {
      when(mockRepository.getSongs(FetchSongsMode.all)).thenAnswer((_) => Future.value(const Right([])));

      final result = await usecase(GetSongsUsecaseParams(mode: FetchSongsMode.all));

      expect(result.isRight(), isTrue);
      expect(result.getOrElse(() => []), isEmpty);
    });

    test('should return StorageFailure on error from repository', () async {
      when(
        mockRepository.getSongs(FetchSongsMode.all),
      ).thenAnswer((_) => Future.value(Left(StorageFailure('fetchSongsError'))));

      final result = await usecase.call(GetSongsUsecaseParams(mode: FetchSongsMode.all));

      expect(result.isLeft(), isTrue);
      expect((result as Left).value, isA<StorageFailure>());
    });
  });
}
