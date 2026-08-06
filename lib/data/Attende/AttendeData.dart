import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class Event {
  final List<EventModel> events = [
    EventModel(
      id: "event-1",
      Name: "Addis Music Festival",
      Date: "July 30",
      Time: "10:00 AM",
      Type: "Music Festival",
      Location: "Millennium Hall, Addis Ababa",
      Price: "800",
      Image: "assets/image/image.png",
      Rate: "4.5",
      Review: "330",
      Discription:
          "Experience live music, performances, food, and entertainment at the Addis Music Festival.",
      Organizer: "Donkey Tube",
      Catagory: "Music",
      About:
          "The Addis Music Festival brings together local artists, musicians, and music lovers for a full day of entertainment.",
      isFeatured: false,
isPopular: true,
      isUpcoming: true,
      ServiceFee: 100,
      ticketTypes: [
        TicketTypes(
          id: "ticket-1",
          Type: "Early Bird",
          Discription:
              "Discounted ticket available before the regular ticket sale.",
          Price: "800",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-2",
          Type: "Standard",
          Discription:
              "Standard entry ticket for the Addis Music Festival.",
          Price: "1200",
          quantityAvailable: 200,
        ),
        TicketTypes(
          id: "ticket-3",
          Type: "VIP",
          Discription:
              "VIP entry with reserved seating and access to the VIP area.",
          Price: "2000",
          quantityAvailable: 50,
        ),
      ],
    ),

    EventModel(
      id: "event-2",
      Name: "Flutter Developer Meetup",
      Date: "August 21",
      Time: "3:00 PM",
      Type: "Developer Meetup",
      Location: "Kana Warehouse, Addis Ababa",
      Price: "800",
      Image: "assets/image/image.png",
      Rate: "4.7",
      Review: "230",
      Discription:
          "Meet Flutter developers, exchange ideas, and learn about mobile application development.",
      Organizer: "Flutter Addis Community",
      Catagory: "Tech",
      About:
          "This meetup connects beginner and experienced Flutter developers through talks, networking, and practical sessions.",
      isFeatured: false,
      isUpcoming: true,
      isPopular: true,
      ServiceFee: 300,
      ticketTypes: [
        TicketTypes(
          id: "ticket-4",
          Type: "Early Bird",
          Discription:
              "Discounted entry for attendees who register early.",
          Price: "800",
          quantityAvailable: 80,
        ),
        TicketTypes(
          id: "ticket-5",
          Type: "Standard",
          Discription:
              "Standard access to all meetup presentations and sessions.",
          Price: "1200",
          quantityAvailable: 150,
        ),
        TicketTypes(
          id: "ticket-6",
          Type: "VIP",
          Discription:
              "VIP access with reserved seating and a networking session.",
          Price: "3000",
          quantityAvailable: 30,
        ),
      ],
    ),

    EventModel(
      id: "event-3",
      Name: "Odoo Developer Meetup",
      Date: "September 3",
      Time: "5:00 PM",
      Type: "Developer Meetup",
      Location: "Venu Warehouse, Addis Ababa",
      Price: "100",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "430",
      Discription:
          "Learn about Odoo development, business applications, integrations, and custom modules.",
      Organizer: "Odoo Ethiopia Community",
      Catagory: "Tech",
      About:
          "The meetup provides practical discussions about Odoo development and gives developers an opportunity to connect.",
      isFeatured: true,
      isUpcoming: false,
      isPopular: true,
      ServiceFee: 50,
      ticketTypes: [
        TicketTypes(
          id: "ticket-7",
          Type: "Early Bird",
          Discription:
              "Low-price ticket for participants who register early.",
          Price: "100",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-8",
          Type: "Standard",
          Discription:
              "Standard access to the meetup and development sessions.",
          Price: "3200",
          quantityAvailable: 120,
        ),
        TicketTypes(
          id: "ticket-9",
          Type: "VIP",
          Discription:
              "VIP access with premium seating and speaker networking.",
          Price: "5000",
          quantityAvailable: 25,
        ),
      ],
    ),

    EventModel(
      id: "event-4",
      Name: "Addis Festival",
      Date: "October 30",
      Time: "5:00 PM",
      Type: "Festival",
      Location: "Millennium Hall, Addis Ababa",
      Price: "600",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "230",
      Discription:
          "A city festival featuring entertainment, food, art, music, and cultural activities.",
      Organizer: "Millennium Hall",
      Catagory: "Art",
      About:
          "Addis Festival celebrates entertainment and culture by bringing together artists, performers, and local businesses.",
      isFeatured: true,
      isUpcoming: false,
      isPopular: true,
      ServiceFee: 400,
      ticketTypes: [
        TicketTypes(
          id: "ticket-10",
          Type: "Early Bird",
          Discription:
              "Discounted festival ticket for early registration.",
          Price: "600",
          quantityAvailable: 150,
        ),
        TicketTypes(
          id: "ticket-11",
          Type: "Standard",
          Discription:
              "Standard access to the festival and general activity areas.",
          Price: "4000",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-12",
          Type: "VIP",
          Discription:
              "VIP access with priority entrance and reserved seating.",
          Price: "8000",
          quantityAvailable: 40,
        ),
      ],
    ),

    EventModel(
      id: "event-5",
      Name: "Odoo Business Conference",
      Date: "November 3",
      Time: "9:00 AM",
      Type: "Business Conference",
      Location: "Skylight Hotel, Addis Ababa",
      Price: "400",
      Image: "assets/image/image.png",
      Rate: "4.2",
      Review: "180",
      Discription:
          "A conference about Odoo, enterprise software, digital transformation, and business management.",
      Organizer: "Odoo Business Network",
      Catagory: "Business",
      About:
          "The conference brings together business owners, developers, consultants, and technology professionals.",
      isFeatured: true,
      isUpcoming: false,
      isPopular: true,
      ServiceFee: 200,
      ticketTypes: [
        TicketTypes(
          id: "ticket-13",
          Type: "Early Bird",
          Discription:
              "Reduced conference price for participants who book early.",
          Price: "400",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-14",
          Type: "Standard",
          Discription:
              "Standard access to conference presentations and exhibitions.",
          Price: "1000",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-15",
          Type: "VIP",
          Discription:
              "VIP access with reserved seating and networking opportunities.",
          Price: "2500",
          quantityAvailable: 50,
        ),
      ],
    ),

    EventModel(
      id: "event-6",
      Name: "NestJS Developer Meetup",
      Date: "December 3",
      Time: "5:00 PM",
      Type: "Developer Meetup",
      Location: "Venu Warehouse, Addis Ababa",
      Price: "200",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "430",
      Discription:
          "A meetup for backend developers interested in NestJS, Node.js, APIs, and server-side application development.",
      Organizer: "Addis Backend Community",
      Catagory: "Tech",
      About:
          "Developers can learn about NestJS architecture, dependency injection, APIs, databases, and backend best practices.",
      isFeatured: false,
      isUpcoming: true,
      isPopular: true,
      ServiceFee: 400,
      ticketTypes: [
        TicketTypes(
          id: "ticket-16",
          Type: "Early Bird",
          Discription:
              "Discounted access for attendees who register early.",
          Price: "200",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-17",
          Type: "Standard",
          Discription:
              "Standard access to the meetup and technical sessions.",
          Price: "700",
          quantityAvailable: 100,
        ),
        TicketTypes(
          id: "ticket-18",
          Type: "VIP",
          Discription:
              "VIP access with reserved seating and speaker networking.",
          Price: "900",
          quantityAvailable: 30,
        ),
      ],
    ),
  ];

  final List<Catagorie> catagories = [
    Catagorie(
      Name: "Music",
      icon: Ionicons.musical_notes_outline,
      color: Colors.white,
    ),
    Catagorie(
      Name: "Tech",
      icon: Ionicons.laptop_outline,
      color: Colors.white,
    ),
    Catagorie(
      Name: "Art",
      icon: Ionicons.color_palette_outline,
      color: Colors.white,
    ),
    Catagorie(
      Name: "Gaming",
      icon: Ionicons.game_controller_outline,
      color: Colors.white,
    ),
  ];
}