import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                'assets/images/ic_home.png',
                width: 24,
                height: 24,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_search.png',
              width: 24,
              height: 24,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_add.png',
              width: 24,
              height: 24,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_video.png',
              width: 24,
              height: 24,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                  'https://www.imashasenarath.com/images/site-assets/display-image-2.jpg',
                ),
            ),
            label: "",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: _pages[_currentIndex],
    );
  }
}
