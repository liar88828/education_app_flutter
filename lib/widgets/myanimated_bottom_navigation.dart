import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class MyAnimatedBottomNavigation extends StatefulWidget {
  const MyAnimatedBottomNavigation({super.key});

  @override
  State<MyAnimatedBottomNavigation> createState() =>
      _MyAnimatedBottomNavigationState();
}

class _MyAnimatedBottomNavigationState
    extends State<MyAnimatedBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    final iconList = <IconData>[
      Icons.home,
      Icons.file_copy,
      Icons.leaderboard,
      Icons.person,
    ];
    return AnimatedBottomNavigationBar(
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      activeColor: Colors.orange,
      inactiveColor: Colors.black54,
      splashColor: Colors.orange,
      iconSize: 28,
      icons: iconList,
      activeIndex: _currentIndex,
      onTap: (index) => setState(() {
        _currentIndex = index;
      }),
    );
  }
}
