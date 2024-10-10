import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:education_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.file_copy,
    Icons.leaderboard,
    Icons.person,
  ];

  final List<Widget> _screens = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: _screens[_currentIndex],
    );
  }
}
