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
        color:Color(0xFF6C5CE7),
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    Text("Booking Successfull!"),
    Text("Your ticket has been booked successfully"),
    
        ],
      )
    );
  }
}