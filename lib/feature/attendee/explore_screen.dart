import "package:flutter/material.dart";
import "package:vibey/core/widgets/Catagories.dart";
import "package:vibey/core/widgets/TicketWidget/ChooseTicket.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:vibey/core/widgets/UpcomingEvents.dart";
// import "package:vibey/core/widgets/TicketWidget/TicketType.dart";
// import "package:vibey/core/widgets/EventDetailImage.dart";
// import "package:vibey/core/widgets/EventDetailName.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:vibey/feature/attendee/BookingSuccess.dart";
import "package:vibey/feature/attendee/EventDetail.dart";
import "package:vibey/core/navigation/navigation_guard.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class ExplorePage extends StatelessWidget {
  final TicketTypes ticketModel;
  final BookingModel book;
  const ExplorePage({super.key, required this.ticketModel, required this.book});

  @override
  Widget build(BuildContext context) {
    final eventObj = Event();
    final PopularEvent = eventObj.events.where((e) => e.isPopular).toList();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Explore Events",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Container(
                  // width:double.infinity,
                  // height:60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 6,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.all(12),
                        hintText: "Search events, artists or places...",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: eventObj.catagories.length,
                  itemBuilder: (context, index) {
                    return Catagories(cata: eventObj.catagories[index]);
                  },
                ),
              ),
              SizedBox(height:20),
              Container(
                decoration: BoxDecoration(
                  // color:Colors.grey
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,

                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: PopularEvent.length,
                  itemBuilder: (context, index) {
                    final event = PopularEvent[index];
                    return GestureDetector(
                      onTap: () {
                        pushOnce(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventDetail(
                              event: event,
                              book: book,
                              ticket: ticketModel,
                            ),
                          ),
                        );
                      },
                      child: UpcomingEvents(event: event),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
