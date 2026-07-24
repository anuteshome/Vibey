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
        title: Text("Event Detail Test"),
        actions: [IconButton(icon: Icon(Ionicons.save), onPressed: () {})],
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
