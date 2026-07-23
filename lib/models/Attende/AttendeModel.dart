import "package:flutter/material.dart";

class UpcomingEvent {
  final String Name;
  final String Date;
  final String Time;
  final String Location;
  final String Price;
  final String Image;

  UpcomingEvent({
    required this.Name,
    required this.Date,
    required this.Time,
    required this.Location,
    required this.Price,
    required this.Image,
  });
}

class FeaturedEvent {
  final String Name;
  final String Date;
  final String Location;
  final String Type;
  final String Image;

  FeaturedEvent({
    required this.Name,
    required this.Date,
    required this.Location,
    required this.Type,
    required this.Image,
  });
}

class Catagorie {
  final String Name;
  final IconData icon;
  final Color color;

  Catagorie({required this.Name, required this.icon, required this.color});
}
