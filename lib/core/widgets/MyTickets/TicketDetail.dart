import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Header
          Container(
            child: Column(
              children: [
                Text("VIP-2 Tickets"),
                Text("Addis Music Festival 2025"),
                Text("Sat,24 May 2025 6:00 AM"),
                Text("Minilium Hall, Addis Ababa"),
              ],
            ), // QR Code
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Column(children: [Text("Booking Id"), Text("VIB-2025-0524-7890")]),
              Icon(Ionicons.copy_outline),
            ],
          ),
          Center(child: Image.asset("assets/image/qrcode.png",width: 300,height:300,)),
         Column(
          children:[
            Row(
              children:[
                Text("Ticket Type"),
                Text("VIP")
              ],
            ),
              Row(
              children:[
                Text("Quantity"),
                Text("2")
              ],
            ),
              Row(
              children:[
                Text("Total Paid"),
                Text("ETB 5,200")
              ],
            ),
              Row(
              children:[
                Text("Purchase Date"),
                Text("320 May 2025 10:30 AM")
              ],
            )
          ]
         ),
         Container(
          decoration: BoxDecoration(
            color:Color(0xFF6C5CE7)
          ),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("Download Ticket"),
          )
         )
        ],
      ),
    );
  }
}
