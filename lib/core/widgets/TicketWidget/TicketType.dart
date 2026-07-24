import "package:flutter/material.dart";


class TicketType extends StatelessWidget {
  const TicketType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text("Choose Ticket Type"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.start ,
            children:[
          Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children:[
              Text("VIP"),
              SizedBox(
                width:230,
                child: Text("Once a user can go from opening the app to successfully booking an event,"))
            ]
          ),
          Text("ETB 2000")
            ]
          ),
        )
      ]
    );
  }
}