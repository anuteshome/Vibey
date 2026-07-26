import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class BookingSuccess extends StatelessWidget {
  const BookingSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF6C5CE7),
              borderRadius: BorderRadius.circular(50),
            ),
            child:Icon(Ionicons.checkmark_outline,size: 40,color: Colors.white,)
          ),
          Text("Booking Successfull!"),
          Text("Your ticket has been booked successfully"),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text("booking ID"), Text("VIB-2025-0524-7890")],
                ),
                Icon(Ionicons.copy_outline),
              ],
            ),
          ),
          Row(
            children:[
              Icon(Ionicons.calendar_clear_outline)
            ]
          )
        ],
      ),
    );
  }
}
