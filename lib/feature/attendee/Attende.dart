import "package:flutter/material.dart";
import "package:vibey/feature/attendee/explore_screen.dart";
import "package:vibey/feature/attendee/homepage_screen.dart";
import "package:vibey/feature/attendee/myticket_screen.dart";
import "package:vibey/feature/attendee/profile_screen.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class AttendePage extends StatefulWidget {
  final EventModel event;
        final BookingModel book;
  final TicketTypes ticket;
  const AttendePage({super.key, required this.event,required this.book,required this.ticket});

  @override
  State<AttendePage> createState() => _AttendePageState();
}

class _AttendePageState extends State<AttendePage> {
  late final List<Widget> Pages;

  @override
  void initState() {
    super.initState();
       Pages = [
      HomePage(event: widget.event,book:widget.book,ticket:widget.ticket),
      ExplorePage(),
      MyTicketPage(event: widget.event,book:widget.book,ticket:widget.ticket),
      ProfilePage(event: widget.event,book:widget.book,ticket:widget.ticket),
    ];
  }

  int _selectedIndex = 0;

  void ChangePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_selectedIndex],
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
