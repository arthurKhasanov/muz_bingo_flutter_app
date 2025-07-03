import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/bingo_bloc/bingo_bloc.dart';
import 'package:muz_bingo_app/utils/ui/app_flushbar.dart';

class CreateBingoSetFormHelper {
  static void showAddSongBottomSheet(BuildContext context, {required List<SongEntity> selectedSongs}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: CreateBingoSetForm(selectedSongs: selectedSongs),
        );
      },
    );
  }
}

class CreateBingoSetForm extends StatefulWidget {
  const CreateBingoSetForm({super.key, required this.selectedSongs});
  final List<SongEntity> selectedSongs;

  @override
  State<CreateBingoSetForm> createState() => _CreateBingoSetFormState();
}

class _CreateBingoSetFormState extends State<CreateBingoSetForm> {
  final TextEditingController _titleController = TextEditingController();
  int _selectedCount = 15;
  Uint8List? _backgroundImage;

  Future<void> _pickImage() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
        withData: true,
      );
      if (result != null) {
        final bytes = result.files.single.bytes;
        setState(() {
          _backgroundImage = bytes;
        });
      }
    } catch (e) {
      if (mounted) {
        AppFlushbar.show(context, message: 'Error loading picture');
      }
    }
  }

  void _clearImage() {
    setState(() {
      _backgroundImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<BingoBloc, BingoState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 24,
              bottom: MediaQuery.of(context).viewInsets.bottom + 24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Создать бинго-сет',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Gap(16),
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Название сета'),
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Количество карточек'),
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: CupertinoPicker(
                        itemExtent: 32,
                        scrollController: FixedExtentScrollController(initialItem: 0),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            _selectedCount = index + 15;
                          });
                        },
                        children: List.generate(286, (i) => Center(child: Text('${i + 15}'))),
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton.icon(
                      onPressed: _pickImage,
                      icon: const Icon(Icons.image, color: Colors.deepPurple),
                      label: const Text('Добавить фон'),
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.deepPurple),
                      ),
                    ),
                    if (_backgroundImage != null)
                      OutlinedButton.icon(
                        onPressed: _clearImage,
                        icon: const Icon(Icons.clear, color: Colors.red),
                        label: const Text('Удалить фон'),
                        style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          foregroundColor: Colors.red,
                          side: const BorderSide(color: Colors.red),
                        ),
                      ),
                  ],
                ),
                const Gap(12),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: _backgroundImage != null
                              ? MemoryImage(_backgroundImage!)
                              : const AssetImage('assets/images/default_card_background.png') as ImageProvider,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      final title = _titleController.text.trim();
                      if (title.isEmpty) {
                        AppFlushbar.show(context, message: 'Заполните название');
                        return;
                      }
                      context
                        ..read<BingoBloc>().add(
                          BingoEvent.generateBingoSet(
                            title: title,
                            count: _selectedCount,
                            selectedSongs: widget.selectedSongs,
                            backgroundImageBytes: _backgroundImage,
                          ),
                        )
                        ..pop();
                    },
                    child: state.isLoading ? CircularProgressIndicator() : const Text('Сгенерировать'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
