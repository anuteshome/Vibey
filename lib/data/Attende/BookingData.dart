import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";

class books {
  final eventObj = Event();
  final List<BookingModel> bookingData = [

    BookingModel(
      event: ,
      Quantity: 2,
      TotalPaid: "1650",
      ticketTypes: [
        TicketTypes(Type: "Regular", Price: "800", Discription: "just"),
      ],
    ),

    BookingModel(
      Name: "Flutter Developers Meetup",
      Date: "15 Aug 2026",
      Time: "9:00 AM",
      Location: "Skylight Hotel",
      Price: "500",
      Image: "assets/image/events/flutter_meetup.jpg",
      Type: "Technology",
      Rate: "4.9",
      Review: "980",
      Discription: "Meet Flutter developers and learn from experts.",
      Organizer: "GDG Addis",
      Catagory: "Meetup",
      About: "Networking and technical sessions for Flutter developers.",
      isFeatured: false,
      isUpcoming: true,
      ServiceFee: 30,
      Quantity: 1,
      TotalPaid: "530",
      ticketTypes: [
        TicketTypes(Type: "Standard", Price: "500", Discription: "just"),
      ],
    ),

    BookingModel(
      Name: "Coffee & Business Summit",
      Date: "22 Aug 2026",
      Time: "10:30 AM",
      Location: "Friendship Business Center",
      Price: "1200",
      Image: "assets/image/events/business.jpg",
      Type: "Business",
      Rate: "4.7",
      Review: "540",
      Discription: "Business networking with industry leaders.",
      Organizer: "Ethiopian Business Association",
      Catagory: "Conference",
      About: "Grow your professional network.",
      isFeatured: true,
      isUpcoming: true,
      ServiceFee: 75,
      Quantity: 2,
      TotalPaid: "2475",
      ticketTypes: [
        TicketTypes(Type: "VIP", Price: "1200", Discription: "just"),
      ],
    ),

    BookingModel(
      Name: "Stand-Up Comedy Night",
      Date: "10 Sep 2026",
      Time: "8:00 PM",
      Location: "Addis International Convention Center",
      Price: "350",
      Image: "assets/image/events/comedy.jpg",
      Type: "Comedy",
      Rate: "4.6",
      Review: "1.1K",
      Discription: "Laugh with Ethiopia's best comedians.",
      Organizer: "Laugh House",
      Catagory: "Entertainment",
      About: "An evening full of laughter.",
      isFeatured: false,
      isUpcoming: true,
      ServiceFee: 20,
      Quantity: 3,
      TotalPaid: "1070",
      ticketTypes: [
        TicketTypes(Type: "Regular", Price: "350", Discription: "just"),
      ],
    ),

    BookingModel(
      Name: "Tech Innovation Expo",
      Date: "5 Oct 2026",
      Time: "11:00 AM",
      Location: "Science Museum",
      Price: "650",
      Image: "assets/image/events/tech_expo.jpg",
      Type: "Technology",
      Rate: "4.9",
      Review: "860",
      Discription: "Explore the latest innovations in technology.",
      Organizer: "Innovation Ethiopia",
      Catagory: "Expo",
      About: "Discover startups and future technologies.",
      isFeatured: true,
      isUpcoming: true,
      ServiceFee: 40,
      Quantity: 2,
      TotalPaid: "1340",
      ticketTypes: [
        TicketTypes(Type: "Standard", Price: "650", Discription: "just"),
      ],
    ),
  ];
}
