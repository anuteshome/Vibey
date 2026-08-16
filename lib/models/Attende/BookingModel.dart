import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class BookingModel {
  final String id;
  final EventModel event;
  final TicketTypes SelectedTickets;
  final int Quantity;
  final String TotalPaid;
  final bool isUpcomingEvent;
  final bool isPastEvent;

  BookingModel({
    required this.id,
    required this.event,
    required this.SelectedTickets,
    required this.Quantity,
    required this.TotalPaid,
    required this.isUpcomingEvent,
    required this.isPastEvent,
  });
  factory BookingModel.fromJson(Map<String, dynamic> json) {
    final rawEvents = json["events"] as List<dynamic>? ?? [];

    final events = EventModel.fromJson(json["events"] as Map<String, dynamic>);

    final tickets = TicketTypes.fromJson(
      json["ticket_types"] as Map<String, dynamic>,
    );

    return BookingModel(
      id: json["id"] as String? ?? "",
      event: events,
      SelectedTickets: tickets,
      Quantity: (json["Quantity"] as num)?.toInt() ?? 0,
      TotalPaid: (json["total_paid"] as String),
      isUpcomingEvent: json["is_upcoming_event"] as bool,
      isPastEvent: json["is_past_event"] as bool,
    );
  }
}
