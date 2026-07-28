import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";

class TicketUpcoming extends StatelessWidget {
  final EventModel event;
  const TicketUpcoming({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TicketEvent(event: event),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children:[
                Icon(Icons.lock),
                Column(
                  children: [
                  Text("Text Type"),
                  Text("Erily Bird")
                  ],)
              ]
            ),

            Row(
              children:[
                Icon(Icons.lock),
                Column(
                  children: [
                  Text("Quantity"),
                  Text("2")
                  ],)
              ]
            ),

            Row(
              children:[
                Icon(Icons.lock),
                Column(
                  children: [
                  Text("Total Paid"),
                  Text("ETB 2000")
                  ],)
              ]
            )
          ]
        ),
        Row(
          children:[
            Text("Confirmed"),
            Container(
              child:Row(
                children:[
                  Icon(Icons.lock),
                  Text("View Tickets")
                ]
              )
            )
          ]
        )
        
        ]),
    );
  }
}
