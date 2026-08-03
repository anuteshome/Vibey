import "package:flutter/material.dart";

class EventModel {
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
  final bool isPopular;
  final int ServiceFee;

  EventModel({
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
    required this.isPopular,
    required this.ServiceFee,
  });
}

class Catagorie {
  final String Name;
  final IconData icon;
  final Color color;

  Catagorie({required this.Name, required this.icon, required this.color});
}

class TicketTypes {
  final String Type;
  final String Discription;
  final String Price;

  TicketTypes({
    required this.Type,
    required this.Discription,
    required this.Price,
  });
}



// import "package:flutter/material.dart";

// class EventModel {
//   final String id;
//   final String Name;
//   final String Date;
//   final List<TicketTypes> ticketTypes;
//   final String Time;
//   final String Location;
//   final String Price;
//   final String Image;
//   final String Type;
//   final String Rate;
//   final String Review;
//   final String Discription;
//   final String Organizer;
//   final String Catagory;
//   final String About;
//   final bool isFeatured;
//   final bool isUpcoming;
//   final int ServiceFee;

//   EventModel({
//     required this.id,
//     required this.Name,
//     required this.Date,
//     required this.Type,
//     required this.ticketTypes,
//     required this.Time,
//     required this.Location,
//     required this.Price,
//     required this.Image,
//     required this.Rate,
//     required this.Review,
//     required this.Discription,
//     required this.Organizer,
//     required this.Catagory,
//     required this.About,
//     required this.isFeatured,
//     required this.isUpcoming,
//     required this.ServiceFee,
//   });

//   factory EventModel.fromJson(Map<String, dynamic> json) {
//     final rawTickets = json["ticket_types"] as List<dynamic>? ?? [];

//     final tickets = rawTickets
//         .map(
//           (ticketJson) => TicketTypes.fromJson(
//             ticketJson as Map<String, dynamic>,
//           ),
//         )
//         .toList();
        

//     return EventModel(
//       id: json["id"]?.toString() ?? "",
//       Name: json["name"]?.toString() ?? "",
//       Date: json["event_date"]?.toString() ?? "",
//       Time: json["event_time"]?.toString() ?? "",
//       Type: json["event_type"]?.toString() ?? "",
//       Location: json["location"]?.toString() ?? "",

//       // Temporary value because price belongs to ticket types.
//       Price: tickets.isNotEmpty ? tickets.first.Price : "0",

//       Image: json["image_url"]?.toString() ?? "assets/image/image.png",
//       Rate: json["rating"]?.toString() ?? "0",
//       Review: json["review_count"]?.toString() ?? "0",
//       Discription: json["description"]?.toString() ?? "",
//       Organizer: json["organizer_name"]?.toString() ?? "",
//       Catagory: json["category"]?.toString() ?? "",
//       About: json["about"]?.toString() ?? "",
//       isFeatured: json["is_featured"] as bool? ?? false,
//       isUpcoming: json["is_upcoming"] as bool? ?? false,
//       ServiceFee: (json["service_fee"] as num?)?.toInt() ?? 0,
//       ticketTypes: tickets,
//     );
//   }
// }

// class TicketTypes {
//   final String id;
//   final String Type;
//   final String Discription;
//   final String Price;
//   final int quantityAvailable;

//   TicketTypes({
//     required this.id,
//     required this.Type,
//     required this.Discription,
//     required this.Price,
//     required this.quantityAvailable,
//   });

//   factory TicketTypes.fromJson(Map<String, dynamic> json) {
//     return TicketTypes(
//       id: json["id"]?.toString() ?? "",
//       Type: json["name"]?.toString() ?? "",
//       Discription: json["description"]?.toString() ?? "",
//       Price: json["price"]?.toString() ?? "0",
//       quantityAvailable:
//           (json["quantity_available"] as num?)?.toInt() ?? 0,
//     );
//   }
// }

// class Catagorie {
//   final String Name;
//   final IconData icon;
//   final Color color;

//   Catagorie({
//     required this.Name,
//     required this.icon,
//     required this.color,
//   });
// }