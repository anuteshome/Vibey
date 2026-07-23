import "package:flutter/material.dart";
import "package:vibey/core/widgets/EventDetailImage.dart";
import "package:vibey/core/widgets/EventDetailName.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class EventDetail extends StatelessWidget {
  final UpcomingEvent  upcomingEvent;
  const EventDetail({super.key,required this.upcomingEvent});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            EventDetailImage(UpcomingEvent: UpcomingEvent),
            EventDetailName(UpcomingEvent: UpcomingEvent),
          ],
        ),
      ),
    );
  }
}
