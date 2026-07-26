import "package:flutter/material.dart";


class BookingSuccess extends StatelessWidget {
  const BookingSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
    Container(
      width:100,height:100,
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 23, 18, 63),
        borderRadius: BorderRadius.circular(50)
      ),
    )
        ],
      )
    );
  }
}