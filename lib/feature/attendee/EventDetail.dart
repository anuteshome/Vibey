import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/core/widgets/EventDetailImage.dart";
import "package:vibey/core/widgets/EventDetailName.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class EventDetail extends StatelessWidget {
  final EventModel event;
         final BookingModel book;
  final TicketTypes ticket;
  const EventDetail({super.key, required this.event, required this.book,required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Event Details",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))),
        actions: [
          IconButton(icon: Icon(Ionicons.bookmark_outline,color:Colors.black), onPressed: () {}),
          IconButton(icon: Icon(Ionicons.share_social_outline,color:Colors.black), onPressed: () {}),
          
          ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              EventDetailImage(event: event),
              EventDetailName(event: event,book:book,ticket:ticket),
            ],
          ),
        ),
      ),
    );
  }
}
