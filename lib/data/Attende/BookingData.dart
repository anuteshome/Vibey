import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";

class books {

  final eventObj = Event();

  late final List<BookingModel> bookingData = [

    BookingModel(
      event:eventObj.events[0],
      SelectedTickets: eventObj.events[0].ticketTypes[0],
      Quantity: 2,
      TotalPaid: "1650",
      UpcomingEvent:true,
      PastEvent:false,
    ),

    BookingModel(
       event:eventObj.events[1],
      SelectedTickets: eventObj.events[0].ticketTypes[1],
      Quantity: 1,
      TotalPaid: "530",
       UpcomingEvent:true,
      PastEvent:false,
    ),

    BookingModel(
   event:eventObj.events[2],
      SelectedTickets: eventObj.events[0].ticketTypes[1],
      Quantity: 2,
      TotalPaid: "2475",
       UpcomingEvent:true,
      PastEvent:false,
    ),

    BookingModel(
   event:eventObj.events[3],
      SelectedTickets: eventObj.events[0].ticketTypes[2],
      Quantity: 3,
      TotalPaid: "1070",
       UpcomingEvent:false,
      PastEvent:true,
    ),

    BookingModel(
         event:eventObj.events[4],
      SelectedTickets: eventObj.events[0].ticketTypes[0],
      Quantity: 2,
      TotalPaid: "1340",
       UpcomingEvent:false,
      PastEvent:true,
    ),
  ];
}
