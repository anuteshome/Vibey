import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketType.dart";
import "package:vibey/data/Attende/AttendeData.dart";

class ChooseTicket extends StatelessWidget {
  const ChooseTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final eventObj = Event();

    return Column(
      children: [
        Text(
          "Choose Ticket Type",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: eventObj.TicketData.length,
            itemBuilder: (context, index) {
              final ticket = eventObj.TicketData[index];
              return TicketType(ticket: ticket);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("Quantity"),
              Row(
                children: [
                  Container(
                    width:30,
                    height: 30,
                    decoration: BoxDecoration(
                    color:Colors.grey[400],
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child:Text("-")
                  ),
                    Container(
                    width:30,
                    height: 30,
                    decoration: BoxDecoration(
                    color:Colors.grey[400],
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child:TextField()
                  ),
                      Container(
                    width:30,
                    height: 30,
                    decoration: BoxDecoration(
                    color:Colors.grey[400],
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child:Text("-")
                  )
                ],
              )
            ]
          )
      ],
    );
  }
}
