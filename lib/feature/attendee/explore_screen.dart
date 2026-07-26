import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
// import "package:vibey/core/widgets/TicketWidget/TicketType.dart";
// import "package:vibey/core/widgets/EventDetailImage.dart";
// import "package:vibey/core/widgets/EventDetailName.dart";
// import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:vibey/feature/attendee/BookingSuccess.dart";

class ExplorePage extends StatelessWidget {
  // final TicketTypes ticketModel;
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(title: Text("Event Detail Tests")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
       BookingSuccess()
            ],
          ),
        ),
      ),
    );
  }
}
