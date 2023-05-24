import 'package:flutter/material.dart';
import 'package:twitter/pages/home/home_screen.dart';
import 'package:twitter/pages/notification/notification_screen.dart';
import 'package:twitter/pages/search/search_screen.dart';
import 'package:twitter/side_menu.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int _selectedIndex = 0;
  void _navigationBarAction(int index) {
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(drawerKey: _drawerKey),
      const SearchScreen(),
      const NotificationScreen(),
      const Center(
        child: Text('Plus'),
      ),
    ];
    return Scaffold(
      key: _drawerKey,
      drawer: const SideMenu(),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBarAction,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: ''),
        ],
      ),
    );
  }
}
