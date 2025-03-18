import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // List of screens
  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Tickets'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  int _selectedIndex = 0;
  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      // appBar: AppBar(
      //   title: const Text('My Tickets'),
      //   centerTitle: true,
      //   // backgroundColor: Colors.redAccent,
      // ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffeeedf2),
          onTap: _onTapItem,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile'),
          ]),
    );
  }
}
