import 'package:flutter/material.dart';
import 'package:flutter_mark_1/features/home_page/presentation/pages/home_page.dart';
import 'package:flutter_mark_1/features/home_page/presentation/widgets/bottom_nav_widget.dart';
import 'package:flutter_mark_1/features/profile_page/presentation/pages/profile_page.dart';

class HomeBottomNavPage extends StatefulWidget {
  const HomeBottomNavPage({super.key});

  @override
  State<HomeBottomNavPage> createState() => _HomeBottomNavPageState();
}

class _HomeBottomNavPageState extends State<HomeBottomNavPage> {
  int _bottomNavIndex = 0;

  _bottomNavOnTap(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavIndex,
        children: const [
          MyHomePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        initialIndex: _bottomNavIndex,
        onTap: _bottomNavOnTap,
      ),
    );
  }
}
