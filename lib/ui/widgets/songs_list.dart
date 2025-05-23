import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:muz_bingo_app/core/enums/fetch_songs_mode.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_list_tile.dart';

class SongsList extends StatefulWidget {
  const SongsList({
    super.key,
    required this.isSelectedSongs,
  });
  final bool isSelectedSongs;

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<SongsBloc>().add(
              SongsEvent.getSongs(
                mode: widget.isSelectedSongs ? FetchSongsMode.selected : FetchSongsMode.all,
              ),
            );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SongsBloc, SongsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => SongListTile(
            song: state.songs[index],
            index: index,
          ),
          itemCount: state.songs.length,
        );
      },
    );
  }
}
