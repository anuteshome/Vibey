import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
impo

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
                Container(
                  width:45,
                  height:45,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 196, 192, 232),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Ionicons.ticket_outline)
                  ),
                  SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Ticket Type",style:TextStyle(fontWeight:FontWeight.bold)),
                  Text("Erily Bird",style:TextStyle(fontWeight:FontWeight.bold,color:Color(0XFF6C5CE7)))
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
