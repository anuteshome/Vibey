import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  // final String Name;
  // final String Date;
  // final List<TicketTypes> ticketTypes;
  // final String Time;
  // final String Location;
  // final String Price;
  // final String Image;
  // final String Type;
  // final String Rate;
  // final String Review;
  // final String Discription;
  // final String Organizer;
  // final String Catagory;
  // final String About;
  // final bool isFeatured;
  // final bool isUpcoming;
  // final int ServiceFee;
  final EventModel event;
    final List<TicketTypes> _SelectedTickets;
  final int Quantity;
  final String TotalPaid;

  BookingModel({
    required this.event,
    required this._SelectedTickets,
    required this.Quantity,
    required this.TotalPaid,
  });
}
