import "package:flutter/material.dart";


class EventDetailImage extends StatelessWidget {
  const EventDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Addis Music Fest"),
            Column(
              children:[
                Text("Price"),
                Text("200")
              ]
            )
          ],
        )
      ],

    );
  }
}