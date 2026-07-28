import "package:flutter/material.dart";
import "package:vibey/core/widgets/MyTickets/TicketUpcoming.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";

class MyTicketPage extends StatelessWidget {
  final EventModel event;
  final BookingModel book;
  final TicketTypes ticket;
  const MyTicketPage({
    super.key,
    required this.event,
    required this.book,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Text("My Tickets")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: bookingData.length,
              itemBuilder: (context, index) {
                return TicketUpcoming(event: event, book: book, ticket: ticket);
              },
            ),
          ],
        ),
      ),
    );
  }
}
