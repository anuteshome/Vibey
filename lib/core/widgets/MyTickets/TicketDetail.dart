import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Center(child: Text("Ticket Detail",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)))),
      body:Container(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                width:double.infinity,
                decoration:BoxDecoration(
                  color:Color(0xFF6C5CE7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("VIP-2 Tickets",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:15)),
                       SizedBox(height:10),
                      Text("Addis Music Festival 2025",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20)),
                       SizedBox(height:10),
                     Row(
                    children: [
                      Icon(
                        Ionicons.calendar_clear_outline,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text("Sat 24 May 2025", style: TextStyle(fontSize: 12, color: Colors.white,)),
                      SizedBox(width: 5),
                      Text("6:00 AM", style: TextStyle(fontSize: 12, color: Colors.white,)),
                    ],
                  ),
                       SizedBox(height:10),
                         Row(
                    children: [
                      Icon(
                        Ionicons.location_outline,
                        size: 15,
                        color: Colors.white,
                        weight: 800,
                      ),
                      SizedBox(width: 5),
                      Text("Minlium Hall, Addis Ababa", style: TextStyle(fontSize: 12,color: Colors.white,)),
                    ],
                  ),
                    ],
                  ),
                ), // QR Code
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Booking Id"), Text("VIB-2025-0524-7890")]),
                    Icon(Ionicons.copy_outline),
                  ],
                ),
              ),
              Center(child: Image.asset("assets/image/qrcode.png",width: 300,height:300,)),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Ticket Type"),
                      Text("VIP")
                    ],
                  ),
                   SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Quantity"),
                      Text("2")
                    ],
                  ),
                   SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Total Paid"),
                      Text("ETB 5,200")
                    ],
                  ),
                  SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Purchase Date"),
                      Text("320 May 2025 10:30 AM")
                    ],
                  )
                ]
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: Container(
                decoration: BoxDecoration(
                  color:Color(0xFF6C5CE7),
                  borderRadius:BorderRadius.circular(10)
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 20),
                  child: Center(child: Text("Download Ticket",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold))),
                )
               ),
             )
            ],
          ),
        ),
    );
  }
}
