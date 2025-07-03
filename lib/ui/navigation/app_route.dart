enum AppRoute {
  songs('/songs', 'songs'),
  bingo('/bingo', 'bingo'),
  bingoSet('/bingo/bingo_set', 'bingo_set');

  final String path;
  final String name;

  const AppRoute(this.path, this.name);
}
