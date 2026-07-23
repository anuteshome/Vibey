import "package:flutter/material.dart";
import "package:vibey/feature/attendee/explore_screen.dart";
import "package:vibey/feature/attendee/homepage_screen.dart";
import "package:vibey/feature/attendee/myticket_screen.dart";
import "package:vibey/feature/attendee/profile_screen.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class AttendePage extends StatefulWidget {
  const AttendePage({super.key});

  @override
  State<AttendePage> createState() => _AttendePageState();
}

class _AttendePageState extends State<AttendePage> {
  int _selectedIndex = 0;

  void ChangePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _Pages = [
    HomePage(),
    ExplorePage(),
    MyTicketPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: ChangePage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "My Tcket",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
