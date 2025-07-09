import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/utils/ui/app_flushbar.dart';

class SongTextFieldBottomSheetHelper {
  static void showAddSongBottomSheet(BuildContext screenContext,
      [SongEntity? song, int? index, VoidCallback? callback]) {
    showModalBottomSheet(
      context: screenContext,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SongForm(screenContext, song: song, index: index, callback: callback),
    );
  }
}

class SongForm extends StatefulWidget {
  const SongForm(
    this.screenContext, {
    super.key,
    required this.song,
    required this.index,
    this.callback,
  });

  final SongEntity? song;
  final int? index;
  final BuildContext screenContext;
  final VoidCallback? callback;

  @override
  State<SongForm> createState() => _SongFormState();
}

class _SongFormState extends State<SongForm> {
  late final TextEditingController songController;
  late final TextEditingController artistController;
  late bool isSelected;

  @override
  void initState() {
    songController = TextEditingController()..text = widget.song?.songName ?? '';
    artistController = TextEditingController()..text = widget.song?.artistName ?? '';
    isSelected = widget.song?.isSelected ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Добавить песню',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Gap(16),
          TextField(
            controller: songController,
            decoration: const InputDecoration(
              labelText: 'Название песни',
            ),
          ),
          const Gap(12),
          TextField(
            controller: artistController,
            decoration: const InputDecoration(
              labelText: 'Исполнитель',
            ),
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Выбрать песню'),
              Checkbox(
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value ?? false;
                    });
                  }),
            ],
          ),
          const Gap(20),
          ElevatedButton(
            onPressed: () {
              final songName = songController.text.trim();
              final artistName = artistController.text.trim();

              saveChanges(
                widget.screenContext,
                songName: songName,
                artistName: artistName,
                isSelected: isSelected,
                callback: widget.callback,
              );
            },
            style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
            child: const Text('Сохранить'),
          ),
          const Gap(24),
        ],
      ),
    );
  }

  void saveChanges(
    BuildContext context, {
    required String songName,
    required String artistName,
    required bool isSelected,
    VoidCallback? callback,
  }) {
    if (songName.isEmpty || artistName.isEmpty) {
      AppFlushbar.show(context, message: 'Add Artist and Song names');
      return;
    }

    if (widget.song == null) {
      context.read<SongsBloc>().add(SongsEvent.saveSong(
            songName: songName,
            artistName: artistName,
            isSelected: isSelected,
          ));
      context.pop();
      return;
    }

    if (widget.song!.songName != songName || widget.song!.artistName != artistName) {
      context.read<SongsBloc>().add(SongsEvent.updateSong(
            id: widget.song!.id!,
            songName: songName,
            artistName: artistName,
            isSelected: isSelected,
          ));
      context.pop();
      return;
    }

    if (widget.song!.isSelected != isSelected) {
      context.read<SongsBloc>().add(SongsEvent.toggleSelection(id: widget.song!.id!));
      if (callback != null) callback();
      context.pop();
      return;
    }
  }
}
