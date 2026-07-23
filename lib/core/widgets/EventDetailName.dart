import "package:flutter/material.dart";


class EventDetailImage extends StatelessWidget {
  const EventDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("Addis Music Fest"),
              Column(
                children:[
                  Text("Price"),
                  SizedBox(height:10),
                  Text("200")
                ]
              )
            ],
          ),
        )
      ],

    );
  }
}