import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class TicketEvent extends StatelessWidget {
  final EventModel event;
  const TicketEvent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(event.Image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Addis Music Festival ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                   "${event.Date} ${event.Time}",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Minlium Hall, Addis Ababa",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
