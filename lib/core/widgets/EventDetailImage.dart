import "package:flutter/material.dart";


class EventDetailImage extends StatelessWidget {
  const EventDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   width: 300,
   height:70,
   decoration:BoxDecoration(
    color:Colors.grey,
    borderRadius: BorderRadius.circular(12)
   )
    );
  }
}