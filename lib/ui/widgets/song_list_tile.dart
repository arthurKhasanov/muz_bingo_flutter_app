import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_text_field_bottom_sheet.dart';
import 'package:muz_bingo_app/ui/widgets/trailing_icon_button.dart';

class SongListTile extends StatelessWidget {
  const SongListTile({super.key, required this.song, required this.index, this.callback});
  final int index;
  final SongEntity song;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(song.songName),
      subtitle: Text(song.artistName),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: song.isSelected,
            onChanged: (value) {
              context.read<SongsBloc>().add(
                    SongsEvent.toggleSelection(id: song.id!),
                  );
              if (callback != null) {
                callback!();
              }
            },
          ),
          TrailingIconButton(
            pullDownActions: [
              (
                title: 'Изменить',
                iconWidget: Icon(Icons.edit),
                onTap: () => SongTextFieldBottomSheetHelper.showAddSongBottomSheet(context, song, null, callback),
                color: null,
              ),
              (
                title: 'Удалить',
                iconWidget: Icon(Icons.delete),
                onTap: () {
                  context.read<SongsBloc>().add(
                        SongsEvent.deleteSong(id: song.id!, index: index),
                      );
                },
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
