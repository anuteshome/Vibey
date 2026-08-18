import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class PopularEvent extends StatelessWidget {
    final EventModel event;
   PopularEvent({super.key,required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 241, 241),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  // color:Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(event.Image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.Name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Ionicons.calendar_clear_outline,
                        size: 15,
                        color: Color(0xFF6C5CE7),
                      ),
                      SizedBox(width: 5),
                      Text(event.Date, style: TextStyle(fontSize: 12)),
                      SizedBox(width: 5),
                      Text(event.Time, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Ionicons.location_outline,
                        size: 15,
                        color: Color.fromARGB(255, 76, 60, 193),
                        weight: 800,
                      ),
                      SizedBox(width: 5),
                      Text(event.Location, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Ionicons.bookmark_outline, color: Colors.grey),
                  SizedBox(height: 15),
                  Text(
                    "ETB ${event.Price}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C5CE7),
                    ),
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
