import "package:flutter/material.dart";
import "package:vibey/core/widgets/MyTickets/TicketUpcoming.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";
import "package:vibey/data/Attende/BookingData.dart";

class MyTicketPage extends StatefulWidget {
  final EventModel event;
  final BookingModel book;
  final TicketTypes ticket;

  MyTicketPage({
    super.key,
    required this.event,
    required this.book,
    required this.ticket,
  });

  @override
  State<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  bool EventSelected = false;
  final bookData = books();
  String EventType = "Upcoming Event";

  void PastEvent() {
    setState(() {
      EventSelected = true;
      String EventType = "Past events";
    });
    debugPrint("EventSelected is pressed${EventSelected}");
  }

  void UpcomingEventFunc() {
    setState(() {
      EventSelected = false;
      ;
      String EventType = "Past events";
    });
    debugPrint("EventSelected is pressed${EventSelected}");
  }

  @override
  Widget build(BuildContext context) {
    final UpcomingEvent = bookData.bookingData
        .where((e) => e.isUpcomingEvent)
        .toList();
    final PasstEvent = bookData.bookingData
        .where((e) => e.isPastEvent)
        .toList();

    final int Uplen = UpcomingEvent.length;
    final int Pastlen = PasstEvent.length;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Center(child: Text("My Tickets",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        UpcomingEventFunc();
                      },
                      child: Container(
                        // width:double.infinity,
                        decoration: BoxDecoration(
                          color: EventSelected? Colors.white:const Color(0xFF6C5CE7),
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 40,
                            vertical: 15,
                          ),
                          child: Center(
                            child: Text(
                              "Upcoming Tickets",
                              style: TextStyle(
                                color:EventSelected? Color(0xFF6C5CE7):Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        PastEvent();
                      },
                      child: Container(
                          // width:double.infinity,
                        decoration: BoxDecoration(
                         color: EventSelected? Color(0xFF6C5CE7):Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 60,
                            vertical: 15,
                          ),
                          child: Center(
                            child: Text(
                              "Past Tickets",
                              style: TextStyle(
                                color:EventSelected? Colors.white:Color(0xFF6C5CE7),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(EventSelected ? "Past Events" : "Upcoming Events",style:TextStyle(fontSize:16,fontWeight:FontWeight.bold)),
                  Text(EventSelected ? Pastlen.toString() : Uplen.toString(),style:TextStyle(fontSize:16,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: EventSelected? Pastlen:Uplen,
              itemBuilder: (context, index) {
                final bookings = bookData.bookingData[index];
                return EventSelected
                    ? TicketUpcoming(book: PasstEvent[index])
                    : TicketUpcoming(book: UpcomingEvent[index]);
                // return TicketUpcoming(book: bookings);
              },
            ),
          ],
        ),
      ),
    );
  }
}
