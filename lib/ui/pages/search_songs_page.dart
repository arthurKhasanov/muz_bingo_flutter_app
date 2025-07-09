import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:muz_bingo_app/core/enums/songs_search_type.dart';
import 'package:muz_bingo_app/locator.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/search_song_bloc/search_song_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_list_tile.dart';
import 'package:muz_bingo_app/ui/widgets/trailing_icon_button.dart';

class SearchSongsPageProvider extends StatelessWidget {
  const SearchSongsPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchSongBloc>(),
      child: SearchSongsPage(),
    );
  }
}

class SearchSongsPage extends StatefulWidget {
  const SearchSongsPage({
    super.key,
  });

  @override
  State<SearchSongsPage> createState() => _SearchSongsPageState();
}

class _SearchSongsPageState extends State<SearchSongsPage> {
  late final TextEditingController _textController;

  SongsSearchType type = SongsSearchType.songName;

  @override
  void initState() {
    _textController = TextEditingController()
      ..addListener(() {
        if (_textController.text.trim().isEmpty) {
          context.read<SearchSongBloc>().add(
                SearchSongEvent.clearSearch(),
              );
        } else {
          context.read<SearchSongBloc>().add(
                SearchSongEvent.searchSong(
                  query: _textController.text.trim().toLowerCase(),
                  type: type,
                ),
              );
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'search_icon',
              child: Icon(Icons.search),
            ),
            Gap(8),
            Text('Search Songs'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: type == SongsSearchType.artistName ? 'Enter artist name' : 'Enter song name',
                      contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      suffixIcon: _textController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _textController.clear();
                                setState(() {});
                              },
                            )
                          : null,
                    ),
                    onChanged: (value) => setState(() {}),
                  ),
                ),
                Gap(8),
                Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryFixedDim,
                    border: Border.all(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TrailingIconButton(
                    pullDownActions: [
                      (
                        title: 'По артистам',
                        onTap: () {
                          setState(() {
                            type = SongsSearchType.artistName;
                          });
                        },
                        iconWidget: Icon(Icons.person),
                        color: null,
                      ),
                      (
                        title: 'По композициям',
                        onTap: () {
                          setState(() {
                            type = SongsSearchType.songName;
                          });
                        },
                        iconWidget: Icon(Icons.music_note),
                        color: null,
                      ),
                    ],
                    child: type == SongsSearchType.artistName ? Icon(Icons.person) : Icon(Icons.music_note),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchSongBloc, SearchSongsState>(
              builder: (context, state) {
                if (state.isError) {
                  return Center(
                    child: Text(state.errorMessage ?? 'Unexpected Error'),
                  );
                }
                if (state.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.isEmpty) {
                  return Center(
                    child: Text('Не найдено'),
                  );
                }
                if (state.isInitial) {
                  return Center(
                    child: Text('Enter query'),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) => SongListTile(
                    callback: () => context
                        .read<SearchSongBloc>()
                        .add(SearchSongEvent.toggleSelection(id: state.foundSongs[index].id ?? 0)),
                    song: state.foundSongs[index],
                    index: index,
                  ),
                  itemCount: state.foundSongs.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
