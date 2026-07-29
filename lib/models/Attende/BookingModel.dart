import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  final EventModel event;
  final TicketTypes SelectedTickets;
  final int Quantity;
  final String TotalPaid;
  final bool UpcomingEvent;
  final bool PastEvent;

  BookingModel({
    required this.event,
    required this.SelectedTickets,
    required this.Quantity,
    required this.TotalPaid,
    required this.UpcomingEvent,
    required this.PastEvent,
  });
}
