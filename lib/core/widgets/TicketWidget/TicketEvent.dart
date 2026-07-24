import "package:flutter/material.dart";


class TicketEvent extends StatelessWidget {
  const TicketEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20,right:20,top:10),
      child: Container(
      
        child:Row(
          
          children:[
      Container(
        width:90,
        height: 90,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(12),
          image: DecorationImage(
            image:AssetImage("assets/image/image.png"),
            fit:BoxFit.cover,
          
          )
        ),
      ),
      SizedBox(width:20),
      Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children:[
      Text("Addis Music Festival 2025",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
      Text("Sat, 24 May 2025 6:00 AM"),
      Text("Minlium Hall, Addis Ababa")
        ]
      )
          ]
        )
      ),
    );
  }
}