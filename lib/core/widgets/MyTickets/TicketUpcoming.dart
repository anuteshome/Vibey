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
                  Text("Text Type"),
                  Text("Erily Bird")
                  ],)
              ]
            )
          ]
        )
        
        ]),
    );
  }
}
