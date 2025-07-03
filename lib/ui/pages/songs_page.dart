import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/create_bingo_set_bottom_sheet.dart';
import 'package:muz_bingo_app/ui/widgets/song_text_field_bottom_sheet.dart';
import 'package:muz_bingo_app/ui/widgets/songs_list.dart';
import 'package:muz_bingo_app/utils/ui/app_flushbar.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({
    super.key,
  });

  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsBloc, SongsState>(
      builder: (context, state) {
        return SongsTabPage();
      },
    );
  }
}

class SongsTabPage extends StatefulWidget {
  const SongsTabPage({
    super.key,
  });
  @override
  State<SongsTabPage> createState() => _SongsTabPageState();
}

class _SongsTabPageState extends State<SongsTabPage> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this)..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Songs'),
      ),
      floatingActionButton: (_tabController.index == 1)
          ? FloatingActionButton.extended(
              onPressed: () {
                final selectedSongs = context.read<SongsBloc>().state.selectedSongs;
                if (selectedSongs.length < 30) {
                  AppFlushbar.show(context, message: 'Добавьте больше песен');
                  return;
                }
                CreateBingoSetFormHelper.showAddSongBottomSheet(context, selectedSongs: selectedSongs);
              },
              icon: Icon(Icons.grid_view),
              label: Text('Собрать бинго'),
            )
          : FloatingActionButton(
              onPressed: () => SongTextFieldBottomSheetHelper.showAddSongBottomSheet(context),
              child: Icon(Icons.add),
            ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: 'All',
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(context.read<SongsBloc>().state.songs.length.toString())),
              ),
              Tab(
                text: 'Selected',
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(context.read<SongsBloc>().state.selectedSongs.length.toString()),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SongsList(isSelectedSongs: false),
                SongsList(isSelectedSongs: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
