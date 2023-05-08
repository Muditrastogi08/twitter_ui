import 'package:flutter/material.dart';
import 'package:twitter/pages/home/home_screen.dart';
import 'package:twitter/pages/notification/notification_screen.dart';
import 'package:twitter/pages/search/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _navigationBar(int index) {
    setState(() {});
    _selectedIndex = index;
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const Center(child: Text('Plus')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: ''),
          ]),
    );
  }
}
