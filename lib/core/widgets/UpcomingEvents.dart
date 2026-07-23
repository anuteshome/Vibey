import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class UpcomingEvents extends StatelessWidget {
    final UpcomingEvent;
   UpcomingEvents({super.key,required this.UpcomingEvent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 241, 241),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  // color:Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(UpcomingEvent.Image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(width: 7),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    UpcomingEvent.Name,
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
                      Text(UpcomingEvent.Date, style: TextStyle(fontSize: 12)),
                      SizedBox(width: 5),
                      Text(UpcomingEvent.Time, style: TextStyle(fontSize: 12)),
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
                      Text(UpcomingEvent.Location, style: TextStyle(fontSize: 12)),
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
                    "ETB ${UpcomingEvent.Price}",
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
