import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

    return Scaffold(
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
    );
  }
}
