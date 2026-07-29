import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  final EventModel events;
  final TicketTypes SelectedTickets;
  final int Quantity;
  final String TotalPaid;

  BookingModel({
    required this.events,
    required this.SelectedTickets,
    required this.Quantity,
    required this.TotalPaid,
  });
}
