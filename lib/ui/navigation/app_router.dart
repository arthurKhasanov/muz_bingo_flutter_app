import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/ui/navigation/app_route.dart';
import 'package:muz_bingo_app/ui/pages/bingo_page.dart';
import 'package:muz_bingo_app/ui/pages/bingo_set_view_page.dart';
import 'package:muz_bingo_app/ui/pages/main_tab_page.dart';
import 'package:muz_bingo_app/ui/pages/songs_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    if (state.matchedLocation == '/') return AppRoute.songs.path;
    return state.matchedLocation;
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => MainTabPage(child: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.songs.path,
              name: AppRoute.songs.name,
              pageBuilder: (context, state) => const NoTransitionPage(child: SongsPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.bingo.path,
              name: AppRoute.bingo.name,
              pageBuilder: (context, state) => const NoTransitionPage(child: BingoPage()),
              routes: [
                GoRoute(
                  path: AppRoute.bingoSet.path,
                  name: AppRoute.bingoSet.name,
                  builder: (context, state) {
                    final Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
                    if (extra['set'] is! BingoSetEntity) throw Exception('Missing BingoSetEntity');

                    return BingoSetViewPage(
                      set: extra['set'],
                      isSavedSet: extra['isSavedSet'],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
