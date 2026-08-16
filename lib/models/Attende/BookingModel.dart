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
  factory BookingModel.fromJson(Map<String,dynamic> json) {
    final rawEvents = json["events"] as List<dynamic>? ?? [];

    final events= rawEvents.map((singleEvent)=>
     EventModel.fromJson(singleEvent as Map<String,dynamic>)
    ).toList();
          
       final rawTickets= json["ticket_types"] as List <dynamic>? ??[];

       final tickets= rawTickets
return BookingModel(
  id:json["id"] as String? ?? "",
  event:events,



)

  }
}
