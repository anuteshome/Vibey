import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/core/widgets/EventDetailImage.dart";
import "package:vibey/core/widgets/EventDetailName.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class EventDetail extends StatelessWidget {
  final EventModel event;
  const EventDetail({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Event Details",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))),
        actions: [
          IconButton(icon: Icon(Ionicons.bookmark_outline), onPressed: () {}),
          IconButton(icon: Icon(Ionicons.share_social_outline), onPressed: () {}),
          
          ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              EventDetailImage(event: event),
              EventDetailName(event: event),
            ],
          ),
        ),
      ),
    );
  }
}
