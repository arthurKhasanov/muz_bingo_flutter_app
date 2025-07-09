enum AppRoute {
  songs('/songs', 'songs'),
  searchSongs('/songs/songs_search', 'songs_search'),
  bingo('/bingo', 'bingo'),
  bingoSet('/bingo/bingo_set', 'bingo_set');

  final String path;
  final String name;

  const AppRoute(this.path, this.name);
}
