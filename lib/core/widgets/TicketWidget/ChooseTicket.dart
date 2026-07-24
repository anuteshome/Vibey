import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketType.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class ChooseTicket extends StatelessWidget {
  const ChooseTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final eventObj = Event();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
      child: Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(12)
        ),
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Quantity",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Ionicons.remove_outline,color:Colors.black),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("2",style:TextStyle(fontSize:16,fontWeight:FontWeight.bold))),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height:40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Ionicons.add_outline,color:Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                   decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(12)
                   ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                          Text("Total",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,color:Colors.grey[700])),
                          Text("ETB 5000",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))
                        ]
                      ),
                      Container(
                        width:130,height:50,
                        decoration: BoxDecoration(
                          color: Color(0xFF6C5CE7),
                          borderRadius:BorderRadius.circular(12)
                        ),
                       child: Center(child: Text("Continue",style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.white),))
                      )
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
