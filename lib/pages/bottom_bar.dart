import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import './home/home_page.dart';
import './search/search_page.dart';
import './tickets/tickets_page.dart';
import './profile/profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late List<Widget> _pages;
  int _selectedPageIndex = 0;
  void _onSelectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = <Widget>[
      const HomePage(),
      const SearchPage(),
      const TicketsPage(),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onSelectPage,
        unselectedItemColor: const Color(0xFF526480),
        selectedItemColor: Colors.blueGrey,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
