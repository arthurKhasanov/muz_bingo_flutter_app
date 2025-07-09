import 'package:dartz/dartz.dart';
import 'package:muz_bingo_app/core/enums/songs_search_type.dart';
import 'package:muz_bingo_app/core/error/failure.dart';
import 'package:muz_bingo_app/core/use_cases/use_case.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/repository/songs_repository.dart';

class SearchSongsUsecase extends UseCase<List<SongEntity>, SearchSongsParams> {
  final ISongRepository songRepository;

  SearchSongsUsecase(this.songRepository);
  @override
  Future<Either<Failure, List<SongEntity>>> call(SearchSongsParams params) async {
    return await songRepository.searchSongs(query: params.query, type: params.type);
  }
}

class SearchSongsParams {
  SearchSongsParams({
    required this.query,
    required this.type,
  });

  final String query;
  final SongsSearchType type;
}
