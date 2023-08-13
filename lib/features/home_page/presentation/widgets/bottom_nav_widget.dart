import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {super.key, required this.initialIndex, required this.onTap});

  final int initialIndex;
  final ValueChanged<int> onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _activePageIndex = 0;
  final List<BottomNavigationBarItem> _pages = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  @override
  void initState() {
    super.initState();
    _activePageIndex = widget.initialIndex;
  }

  _bottomNavOnTap(int index, BuildContext context) {
    setState(() {
      _activePageIndex = index;
    });
    widget.onTap.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _pages,
      currentIndex: _activePageIndex,
      onTap: (index) => _bottomNavOnTap(index, context),
    );
  }
}
