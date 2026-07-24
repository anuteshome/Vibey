import "package:flutter/material.dart";

class EventModel {
  final String Name;
  final String Date;
  final String Time;
  final String Location;
  final String Price;
  final String Image;
  final String Type;
  final String Rate;
  final String Review;
  final String Discription;
  final String Organizer;
  final String Catagory;
  final String About;
  final bool isFeatured;
  final bool isUpcoming;

  EventModel({
    required this.Name,
    required this.Date,
    required this.Type,
    required this.Time,
    required this.Location,
    required this.Price,
    required this.Image,
    required this.Rate,
    required this.Review,
    required this.Discription,
    required this.Organizer,
    required this.Catagory,
    required this.About,
    required this.isFeatured,
    required this.isUpcoming,
  });
}

class Catagorie {
  final String Name;
  final IconData icon;
  final Color color;

  Catagorie({required this.Name, required this.icon, required this.color});
}

class TicketType {
  final String Type;
  final String Discription;
  final String Price;

  TicketType({
    required this.Type,
    required this.Discription,
    required this.Price,
  });
}
