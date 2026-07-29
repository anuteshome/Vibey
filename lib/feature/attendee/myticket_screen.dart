import "package:flutter/material.dart";
import "package:vibey/core/widgets/MyTickets/TicketUpcoming.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";
import "package:vibey/data/Attende/BookingData.dart";

class MyTicketPage extends StatelessWidget {
  final EventModel event;
  final BookingModel book;
  final TicketTypes ticket;

  MyTicketPage({
    super.key,
    required this.event,
    required this.book,
    required this.ticket,
  });
  final bookData = books();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Text("My Tickets")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Container(
                  decoration: BoxDecoration(
                    color:Color(0xFF6C5CE7),
                     borderRadius:BorderRadius.circular(10)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                    child: Text("Upcoming Tickets",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
                  )
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Color(0xFF6C5CE7),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                    child: Text("Past Tickets",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
                  )
                )
                ]
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
               Text("Upcoming event"),
               Text("3 Tickets")
                ]
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bookData.bookingData.length,
              itemBuilder: (context, index) {
                final bookings = bookData.bookingData[index];
                return TicketUpcoming(book: bookings);
              },
            ),
          ],
        ),
      ),
    );
  }
}
