import "package:flutter/material.dart";
import "package:vibey/data/Attende/AttendeData.dart";


class ChooseTicket extends StatelessWidget {
  const ChooseTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final eventObj = Event();

      return Column(
      children:[
        Text("Choose Ticket Type",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
       Expanded(
         child: ListView.builder(
         itemCount:eventObj.TicketData.length,
         itemBuilder: (context, index) {
          final ticket = 
         },
         ),
       )
      ]
    );
  }
}