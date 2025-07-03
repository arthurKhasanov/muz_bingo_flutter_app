import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_list_tile.dart';

class SongsList extends StatelessWidget {
  const SongsList({
    super.key,
    required this.isSelectedSongs,
  });
  final bool isSelectedSongs;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsBloc, SongsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.isError) {
          return Center(
            child: Text(state.errorMessage ?? 'Error has occured'),
          );
        }
        if (isSelectedSongs ? state.selectedSongs.isEmpty : state.songs.isEmpty) {
          return Center(
            child: Text('No items'),
          );
        }
        return ListView.builder(
          padding: EdgeInsets.only(bottom: 64),
          itemBuilder: (context, index) => SongListTile(
            song: isSelectedSongs ? state.selectedSongs[index] : state.songs[index],
            index: index,
          ),
          itemCount: isSelectedSongs ? state.selectedSongs.length : state.songs.length,
        );
      },
    );
  }
}
