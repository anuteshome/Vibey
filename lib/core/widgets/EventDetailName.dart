import "package:flutter/material.dart";


class EventDetailName extends StatelessWidget {
  const EventDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("Addis Music Fest",style:TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
              Column(
                children:[
                  Text("Price"),
                  SizedBox(height:5),
                  Text("ETB 200",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Color(0xFF6C5CE7)))
                ]
              )
            ],
          ),
        )
      ],

    );
  }
}