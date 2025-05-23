import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/ui/pages/bingo_page.dart';
import 'package:muz_bingo_app/ui/pages/main_tab_page.dart';
import 'package:muz_bingo_app/ui/pages/songs_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    if (state.matchedLocation == '/') return '/songs';
    return state.matchedLocation;
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => MainTabPage(child: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/songs',
              name: 'songs',
              pageBuilder: (context, state) => const NoTransitionPage(child: SongsPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/bingo',
              name: 'bingo',
              pageBuilder: (context, state) => const NoTransitionPage(child: BingoPage()),
            ),
          ],
        ),
      ],
    ),
  ],
);
