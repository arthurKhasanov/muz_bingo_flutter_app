import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/locator.dart';
import 'package:muz_bingo_app/ui/navigation/app_route.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/bingo_bloc/bingo_bloc.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/songs_bloc/songs_bloc.dart';
import 'package:muz_bingo_app/utils/ui/app_flushbar.dart';

class MainTabPage extends StatelessWidget {
  final Widget child;

  const MainTabPage({required this.child, super.key});

  int _locationToIndex(String location) {
    if (location.startsWith('/bingo')) return 1;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _locationToIndex(GoRouter.of(context).state.matchedLocation);

    return MultiBlocProvider(
      providers: [
        BlocProvider<SongsBloc>(
          create: (BuildContext context) => sl<SongsBloc>()..add(SongsEvent.getSongs()),
        ),
        BlocProvider<BingoBloc>(
          create: (BuildContext context) => sl<BingoBloc>()..add(BingoEvent.getSavedBingoSets()),
        ),
      ],
      child: BlocListener<BingoBloc, BingoState>(
        listener: (context, state) {
          if (state.isGenerated) {
            context.goNamed(
              AppRoute.bingoSet.name,
              extra: {
                'set': state.generatedSet,
                'isSavedSet': false,
              },
            );
          }
          if (state.errorMessage != null) {
            AppFlushbar.show(context, message: state.errorMessage ?? '');
          }
        },
        child: Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              if (index == 0) context.go('/songs');
              if (index == 1) context.go('/bingo');
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Песни'),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Бинго'),
            ],
          ),
        ),
      ),
    );
  }
}
