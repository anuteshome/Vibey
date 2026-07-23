import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class EventDetailName extends StatelessWidget {
  const EventDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right:20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Addis Music Fest",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "ETB 200",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C5CE7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Ionicons.star, color: Color(0xFF6C5CE7),size: 17),
              SizedBox(width:5),
              Text("4.8"),
              SizedBox(width:5),
              Text("(230 Reviews)"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120,left:20,top:10),
          child: Text("Don't spend another week polishing shadows, fonts, or colors. The homepage is good enough to move forward."),
        ),
     Container(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
        child: Column(
          children:[
            Row(
              children:[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Icon(Ionicons.star)),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date and Time"),
                      Text("July 30,2025 10:00 AM"),
                    ],
                  )
        
              ]
            )
          ]
        ),
      )
     )

      ],
    );
  }
}
