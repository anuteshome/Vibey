import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class EventDetailName extends StatelessWidget {
  final UpcomingEvent upcomingEvent;
  const EventDetailName({super.key,required this.upcomingEvent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               upcomingEvent.Name,
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
                    "ETB ${upcomingEvent.Price}",
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

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Ionicons.star, color: Color(0xFF6C5CE7), size: 17),
              SizedBox(width: 5),
              Text(upcomingEvent.Rate),
              SizedBox(width: 5),
              Text("(${upcomingEvent.Review} Reviews)"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120, left: 20, top: 10),
          child: Text(
           upcomingEvent.Discription,
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 218, 239),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Ionicons.calendar_outline,
                          color: Color(0xFF6C5CE7),
                        ),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date and Time",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text("${upcomingEvent.Date }" ",${upcomingEvent.Time}"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Location Section
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 218, 239),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Ionicons.location,
                          color: Color(0xFF6C5CE7),
                        ),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text( upcomingEvent.Location,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 218, 239),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Ionicons.people, color: Color(0xFF6C5CE7)),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Organizer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(upcomingEvent.Organizer),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 218, 239),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Ionicons.duplicate,
                          color: Color(0xFF6C5CE7),
                        ),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Catagory",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(upcomingEvent.Catagory),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About This Event",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
               upcomingEvent.About,
                style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
        ),
        // footer
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 2,
            bottom: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "ETB ${upcomingEvent.Price}",
                        style: TextStyle(
                          color: Color(0xFF6C5CE7),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text("Per Ticket"),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 245, 247),
                          // border: Border.all(color: Colors.greyr),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Ionicons.heart_outline),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6C5CE7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "Get Your Ticket",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
