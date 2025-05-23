import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muz_bingo_app/locator.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/ui/widgets/song_text_field_bottom_sheet.dart';
import 'package:muz_bingo_app/ui/widgets/songs_list.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({
    super.key,
  });

  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => sl<SongsBloc>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Songs'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => SongTextFieldBottomSheetHelper.showAddSongBottomSheet(context),
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Selected'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SongsList(isSelectedSongs: false),
                    BlocProvider(
                      create: (context) => sl<SongsBloc>(),
                      child: SongsList(isSelectedSongs: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
