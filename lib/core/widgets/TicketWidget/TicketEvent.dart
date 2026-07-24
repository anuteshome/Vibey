import "package:flutter/material.dart";


class TicketEvent extends StatelessWidget {
  const TicketEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
Container(

),
Column(
  children:[
    Text("Addis Music Festival 2025",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
    Text("Sat, 24 May 2025 6:00 AM"),
    Text("Minlium Hall, Addis Ababa")
  ]
)
        ]
      )
    );
  }
}