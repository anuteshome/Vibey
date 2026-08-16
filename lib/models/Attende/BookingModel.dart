import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  final EventModel event;
  final TicketTypes SelectedTickets;
  final int Quantity;
  final String TotalPaid;
  final bool isUpcomingEvent;
  final bool isPastEvent;

  BookingModel({
    required this.event,
    required this.SelectedTickets,
    required this.Quantity,
    required this.TotalPaid,
    required this.isUpcomingEvent,
    required this.isPastEvent,
  });
  factory BookingModel.fromJson(Map<String, dynamic> json) {
    final rawEvents = json["events"] as List<dynamic>? ?? [];

    final 
  }
}
