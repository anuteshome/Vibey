import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/core/widgets/YourSelection.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class BookingSummery extends StatelessWidget {
  final EventModel event;
  final int Quantity;
  final TicketTypes _SelectedTickets;
  final int SubTotal;
  final BookingModel book;
  final TicketTypes ticket;

  const BookingSummery({
    super.key,
    required this.event,
    required this.Quantity,
    required this.SubTotal,
    required this._SelectedTickets,
    required this.book,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Booking Summery",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TicketEvent(event: event),
            YourSelection(
              event: event,
              Quantity: Quantity,
              SubTotal: SubTotal,
              SelectedTickets: _SelectedTickets!,
              book:book,ticket:ticket
            ),
          ],
        ),
      ),
    );
  }
}
