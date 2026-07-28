import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class SelectedEvent extends StatelessWidget {
  final EventModel event;
     final BookingModel book;
  final TicketTypes ticket;
  const SelectedEvent({super.key,required this.event,required this.book,
    required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(
         title: Center(child: Text("Select Ticket",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TicketEvent(event: event,), 
              SizedBox(height: 10), 
              ChooseTicket(event:event,book:book,ticket:ticket)],
          ),
        ),
      ),
    );
  }
}
