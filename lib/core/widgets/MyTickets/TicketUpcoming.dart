import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class TicketUpcoming extends StatelessWidget {
  final EventModel event;
  const TicketUpcoming({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TicketEvent(event: event),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 215, 212, 242),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.ticket_outline,color: Color(0xFF6C5CE7),),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ticket Type",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Erily Bird",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF6C5CE7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

               Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 215, 212, 242),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.people,color: Color(0xFF6C5CE7),),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quantity",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF6C5CE7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

                 Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 215, 212, 242),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.wallet,color: Color(0xFF6C5CE7),),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Paid",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ETB 2,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF6C5CE7),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                 decoration: BoxDecoration(
                      color: Color.fromARGB(255, 215, 212, 242),
                      borderRadius: BorderRadius.circular(12),
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
                      Icon(Ionicons.checkmark_circle,color:Colors.green),
                      SizedBox(width: 3,),
                      Text("Confirmed",style:TextStyle(color:Colors.green,fontWeight:FontWeight.bold,fontSize:15)),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(children: [Icon(Icons.lock), Text("View Tickets")]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
