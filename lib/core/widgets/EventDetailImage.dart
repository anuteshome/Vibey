import "package:flutter/material.dart";


class EventDetailImage extends StatelessWidget {
  const EventDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   width: 390,
   height:220,
   decoration:BoxDecoration(
    image:DecorationImage(image: AssetImage("assets/image/image.png"),fit:BoxFit.cover),
    borderRadius: BorderRadius.circular(12)
   ),
   child:Column(
    children: [

    ],
    )


    );
  }
}