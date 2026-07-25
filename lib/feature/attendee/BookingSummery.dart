import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/core/widgets/YourSelection.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingSummery extends StatelessWidget {
  final EventModel event;
    final int Quantity;
  // final TicketTypes SelectedTicket;
  final int SubTotal;

  const BookingSummery({super.key,required this.event,required this.Quantity,required this.SubTotal,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Text("Booking Summery")),
      body: Column(
        children:[
          TicketEvent(event: event,),
          YourSelection(
            event: event,
            Quantity: Quantity,
           SubTotal:SubTotal 
            )
        ]
      ),
    );
  }
}
