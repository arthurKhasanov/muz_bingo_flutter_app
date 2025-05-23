import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muz_bingo_app/domain/entity/song_entity.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_text_field_bottom_sheet.dart';
import 'package:muz_bingo_app/ui/widgets/trailing_icon_button.dart';

class SongListTile extends StatelessWidget {
  const SongListTile({super.key, required this.song, required this.index});
  final int index;
  final SongEntity song;

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
            },
          ),
          TrailingIconButton(
            pullDownActions: [
              (
                'Изменить',
                Icon(Icons.edit),
                () => SongTextFieldBottomSheetHelper.showAddSongBottomSheet(context, song),
                null,
              ),
              (
                'Удалить',
                Icon(Icons.delete),
                () {
                  context.read<SongsBloc>().add(
                        SongsEvent.deleteSong(id: song.id!, index: index),
                      );
                },
                Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
