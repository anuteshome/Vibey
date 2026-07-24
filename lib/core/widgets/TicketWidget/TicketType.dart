import "package:flutter/material.dart";


class TicketType extends StatelessWidget {
  const TicketType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text("Choose Ticket Type"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
Column(
  children:[
    Text("VIP"),
    SizedBox(
      width:230,
      child: Text("Once a user can go from opening the app to successfully booking an event,"))
  ]
),
Text("ETB 2000")
          ]
        )
      ]
    );
  }
}