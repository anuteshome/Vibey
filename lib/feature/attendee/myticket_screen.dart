import "package:flutter/material.dart";
import "package:vibey/core/widgets/MyTickets/TicketUpcoming.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class MyTicketPage extends StatelessWidget {
  final EventModel event;
  const MyTicketPage({super.key,required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Text("My Tickets")),
      body: SingleChildScrollView(
        child:TicketUpcoming(event: event)
        ),
    );
  }
}
