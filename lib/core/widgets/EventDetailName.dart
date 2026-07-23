import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class EventDetailName extends StatelessWidget {
  const EventDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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

        Row(
          children: [
            Icon(Ionicons.star, color: Color(0xFF6C5CE7)),
            Text("4.8"),
            Text("(230 Reviews)"),
          ],
        ),
      ],
    );
  }
}
