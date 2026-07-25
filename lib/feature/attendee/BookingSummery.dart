import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingSummery extends StatelessWidget {
  final EventModel event;
  const BookingSummery({super.key,required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Booking Summery")),
      body: Column(
        children:[
          TicketEvent(event: event,),
        ]
      ),
    );
  }
}
