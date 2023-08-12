import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/core_route/go_router/go_router_core.dart';
import 'package:flutter_mark_1/features/profile_page/presentation/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

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
  }

  _bottomNavOnTap(int index, BuildContext context) {
    setState(() {
      _activePageIndex = index;
    });
    switch (index) {
      case 0:
        const HomeRoute().go(context);
      case 1:
      default:
        const ProfilePageRoute().go(context);
    }
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
