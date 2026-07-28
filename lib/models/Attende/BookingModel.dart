import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  final String Name;
  final String Date;
  final List<TicketTypes> ticketTypes;
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
  final int ServiceFee;

  BookingModel({
    required this.Name,
    required this.Date,
    required this.Type,
    required this.ticketTypes,
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
    required this.ServiceFee,
  });
}
